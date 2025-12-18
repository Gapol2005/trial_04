<?php
    class AgeCalculator {
        
        /**
        * Calculate exact age from birthdate
        * @param string $birthdate Format: YYYY-MM-DD
        * @return int Age in years
        */
        public static function calculateAge($birthdate) {
            $birth = new DateTime($birthdate);
            $today = new DateTime('today');
            $age = $birth->diff($today)->y;
            return $age;
        }
        
        /**
        * Get age category based on RA 7432 classifications
        * @param int $age
        * @return string Age category
        */
        public static function getAgeCategory($age) {
            if ($age >= 100) return 'Centenarian';
            if ($age >= 90) return 'Nonagenarian';
            if ($age >= 80) return 'Octogenarian';
            if ($age >= 70) return 'Septuagenarian';
            if ($age >= 60) return 'Sexagenarian';
            return 'Not Eligible';
        }
        
        /**
        * Check if person qualifies as senior citizen
        * @param string $birthdate
        * @return bool
        */
        public static function isSeniorCitizen($birthdate) {
            return self::calculateAge($birthdate) >= 60;
        }
        
        /**
        * Get next birthday
        * @param string $birthdate
        * @return string Next birthday date
        */
        public static function getNextBirthday($birthdate) {
            $birth = new DateTime($birthdate);
            $today = new DateTime('today');
            $nextBirthday = new DateTime($birth->format('Y-m-d'));
            $nextBirthday->setDate($today->format('Y'), $birth->format('m'), $birth->format('d'));
            
            if ($nextBirthday < $today) {
                $nextBirthday->modify('+1 year');
            }
            
            return $nextBirthday->format('Y-m-d');
        }
        
        /**
        * Calculate age at specific date
        * @param string $birthdate
        * @param string $atDate
        * @return int
        */
        public static function calculateAgeAt($birthdate, $atDate) {
            $birth = new DateTime($birthdate);
            $date = new DateTime($atDate);
            return $birth->diff($date)->y;
        }
    }


    /**
    * Benefit Calculator - Based on RA 7432 and Amendments
    * File: api/helpers/benefit_calculator.php
    */
    class BenefitCalculator {
        // cache eligible benefit lookups for the current request to avoid repeated DB queries
        private static $eligibleCache = [];
        /**
        * Calculate eligible benefits based on age and location
        * @param int $age Senior citizen's age
        * @param int $barangay_id Barangay ID
        * @return array Array of benefit IDs
        */
        public static function calculateEligibleBenefits($age, $barangay_id) {
            global $db; // Assuming database connection is available
            $benefit_ids = [];

            // 1. BASIC BENEFITS (All senior citizens 60+)
            $basic_benefits = [
                'SC-DISCOUNT-20',  // 20% discount on essentials
                'SC-VAT-EXEMPT',   // VAT exemption
                'SC-TRANSPORT-20', // 20% transport discount
                'SC-MEDICINE-20',  // 20% medicine discount
                'SC-PRIORITY',     // Priority lane access
            ];

            // 2. AGE-BASED PENSION (RA 11376 - Social Pension)
            if ($age >= 80 && $age <= 89) {
                $benefit_ids[] = 'PENSION-OCTOGENARIAN-500';
            }
            if ($age >= 90 && $age <= 99) {
                $benefit_ids[] = 'PENSION-NONAGENARIAN-1000';
            }
            if ($age >= 100) {
                $benefit_ids[] = 'PENSION-CENTENARIAN-ONETIME-10000';
                $benefit_ids[] = 'PENSION-CENTENARIAN-MONTHLY-1500';
            }

            // Build lookup set and cache key
            $codes = array_values(array_unique(array_merge($basic_benefits, $benefit_ids)));
            $cacheKey = md5(json_encode(['codes' => $codes, 'barangay' => $barangay_id]));
            if (isset(self::$eligibleCache[$cacheKey])) {
                return self::$eligibleCache[$cacheKey];
            }

            try {
                // If there are codes, include an IN clause; otherwise only use barangay-specific clause
                if (!empty($codes)) {
                    // Build named placeholders for the IN list
                    $placeholders = [];
                    $params = [];
                    foreach ($codes as $i => $code) {
                        $ph = ':c' . $i;
                        $placeholders[] = $ph;
                        $params[$ph] = $code;
                    }

                    $sql = "SELECT id FROM benefits WHERE is_active = 1 AND (code IN (" . implode(',', array_keys($params)) . ") OR (is_barangay_specific = 1 AND barangay_id = :barangay_id))";
                    $stmt = $db->prepare($sql);
                    foreach ($params as $ph => $val) $stmt->bindValue($ph, $val);
                    $stmt->bindValue(':barangay_id', $barangay_id);
                    $stmt->execute();
                    $ids = $stmt->fetchAll(PDO::FETCH_COLUMN);
                } else {
                    $sql = "SELECT id FROM benefits WHERE is_active = 1 AND is_barangay_specific = 1 AND barangay_id = :barangay_id";
                    $stmt = $db->prepare($sql);
                    $stmt->bindValue(':barangay_id', $barangay_id);
                    $stmt->execute();
                    $ids = $stmt->fetchAll(PDO::FETCH_COLUMN);
                }

                self::$eligibleCache[$cacheKey] = $ids;
                return $ids;
            } catch (Exception $e) {
                error_log("BenefitCalculator: benefits table missing or query failed: " . $e->getMessage());
                return [];
            }
        }
        
        /**
        * Check if senior is eligible for specific benefit
        * @param int $senior_id
        * @param int $benefit_id
        * @return bool
        */
        public static function isEligibleForBenefit($senior_id, $benefit_id) {
            global $db;
            
            $query = "SELECT COUNT(*) as eligible 
                    FROM senior_eligible_benefits 
                    WHERE senior_id = :senior_id 
                    AND benefit_id = :benefit_id
                    AND eligible_from <= CURDATE()
                    AND eligible_until >= CURDATE()";
            
            $stmt = $db->prepare($query);
            $stmt->bindParam(':senior_id', $senior_id);
            $stmt->bindParam(':benefit_id', $benefit_id);
            $stmt->execute();
            
            return $stmt->fetch(PDO::FETCH_ASSOC)['eligible'] > 0;
        }
        
        /**
        * Check if benefit can be claimed based on frequency
        * @param int $senior_id
        * @param int $benefit_id
        * @return array ['can_claim' => bool, 'next_eligible_date' => date]
        */
        public static function canClaimBenefit($senior_id, $benefit_id) {
            global $db;
            
            // Get benefit frequency
            try {
                $query = "SELECT frequency FROM benefits WHERE id = :benefit_id";
                $stmt = $db->prepare($query);
                $stmt->bindParam(':benefit_id', $benefit_id);
                $stmt->execute();
                $benefit = $stmt->fetch(PDO::FETCH_ASSOC);
                
                if (!$benefit) {
                    return ['can_claim' => false, 'reason' => 'Benefit not found'];
                }
            } catch (Exception $e) {
                error_log("BenefitCalculator.canClaimBenefit: benefits table missing or query failed: " . $e->getMessage());
                return ['can_claim' => false, 'reason' => 'Benefits data unavailable'];
            }
            
            // Check last claim from benefit_history
            $query = "SELECT MAX(claimed_date) as last_claimed, next_eligible_date
                    FROM benefit_history 
                    WHERE senior_id = :senior_id AND benefit_id = :benefit_id";
            $stmt = $db->prepare($query);
            $stmt->bindParam(':senior_id', $senior_id);
            $stmt->bindParam(':benefit_id', $benefit_id);
            $stmt->execute();
            $history = $stmt->fetch(PDO::FETCH_ASSOC);
            
            if (!$history || !$history['last_claimed']) {
                return ['can_claim' => true, 'first_time' => true];
            }
            
            $today = new DateTime();
            $next_eligible = new DateTime($history['next_eligible_date']);
            
            if ($today >= $next_eligible) {
                return ['can_claim' => true, 'next_eligible_date' => null];
            }
            
            return [
                'can_claim' => false, 
                'next_eligible_date' => $history['next_eligible_date'],
                'reason' => 'Must wait until ' . $history['next_eligible_date']
            ];
        }
        
        /**
        * Get all benefits with claim status for a senior
        * @param int $senior_id
        * @return array
        */
        public static function getBenefitsWithStatus($senior_id) {
            global $db;
            
            try {
                $query = "SELECT b.*, 
                        seb.eligible_from, seb.eligible_until,
                        bh.claimed_date as last_claimed,
                        bh.next_eligible_date,
                        CASE 
                            WHEN bh.next_eligible_date IS NULL OR bh.next_eligible_date <= CURDATE() 
                            THEN 1 ELSE 0 
                        END as can_claim_now
                        FROM benefits b
                        JOIN senior_eligible_benefits seb ON b.id = seb.benefit_id
                        LEFT JOIN benefit_history bh ON b.id = bh.benefit_id 
                            AND bh.senior_id = seb.senior_id
                            AND bh.claimed_date = (
                            SELECT MAX(claimed_date) 
                            FROM benefit_history 
                            WHERE benefit_id = b.id AND senior_id = :senior_id
                            )
                        WHERE seb.senior_id = :senior_id
                        AND b.is_active = 1
                        ORDER BY b.type, b.name";
                
                $stmt = $db->prepare($query);
                $stmt->bindParam(':senior_id', $senior_id);
                $stmt->execute();
                
                return $stmt->fetchAll(PDO::FETCH_ASSOC);
            } catch (Exception $e) {
                error_log("BenefitCalculator.getBenefitsWithStatus: benefits table missing or query failed: " . $e->getMessage());
                return [];
            }
        }
        
        /**
        * Track newly received benefits (not yet claimed)
        * @param int $senior_id
        * @return array
        */
        public static function getNewBenefits($senior_id) {
            global $db;
            
            try {
                $query = "SELECT b.*, seb.eligible_from
                        FROM benefits b
                        JOIN senior_eligible_benefits seb ON b.id = seb.benefit_id
                        LEFT JOIN benefit_history bh ON b.id = bh.benefit_id 
                            AND bh.senior_id = seb.senior_id
                        WHERE seb.senior_id = :senior_id
                        AND b.is_active = 1
                        AND bh.id IS NULL
                        ORDER BY seb.eligible_from DESC";
                
                $stmt = $db->prepare($query);
                $stmt->bindParam(':senior_id', $senior_id);
                $stmt->execute();
                
                return $stmt->fetchAll(PDO::FETCH_ASSOC);
            } catch (Exception $e) {
                error_log("BenefitCalculator.getNewBenefits: benefits table missing or query failed: " . $e->getMessage());
                return [];
            }
        }
    }
