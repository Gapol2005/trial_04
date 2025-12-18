<?php include 'auth_check.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zamboanga City OSCA Form</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../../css/style.css">
</head>
<body class="inter-body text-gray-700 flex flex-col min-h-screen">
    <div id="loading-overlay" class="loading-overlay hidden">
        <div class="spinner"></div>
    </div>

    <header class="bg-white border-b border-gray-200 py-3 px-4 md:px-8 flex justify-between items-center sticky top-0 z-20">
        <div class="flex items-center gap-4">
            <a href="senior_citizen_list.php" class="text-blue-600 bg-blue-50 hover:bg-blue-100 rounded-full h-8 w-8 flex items-center justify-center transition">
                <i class="fa-solid fa-chevron-left text-sm"></i>
            </a>
            <div>
                <h1 id="form-page-title" class="font-bold text-sm md:text-base leading-tight text-black">New Senior Citizen Registration</h1>
                <p class="text-[11px] md:text-xs text-gray-500 font-medium">Office of Senior Citizens Affairs</p>
            </div>
        </div>
        <div class="flex items-center gap-3">
            <div class="text-right hidden sm:block leading-tight">
                <p class="text-sm font-bold text-black">Space1000</p>
                <p class="text-[10px] text-gray-500 font-semibold uppercase">Social Worker Coordinator</p>
            </div>
            <div class="h-9 w-9 rounded-full border border-gray-300 flex items-center justify-center text-gray-800 text-lg">
                <i class="fa-regular fa-user text-xl"></i>
            </div>
        </div>
    </header>

    <main class="max-w-6xl mx-auto p-4 md:p-8 w-full flex-grow fade-in">
        <p id="progress-text" class="text-center text-[10px] font-medium text-gray-500 mb-3 uppercase tracking-wide">Step 1 of 4</p>
        <div class="w-full bg-gray-200 h-1.5 rounded-full mb-8 relative overflow-hidden">
            <div id="progress-bar" class="brand-blue h-full absolute top-0 left-0 rounded-full transition-all duration-500 ease-out" style="width: 25%"></div>
        </div>

        <div class="grid grid-cols-2 md:grid-cols-4 gap-4 mb-8" id="stepper-header">
            <div id="tab-1" class="step-active rounded-lg py-3 px-2 text-center flex flex-col items-center justify-center shadow-md relative step-indicator cursor-pointer" onclick="goToStep(1)">
                <i class="fa-solid fa-user text-xl mb-1"></i>
                <span class="font-semibold text-xs">Personal Information</span>
            </div>
            <div id="tab-2" class="step-inactive rounded-lg py-3 px-2 text-center flex flex-col items-center justify-center shadow-md relative cursor-pointer" onclick="goToStep(2)">
                <i class="fa-solid fa-users text-xl mb-1"></i>
                <span class="font-semibold text-xs">Family Composition</span>
            </div>
            <div id="tab-3" class="step-inactive rounded-lg py-3 px-2 text-center flex flex-col items-center justify-center shadow-md relative cursor-pointer" onclick="goToStep(3)">
                <i class="fa-solid fa-sitemap text-xl mb-1"></i>
                <span class="font-semibold text-xs">Association</span>
            </div>
            <div id="tab-4" class="step-inactive rounded-lg py-3 px-2 text-center flex flex-col items-center justify-center shadow-md relative cursor-pointer" onclick="goToStep(4)">
                <i class="fa-solid fa-file-alt text-xl mb-1"></i>
                <span class="font-semibold text-xs">Requirements</span>
            </div>
        </div>

        <form id="senior-registration-form">
            <input type="hidden" id="senior-id" name="id">
            <input type="hidden" id="application-id" name="application_id">
            <input type="hidden" id="contact-id" name="contact_id">

            <!-- Step 1: Personal Details -->
            <section id="step-1" class="step-content bg-white border border-gray-300 rounded-lg shadow-sm p-6 mb-6">
                <h3 class="font-bold brand-blue-text text-lg mb-4">Personal Na Impormasyon</h3>
                <div class="grid grid-cols-1 md:grid-cols-2 gap-y-5 gap-x-6">
                    <div>
                        <label for="first_name" class="block text-sm font-medium text-gray-700 mb-1">First Name <span class="text-orange-500">*</span></label>
                        <input type="text" id="first_name" name="first_name" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm" required>
                    </div>
                    <div>
                        <label for="middle_name" class="block text-sm font-medium text-gray-700 mb-1">Middle Name/Middle Initial</label>
                        <input type="text" id="middle_name" name="middle_name" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                    <div class="md:col-span-2">
                        <label for="last_name" class="block text-sm font-medium text-gray-700 mb-1">Last Name <span class="text-orange-500">*</span></label>
                        <input type="text" id="last_name" name="last_name" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm" required>
                    </div>
                    <div>
                        <label for="extension" class="block text-sm font-medium text-gray-700 mb-1">Extension</label>
                        <input type="text" id="extension" name="extension" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                    <div>
                        <label for="house_number" class="block text-sm font-medium text-gray-700 mb-1">House No. <span class="text-orange-500">*</span></label>
                        <input type="text" id="house_number" name="contact[house_number]" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                    <div class="md:col-span-2">
                        <label for="street" class="block text-sm font-medium text-gray-700 mb-1">Street <span class="text-orange-500">*</span></label>
                        <input type="text" id="street" name="contact[street]" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                    <div>
                        <label for="barangay_id" class="block text-sm font-medium text-gray-700 mb-1">Barangay <span class="text-orange-500">*</span></label>
                        <select id="barangay_id" name="barangay_id" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm" required>
                            <!-- Options populated by JS -->
                        </select>
                    </div>
                    <div>
                        <label for="city" class="block text-sm font-medium text-gray-700 mb-1">City, Province, Postal Code</label>
                        <input type="text" id="city" name="contact[city]" value="Zamboanga City, Philippines, 7000" disabled class="w-full border border-gray-300 rounded-md p-3 bg-gray-100 text-black font-medium pr-10">
                    </div>

                    <div class="md:col-span-4">
                            <label class="block text-sm font-semibold mb-2 text-black">Date of Birth <span class="text-orange-500">*</span></label>
                            <div class="relative">
                                <input type="date" id="birthdate" name="birthdate" placeholder="dd / mm / yy" class="w-full border border-gray-300 rounded-md p-3 text-gray-500">
                                <div class="absolute inset-y-0 right-0 flex items-center px-3 text-black text-lg"></div>
                            </div>
                    </div>
                    <div class="md:col-span-2">
                        <label for="age" class="block text-sm font-medium text-gray-700 mb-1">Age <span class="text-orange-500">*</span></label>
                        <input type="text" id="age" name="age" readonly class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm bg-gray-100" required>
                    </div>

                    <div>
                        <label for="gender_id" class="block text-sm font-medium text-gray-700 mb-1">Sex/Gender <span class="text-orange-500">*</span></label>
                        <select id="gender_id" name="gender_id" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm" required>
                            <!-- Options populated by JS -->
                        </select>
                    </div>
                </div>

                <h3 class="font-bold brand-blue-text text-lg my-4 pt-4 border-t border-gray-100">Contact & Background Information</h3>
                 <div class="grid grid-cols-1 md:grid-cols-2 gap-y-5 gap-x-6">
                    <div>
                        <label for="educational_attainment_id" class="block text-sm font-medium text-gray-700 mb-1">Educational Attainment</label>
                        <select id="educational_attainment_id" name="educational_attainment_id" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                            <!-- Options populated by JS -->
                        </select>
                    </div>
                    <div>
                        <label for="mobile_number" class="block text-sm font-medium text-gray-700 mb-1">Mobile Number</label>
                        <input type="text" id="mobile_number" name="contact[mobile_number]" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                    <div>
                        <label for="telephone_number" class="block text-sm font-medium text-gray-700 mb-1">Telephone Number</label>
                        <input type="text" id="telephone_number" name="contact[telephone_number]" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                    <div>
                        <label for="monthly_salary" class="block text-sm font-medium text-gray-700 mb-1">Monthly Salary</label>
                        <input type="number" step="0.01" id="monthly_salary" name="monthly_salary" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                    <div>
                        <label for="occupation" class="block text-sm font-medium text-gray-700 mb-1">Occupation</label>
                        <input type="text" id="occupation" name="occupation" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                    <div>
                        <label for="other_skills" class="block text-sm font-medium text-gray-700 mb-1">Other Skills</label>
                        <input type="text" id="other_skills" name="other_skills" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                </div>
            </section>

            <!-- Step 2: Family Composition -->
            <section id="step-2" class="step-content bg-white border border-gray-300 rounded-lg shadow-sm p-6 mb-6 hidden">
                <h3 class="font-bold brand-blue-text text-lg mb-4">Family Composition</h3>
                <div class="mb-4">
                    <p class="text-xs text-gray-600 mb-3">To Add a Family Member Please click Add Person Button</p>
                    <div class="flex gap-3">
                        <button type="button" onclick="addFamilyMember()" class="bg-green-500 hover:bg-green-600 text-white text-sm font-bold py-2 px-6 rounded shadow transition flex items-center gap-2">
                            <i class="fa-solid fa-plus"></i> Add Person
                        </button>
                        <button type="button" onclick="deleteSelected()" class="bg-red-500 hover:bg-red-600 text-white text-sm font-bold py-2 px-6 rounded shadow transition flex items-center gap-2">
                            <i class="fa-solid fa-trash-can"></i> Delete Selected
                        </button>
                    </div>
                </div>
                <div id="family-container" class="space-y-6"></div>
            </section>

            <!-- Step 3: Association -->
            <section id="step-3" class="step-content bg-white border border-gray-300 rounded-lg shadow-sm p-6 mb-6 hidden">
                <h3 class="font-bold brand-blue-text text-lg mb-4">Target Sector (Pangunahing Sektor)</h3>
                <div class="bg-blue-50 text-blue-900 p-4 rounded-lg mb-8 font-medium text-sm">
                    Select ALL categories that apply to this senior citizen. Multiple selections are allowed.
                </div>
                <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                    <div>
                        <h3 class="font-bold text-lg mb-4 text-black">Target Sectors</h3>
                        <div class="space-y-4">
                            <label class="border border-gray-300 rounded-xl p-4 flex items-start gap-4 cursor-pointer hover:border-blue-800 transition">
                                <input type="checkbox" name="target_sector[]" value="PNGNA" class="checkbox-lg mt-1 accent-blue-900">
                                <div><p class="font-bold text-sm text-black">PNGNA</p><p class="text-xs text-gray-500 mt-1">Member of national senior citizens organization</p></div>
                            </label>
                            <label class="border border-gray-300 rounded-xl p-4 flex items-start gap-4 cursor-pointer hover:border-blue-800 transition">
                                <input type="checkbox" name="target_sector[]" value="WEPC" class="checkbox-lg mt-1 accent-blue-900">
                                <div><p class="font-bold text-sm text-black">WEPC</p><p class="text-xs text-gray-500 mt-1">Female senior citizens in empowerment programs</p></div>
                            </label>
                            <label class="border border-gray-300 rounded-xl p-4 flex items-start gap-4 cursor-pointer hover:border-blue-800 transition">
                                <input type="checkbox" name="target_sector[]" value="PWD" class="checkbox-lg mt-1 accent-blue-900">
                                <div><p class="font-bold text-sm text-black">PWD</p><p class="text-xs text-gray-500 mt-1">Senior with recognized disability</p></div>
                            </label>
                            <label class="border border-gray-300 rounded-xl p-4 flex items-start gap-4 cursor-pointer hover:border-blue-800 transition">
                                <input type="checkbox" name="target_sector[]" value="YNSP" class="checkbox-lg mt-1 accent-blue-900">
                                <div><p class="font-bold text-sm text-black">YNSP</p><p class="text-xs text-gray-500 mt-1">Special care program</p></div>
                            </label>
                            <label class="border border-gray-300 rounded-xl p-4 flex items-start gap-4 cursor-pointer hover:border-blue-800 transition">
                                <input type="checkbox" name="target_sector[]" value="PASP" class="checkbox-lg mt-1 accent-blue-900">
                                <div><p class="font-bold text-sm text-black">PASP</p><p class="text-xs text-gray-500 mt-1">Hope and support program members</p></div>
                            </label>
                            <label class="border border-gray-300 rounded-xl p-4 flex items-start gap-4 cursor-pointer hover:border-blue-800 transition">
                                <input type="checkbox" name="target_sector[]" value="KIA/WIA" class="checkbox-lg mt-1 accent-blue-900">
                                <div><p class="font-bold text-sm text-black">KIA/WIA</p></div>
                            </label>
                            <label class="border border-gray-300 rounded-xl p-4 flex items-start gap-4 cursor-pointer hover:border-blue-800 transition h-auto">
                                <input type="checkbox" name="target_sector[]" value="Other" class="checkbox-lg mt-1 accent-blue-900">
                                <div class="w-full">
                                    <p class="font-bold text-sm text-black">Other</p>
                                    <div class="flex items-center gap-2 mt-1">
                                        <span class="text-xs text-gray-500">Please specify:</span>
                                        <input type="text" name="target_sector_other" class="border-b border-gray-400 focus:outline-none focus:border-blue-900 w-full text-sm">
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>

                    <div>
                        <h3 class="font-bold text-lg mb-4 text-black">Special Sub-Categories</h3>
                        <div class="space-y-4">
                            <label class="border border-gray-300 rounded-xl p-4 flex items-start gap-4 cursor-pointer hover:border-blue-800 transition">
                                <input type="checkbox" name="sub_category[]" value="Solo Parents" class="checkbox-lg mt-1 accent-blue-900">
                                <div><p class="font-bold text-sm text-black">Solo Parents</p><p class="text-xs text-gray-500 mt-1">Senior citizen raising children alone</p></div>
                            </label>
                            <label class="border border-gray-300 rounded-xl p-4 flex items-start gap-4 cursor-pointer hover:border-blue-800 transition">
                                <input type="checkbox" name="sub_category[]" value="Indigenous Person (IP)" class="checkbox-lg mt-1 accent-blue-900">
                                <div><p class="font-bold text-sm text-black">Indigenous Person (IP)</p></div>
                            </label>
                            <label class="border border-gray-300 rounded-xl p-4 flex items-start gap-4 cursor-pointer hover:border-blue-800 transition">
                                <input type="checkbox" name="sub_category[]" value="Recovering Person who used drugs" class="checkbox-lg mt-1 accent-blue-900">
                                <div><p class="font-bold text-sm text-black">Recovering Person who used drugs</p></div>
                            </label>
                            <label class="border border-gray-300 rounded-xl p-4 flex items-start gap-4 cursor-pointer hover:border-blue-800 transition">
                                <input type="checkbox" name="sub_category[]" value="4P's DSWD Beneficiaries" class="checkbox-lg mt-1 accent-blue-900">
                                <div><p class="font-bold text-sm text-black">4P's DSWD Beneficiaries</p></div>
                            </label>
                            <label class="border border-gray-300 rounded-xl p-4 flex items-start gap-4 cursor-pointer hover:border-blue-800 transition">
                                <input type="checkbox" name="sub_category[]" value="Street Dwellers" class="checkbox-lg mt-1 accent-blue-900">
                                <div><p class="font-bold text-sm text-black">Street Dwellers</p></div>
                            </label>
                            <label class="border border-gray-300 rounded-xl p-4 flex items-start gap-4 cursor-pointer hover:border-blue-800 transition">
                                <input type="checkbox" name="sub_category[]" value="Psychosocial/Mental/Learning Disability" class="checkbox-lg mt-1 accent-blue-900">
                                <div><p class="font-bold text-sm text-black">Psychosocial/Mental/Learning Disability</p></div>
                            </label>
                            <label class="border border-gray-300 rounded-xl p-4 flex items-start gap-4 cursor-pointer hover:border-blue-800 transition">
                                <input type="checkbox" name="sub_category[]" value="Stateless Person/Asylum" class="checkbox-lg mt-1 accent-blue-900">
                                <div><p class="font-bold text-sm text-black">Stateless Person/Asylum</p></div>
                            </label>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Step 4: Requirements -->
            <section id="step-4" class="step-content bg-white border border-gray-300 rounded-lg shadow-sm p-6 mb-6 hidden">
                <h3 class="font-bold brand-blue-text text-lg mb-4">Upload Required Documents</h3>
                <p class="text-sm text-gray-600 mb-8">Please upload clear, readable copies of the following documents (JPG, PNG, or PDF Format).<br><span class="text-xs text-gray-500">Maximum file size: 5MB per document</span></p>

                <div class="space-y-6 mb-10">
                    <div class="border border-gray-300 rounded-xl p-6">
                        <h3 class="font-bold text-sm text-black mb-3">Proof of Age (Birth Certificate / ID): <span class="text-orange-500">*</span></h3>
                        <div class="flex flex-col gap-2">
                            <input type="file" name="proof_of_age" class="w-full text-sm text-gray-500" required>
                            <p class="text-xs text-gray-500 italic mt-1">Upload birth certificate or any valid government ID showing date of birth</p>
                            <div id="docs-proof-of-age" class="mt-2 grid grid-cols-3 gap-3"></div>
                        </div>
                    </div>

                    <div class="border border-gray-300 rounded-xl p-6">
                        <h3 class="font-bold text-sm text-black mb-3">Barangay Certification / Residency: <span class="text-orange-500">*</span></h3>
                        <div class="flex flex-col gap-2">
                            <input type="file" name="barangay_certification" class="w-full text-sm text-gray-500" required>
                            <p class="text-xs text-gray-500 italic mt-1">Certificate of Residency or Barangay Clearance from your barangay</p>
                            <div id="docs-barangay-certification" class="mt-2 grid grid-cols-3 gap-3"></div>
                        </div>
                    </div>

                    <div class="border border-gray-300 rounded-xl p-6">
                        <h3 class="font-bold text-sm text-black mb-3">Comelec ID / Certification (optional):</h3>
                        <div class="flex flex-col gap-2">
                            <input type="file" name="comelec_id" class="w-full text-sm text-gray-500">
                            <p class="text-xs text-gray-500 italic mt-1">Voter's ID or certification (if available)</p>
                            <div id="docs-comelec-id" class="mt-2 grid grid-cols-3 gap-3"></div>
                        </div>
                    </div>

                    <div class="border border-gray-300 rounded-xl p-6">
                        <h3 class="font-bold text-sm text-black mb-3">Senior Picture: <span class="text-orange-500">*</span></h3>
                        <div class="flex flex-col gap-2">
                                <input type="file" name="senior_picture" class="w-full text-sm text-gray-500" required>
                                <div id="docs-senior-picture" class="mt-2 grid grid-cols-3 gap-3"></div>
                        </div>
                    </div>

                    <div class="border border-gray-300 rounded-xl p-6">
                        <h3 class="font-bold text-sm text-black mb-4">Thumbmark</h3>
                        <div class="border border-gray-400 rounded px-4 py-3 flex items-center gap-3">
                            <input type="checkbox" name="thumbmark_verified" class="checkbox-lg accent-blue-900">
                            <span class="text-xs text-gray-500 italic">This Certify That the Person has provided a thumb mark Information and is Verified by The Personel Incharge</span>
                        </div>
                    </div>
                </div>

                <h3 class="font-bold brand-blue-text text-lg mb-4">Review & Confirm</h3>
                <div id="review-content" class="text-sm text-gray-700 space-y-2">
                    <!-- Review details will be populated by JS -->
                </div>
            </section>


            <div class="flex justify-between mt-8">
                <button type="button" id="prev-step-btn" class="bg-gray-300 text-gray-800 px-6 py-2 rounded-md font-semibold text-sm hover:bg-gray-400 transition hidden">Previous</button>
                <div class="flex items-center gap-2">
                    <button type="button" id="save-draft-btn" class="bg-yellow-500 text-white px-4 py-2 rounded-md font-semibold text-sm hover:bg-yellow-600 transition">Save as Draft</button>
                    <button type="button" id="next-step-btn" class="bg-blue-600 text-white px-6 py-2 rounded-md font-semibold text-sm hover:bg-blue-700 transition">Next</button>
                    <button type="submit" id="submit-btn" class="bg-green-600 text-white px-6 py-2 rounded-md font-semibold text-sm hover:bg-green-700 transition hidden">Register Senior</button>
                </div>
            </div>
            <div id="form-error-message" class="text-red-500 text-sm mt-4"></div>
        </form>
    </main>

    <script>
        let currentStep = 1;
        const totalSteps = 4;
        const form = document.getElementById('senior-registration-form');
        const seniorIdInput = document.getElementById('senior-id');
        const contactIdInput = document.getElementById('contact-id');
        const formPageTitle = document.getElementById('form-page-title');
        const loadingOverlay = document.getElementById('loading-overlay');
        const formErrorMessage = document.getElementById('form-error-message');

        const genderSelect = document.getElementById('gender_id');
        const educationalAttainmentSelect = document.getElementById('educational_attainment_id');
        const barangaySelect = document.getElementById('barangay_id');

        // Compute age from birthdate and populate the `age` field
        function computeAge() {
            const birthEl = document.getElementById('birthdate');
            const ageEl = document.getElementById('age');
            if (!birthEl || !ageEl) return;
            const val = birthEl.value;
            if (!val) { ageEl.value = ''; return; }
            const birth = new Date(val);
            const today = new Date();
            let age = today.getFullYear() - birth.getFullYear();
            const m = today.getMonth() - birth.getMonth();
            if (m < 0 || (m === 0 && today.getDate() < birth.getDate())) {
                age--;
            }
            ageEl.value = age >= 0 ? age : '';
        }

        document.addEventListener('DOMContentLoaded', async function() {
            loadingOverlay.classList.remove('hidden'); // Show spinner on page load

            // Fetch data for dropdowns
            await Promise.all([
                    fetchAndPopulateDropdown('../api/genders/list.php', genderSelect, 'Select Gender'),
                    fetchAndPopulateDropdown('../api/educational_attainment/list.php', educationalAttainmentSelect, 'Select Educational Attainment'),
                    fetchAndPopulateDropdown('../api/barangays/list.php', barangaySelect, 'Select Barangay')
            ]).catch(error => {
                showMessage('error', 'Fetch Error', "Failed to load form data. Please try again.");
                console.error("Error fetching dropdown data:", error);
            });

            const urlParams = new URLSearchParams(window.location.search);
            const seniorId = urlParams.get('id');
            const applicationId = urlParams.get('application_id');

            if (applicationId) {
                formPageTitle.textContent = 'Edit Application';
                document.getElementById('application-id').value = applicationId;
                await fetchApplicationDetails(applicationId);
            } else if (seniorId) {
                formPageTitle.textContent = 'Edit Senior Citizen';
                seniorIdInput.value = seniorId;
                await fetchSeniorDetails(seniorId);
            } else {
                formPageTitle.textContent = 'New Senior Citizen Registration';
            }
            
            loadingOverlay.classList.add('hidden'); // Hide spinner after initial data load

            // Wire birthdate change to auto-calculate age and compute initial value if present
            const birthInput = document.getElementById('birthdate');
            if (birthInput) {
                birthInput.addEventListener('change', computeAge);
            }

            showStep(currentStep);

            // If a birthdate was already filled (edit mode), compute age
            if (birthInput && birthInput.value) computeAge();
        });

        async function fetchAndPopulateDropdown(apiEndpoint, selectElement, defaultOptionText) {
            try {
                const response = await fetch(apiEndpoint);
                const data = await response.json();
                if (data.success) {
                    selectElement.innerHTML = `<option value="">${defaultOptionText}</option>`;
                    data.data.forEach(item => {
                        selectElement.innerHTML += `<option value="${item.id}">${item.name || item.level || item.category}</option>`;
                    });
                } else {
                    showMessage('error', 'Fetch Error', `Error fetching data from ${apiEndpoint}: ${data.message}`);
                    console.error(`Error fetching data from ${apiEndpoint}:`, data.message);
                }
            } catch (error) {
                showMessage('error', 'Fetch Error', 'An unexpected error occurred while fetching dropdown data.');
                console.error('Error:', error);
            }
        }

        // Application types are chosen via Registration Category; no client fetch needed here.

        async function fetchSeniorDetails(id) {
            loadingOverlay.classList.remove('hidden');
            try {
                const response = await fetch(`../api/seniors/details.php?id=${id}`);
                const data = await response.json();
                if (data.success) {
                    // seniors/details.php may return a nested structure { senior: {...}, family_members: [...] }
                    const senior = data.data && data.data.senior ? data.data.senior : data.data;
                    document.getElementById('first_name').value = senior.first_name || '';
                    document.getElementById('middle_name').value = senior.middle_name || '';
                    document.getElementById('last_name').value = senior.last_name || '';
                    document.getElementById('extension').value = senior.extension || '';
                    document.getElementById('birthdate').value = senior.birthdate || '';
                    // compute age on client side from birthdate
                    computeAge();
                    document.getElementById('gender_id').value = senior.gender_id || '';

                    // Contact info
                    if (senior.contact_id) {
                        contactIdInput.value = senior.contact_id;
                        document.getElementById('mobile_number').value = data.data && data.data.senior ? (data.data.senior.mobile_number || '') : (senior.mobile_number || '');
                        document.getElementById('telephone_number').value = data.data && data.data.senior ? (data.data.senior.telephone_number || '') : (senior.telephone_number || '');
                        document.getElementById('house_number').value = data.data && data.data.senior ? (data.data.senior.house_number || '') : (senior.house_number || '');
                        document.getElementById('street').value = data.data && data.data.senior ? (data.data.senior.street || '') : (senior.street || '');
                    }
                    document.getElementById('barangay_id').value = senior.barangay_id || '';

                    // Socioeconomic
                    document.getElementById('educational_attainment_id').value = senior.educational_attainment_id || '';
                    document.getElementById('monthly_salary').value = senior.monthly_salary || '';
                    document.getElementById('occupation').value = senior.occupation || '';
                    document.getElementById('other_skills').value = senior.other_skills || '';

                    // Populate family members if provided
                    const family = data.data && data.data.family_members ? data.data.family_members : [];
                    if (family && family.length > 0) {
                        // clear existing family container
                        familyContainer.innerHTML = '';
                        family.forEach((fm, idx) => {
                            addFamilyMember();
                            const card = familyContainer.children[familyContainer.children.length - 1];
                            card.querySelector('[name="family_first_name[]"]').value = fm.first_name || '';
                            card.querySelector('[name="family_middle_name[]"]').value = fm.middle_name || '';
                            card.querySelector('[name="family_last_name[]"]').value = fm.last_name || '';
                            card.querySelector('[name="family_extension[]"]').value = fm.extension || '';
                            card.querySelector('[name="family_relationship[]"]').value = fm.relationship || '';
                            card.querySelector('[name="family_age[]"]').value = fm.age || '';
                            card.querySelector('[name="family_salary[]"]').value = fm.monthly_salary || '';
                        });
                    }

                } else {
                    showMessage('error', 'Fetch Error', data.message || 'Failed to load senior details');
                }
            } catch (error) {
                showMessage('error', 'Fetch Error', 'An unexpected error occurred while fetching details.');
                console.error('Error:', error);
            } finally {
                loadingOverlay.classList.add('hidden');
            }
        }

        async function fetchApplicationDetails(applicationId) {
            loadingOverlay.classList.remove('hidden');
            try {
                const response = await fetch(`../api/applications/details.php?id=${applicationId}`);
                let data = null;
                try {
                    data = await response.json();
                } catch (err) {
                    const text = await response.text();
                    console.error('Failed to parse application details JSON:', text);
                    showMessage('error', 'Fetch Error', 'Server returned invalid response: ' + text);
                    return;
                }
                if (!data || !data.success) {
                    showMessage('error', 'Fetch Error', (data && data.message) ? data.message : 'Failed to load application');
                    return;
                }
                const app = data.data;
                // If the application has a linked senior, load senior details (family, etc.)
                if (app.senior_id) {
                    seniorIdInput.value = app.senior_id;
                    // fetch senior details to populate family and related fields
                    await fetchSeniorDetails(app.senior_id);
                }

                // Populate personal/contact fields from application/senior data
                document.getElementById('first_name').value = app.first_name || app.senior_first_name || '';
                document.getElementById('middle_name').value = app.middle_name || app.senior_middle_name || '';
                document.getElementById('last_name').value = app.last_name || app.senior_last_name || '';
                document.getElementById('extension').value = app.extension || '';
                if (app.birthdate) document.getElementById('birthdate').value = app.birthdate;
                computeAge();
                if (app.gender_id) document.getElementById('gender_id').value = app.gender_id;
                if (app.barangay_id) document.getElementById('barangay_id').value = app.barangay_id;

                // Contact overrides
                if (app.contact_id) {
                    contactIdInput.value = app.contact_id;
                    document.getElementById('mobile_number').value = app.mobile_number || '';
                    document.getElementById('telephone_number').value = app.telephone_number || '';
                    document.getElementById('house_number').value = app.house_number || '';
                    document.getElementById('street').value = app.street || '';
                }

                // Show existing uploaded documents in their respective field containers (if any)
                // Map document_type_id to field containers
                const docTypeMap = {
                    '1': 'docs-proof-of-age',
                    '2': 'docs-barangay-certification',
                    '3': 'docs-comelec-id',
                    '4': 'docs-senior-picture'
                };
                (app.documents || []).forEach(d => {
                    const containerId = docTypeMap[String(d.document_type_id)];
                    if (!containerId) return; // skip unknown types
                    const el = document.getElementById(containerId);
                    if (!el) return;
                    const container = document.createElement('div');
                    container.className = 'border p-2 rounded bg-white flex flex-col items-center';
                    const link = document.createElement('a');
                    link.href = d.file_path ? ('../' + d.file_path) : '#';
                    link.target = '_blank';
                    const img = document.createElement('img');
                    img.src = d.file_path ? ('../' + d.file_path) : '../img/default-avatar.png';
                    img.className = 'w-20 h-20 object-cover rounded';
                    link.appendChild(img);
                    const label = document.createElement('div');
                    label.className = 'text-xs mt-1 text-gray-600 text-center';
                    label.textContent = d.original_filename || d.file_path || 'Uploaded';
                    container.appendChild(link);
                    container.appendChild(label);
                    el.appendChild(container);
                });

                // Notes
                // If there are documents, list them in the Review step will show links via existing code
            } catch (error) {
                showMessage('error', 'Fetch Error', 'An unexpected error occurred while fetching application.');
                console.error('Error fetching application:', error);
            } finally {
                loadingOverlay.classList.add('hidden');
            }
        }

        function showStep(stepNum) {
            document.querySelectorAll('.step-content').forEach((section, index) => {
                section.classList.toggle('hidden', index + 1 !== stepNum);
            });
            document.querySelectorAll('#stepper-header > div').forEach((tab, index) => {
                tab.classList.remove('step-active', 'step-inactive', 'step-completed');
                if (index + 1 < stepNum) {
                    tab.classList.add('step-completed');
                } else if (index + 1 === stepNum) {
                    tab.classList.add('step-active');
                } else {
                    tab.classList.add('step-inactive');
                }
            });

            document.getElementById('progress-text').textContent = `Step ${stepNum} of ${totalSteps}`;
            document.getElementById('progress-bar').style.width = `${(stepNum / totalSteps) * 100}%`;

            document.getElementById('prev-step-btn').classList.toggle('hidden', stepNum === 1);
            document.getElementById('next-step-btn').classList.toggle('hidden', stepNum === totalSteps);
            document.getElementById('submit-btn').classList.toggle('hidden', stepNum !== totalSteps);

            if (stepNum === totalSteps) {
                populateReviewContent();
            }
        }

        function validateStep(stepNum) {
            let isValid = true;
            const currentStepSection = document.getElementById(`step-${stepNum}`);
            const inputs = currentStepSection.querySelectorAll('[required]');
            
            inputs.forEach(input => {
                if (!input.value.trim()) {
                    isValid = false;
                    input.classList.add('border-red-500');
                } else {
                    input.classList.remove('border-red-500');
                }
            });
            return isValid;
        }

        function goToStep(stepNum) {
            if (stepNum < currentStep || validateStep(currentStep)) {
                currentStep = stepNum;
                showStep(currentStep);
            } else {
                 showMessage('error', 'Validation Error', "Please fill in all required fields.");
            }
        }

        document.getElementById('next-step-btn').addEventListener('click', function() {
            if (validateStep(currentStep)) {
                currentStep++;
                if (currentStep > totalSteps) currentStep = totalSteps;
                showStep(currentStep);
            } else {
                showMessage('error', 'Validation Error', "Please fill in all required fields.");
            }
        });

        document.getElementById('prev-step-btn').addEventListener('click', function() {
            currentStep--;
            if (currentStep < 1) currentStep = 1;
            showStep(currentStep);
            formErrorMessage.textContent = "";
        });

        function populateReviewContent() {
            const reviewContent = document.getElementById('review-content');
            const formData = new FormData(form);
            let html = '<h3>Personal Information</h3><ul>';
            
            html += `<li><strong>First Name:</strong> ${formData.get('first_name')}</li>`;
            html += `<li><strong>Middle Name:</strong> ${formData.get('middle_name') || 'N/A'}</li>`;
            html += `<li><strong>Last Name:</strong> ${formData.get('last_name')}</li>`;
            html += `<li><strong>Extension:</strong> ${formData.get('extension') || 'N/A'}</li>`;
            html += `<li><strong>Birthdate:</strong> ${formData.get('birthdate')}</li>`;
            html += `<li><strong>Age:</strong> ${formData.get('age')}</li>`;
            html += `<li><strong>Gender:</strong> ${genderSelect.options[genderSelect.selectedIndex].text}</li>`;
            html += '</ul><h3>Contact & Background Information</h3><ul>';
            html += `<li><strong>Mobile Number:</strong> ${formData.get('contact[mobile_number]') || 'N/A'}</li>`;
            html += `<li><strong>Telephone Number:</strong> ${formData.get('contact[telephone_number]') || 'N/A'}</li>`;
            html += `<li><strong>House No.:</strong> ${formData.get('contact[house_number]') || 'N/A'}</li>`;
            html += `<li><strong>Street:</strong> ${formData.get('contact[street]') || 'N/A'}</li>`;
            html += `<li><strong>Barangay:</strong> ${barangaySelect.options[barangaySelect.selectedIndex].text}</li>`;
            html += `<li><strong>Educational Attainment:</strong> ${educationalAttainmentSelect.options[educationalAttainmentSelect.selectedIndex].text || 'N/A'}</li>`;
            html += `<li><strong>Monthly Salary:</strong> ${formData.get('monthly_salary') || 'N/A'}</li>`;
            html += `<li><strong>Occupation:</strong> ${formData.get('occupation') || 'N/A'}</li>`;
            html += `<li><strong>Other Skills:</strong> ${formData.get('other_skills') || 'N/A'}</li>`;
            html += '</ul>';

            // Family Composition
            html += '<h3>Family Composition</h3>';
            const familyMembers = document.querySelectorAll('#family-container .member-card');
            if (familyMembers.length > 0) {
                html += '<ul>';
                familyMembers.forEach((member, index) => {
                    html += `<li><strong>Member ${index + 1}:</strong> `;
                    html += `Name: ${member.querySelector('[name="family_first_name[]"]').value} ${member.querySelector('[name="family_middle_name[]"]').value} ${member.querySelector('[name="family_last_name[]"]').value}, `;
                    html += `Relationship: ${member.querySelector('[name="family_relationship[]"]').value}, `;
                    html += `Age: ${member.querySelector('[name="family_age[]"]').value}, `;
                    html += `Salary: ${member.querySelector('[name="family_salary[]"]').value}`;
                    html += `</li>`;
                });
                html += '</ul>';
            } else {
                html += '<p>No family members added.</p>';
            }

            // Association
            html += '<h3>Association</h3>';
            const targetSectors = formData.getAll('target_sector[]');
            const subCategories = formData.getAll('sub_category[]');
            html += `<p><strong>Target Sectors:</strong> ${targetSectors.join(', ') || 'N/A'}</p>`;
            if (targetSectors.includes('Other')) {
                 html += `<p><strong>Other Target Sector:</strong> ${formData.get('target_sector_other')}</p>`;
            }
            html += `<p><strong>Sub-Categories:</strong> ${subCategories.join(', ') || 'N/A'}</p>`;
            
            reviewContent.innerHTML = html;
        }

        form.addEventListener('submit', async function(e) {
            e.preventDefault();
            formErrorMessage.textContent = "";

            if (!validateStep(totalSteps)) {
                showMessage('error', 'Validation Error', "Please fill in all required fields.");
                return;
            }

            loadingOverlay.classList.remove('hidden');

            const formData = new FormData(form);

            try {
                // Build payload object and send as multipart/form-data so files can be uploaded
                const payload = {};
                // Registration Category -> New ID: default application type id = 1
                payload.application_type_id = 1;
                payload.notes = formData.get('notes') || null;

                payload.personal_info = {
                    first_name: formData.get('first_name') || null,
                    middle_name: formData.get('middle_name') || null,
                    last_name: formData.get('last_name') || null,
                    extension: formData.get('extension') || null,
                    birthdate: formData.get('birthdate') || null,
                    gender_id: formData.get('gender_id') ? parseInt(formData.get('gender_id')) : null,
                    barangay_id: formData.get('barangay_id') ? parseInt(formData.get('barangay_id')) : null,
                    educational_attainment_id: formData.get('educational_attainment_id') ? parseInt(formData.get('educational_attainment_id')) : null,
                    monthly_salary: formData.get('monthly_salary') || null,
                    occupation: formData.get('occupation') || null,
                    other_skills: formData.get('other_skills') || null
                };

                // indicate this is a full submit (not a draft)
                payload.is_draft = false;

                payload.contact_info = {
                    mobile_number: formData.get('contact[mobile_number]') || formData.get('mobile_number') || null,
                    telephone_number: formData.get('contact[telephone_number]') || formData.get('telephone_number') || null,
                    house_number: formData.get('contact[house_number]') || formData.get('house_number') || null,
                    street: formData.get('contact[street]') || formData.get('street') || null,
                    email: formData.get('contact[email]') || null
                };

                const familyMembers = [];
                document.querySelectorAll('#family-container .member-card').forEach(member => {
                    const fm = {};
                    fm.first_name = member.querySelector('[name="family_first_name[]"]').value || null;
                    fm.middle_name = member.querySelector('[name="family_middle_name[]"]').value || null;
                    fm.last_name = member.querySelector('[name="family_last_name[]"]').value || null;
                    fm.extension = member.querySelector('[name="family_extension[]"]').value || null;
                    fm.relationship = member.querySelector('[name="family_relationship[]"]').value || null;
                    fm.age = member.querySelector('[name="family_age[]"]').value || null;
                    fm.monthly_salary = member.querySelector('[name="family_salary[]"]').value || null;
                    familyMembers.push(fm);
                });
                if (familyMembers.length > 0) payload.family_members = familyMembers;

                // Collect target sectors (associations)
                const targetSectors = [];
                document.querySelectorAll('input[name="target_sector[]"]:checked').forEach(checkbox => {
                    targetSectors.push(checkbox.value);
                });
                if (targetSectors.length > 0) payload.target_sectors = targetSectors;

                // Collect sub-categories
                const subCategories = [];
                document.querySelectorAll('input[name="sub_category[]"]:checked').forEach(checkbox => {
                    subCategories.push(checkbox.value);
                });
                if (subCategories.length > 0) payload.sub_categories = subCategories;

                // Create FormData and append JSON payload + files
                const applicationIdVal = document.getElementById('application-id').value;
                if (applicationIdVal) payload.application_id = parseInt(applicationIdVal);

                const fd = new FormData();
                fd.append('payload', JSON.stringify(payload));

                // Append file inputs (if any) using their input `name` so server knows the document type
                document.querySelectorAll('input[type="file"]').forEach(input => {
                    const files = input.files;
                    for (let i = 0; i < files.length; i++) {
                        // use the input's name as the field key (e.g. proof_of_age, barangay_certification)
                        fd.append(input.name, files[i], files[i].name);
                    }
                });

                const endpoint = applicationIdVal ? '../api/applications/update.php' : '../api/applications/create.php';

                const response = await fetch(endpoint, { method: 'POST', body: fd });
                const text = await response.text();
                let result = null;
                try {
                    result = JSON.parse(text);
                } catch (err) {
                    console.error('Non-JSON response on submit:', text);
                    showMessage('error', 'Save Error', 'Server returned invalid response: ' + text);
                    return;
                }

                if (result.success) {
                    showMessage('success', 'Success', 'Application submitted successfully!', 'registration_category.php');
                } else {
                    showMessage('error', 'Save Error', result.message || 'Failed to create application');
                }
            } catch (error) {
                showMessage('error', 'Save Error', 'An unexpected error occurred.');
                console.error('Error:', error);
            } finally {
                loadingOverlay.classList.add('hidden');
            }
        });

        // Save as Draft handler
        document.getElementById('save-draft-btn').addEventListener('click', async function(e) {
            e.preventDefault();
            formErrorMessage.textContent = "";

            // No validation for draft beyond basic last step
            loadingOverlay.classList.remove('hidden');
            const formData = new FormData(form);

            try {
                const payload = {};
                payload.application_type_id = 1; // New ID
                payload.is_draft = true;
                payload.notes = formData.get('notes') || null;

                payload.personal_info = {
                    first_name: formData.get('first_name') || null,
                    middle_name: formData.get('middle_name') || null,
                    last_name: formData.get('last_name') || null,
                    extension: formData.get('extension') || null,
                    birthdate: formData.get('birthdate') || null,
                    gender_id: formData.get('gender_id') ? parseInt(formData.get('gender_id')) : null,
                    barangay_id: formData.get('barangay_id') ? parseInt(formData.get('barangay_id')) : null,
                    educational_attainment_id: formData.get('educational_attainment_id') ? parseInt(formData.get('educational_attainment_id')) : null,
                    monthly_salary: formData.get('monthly_salary') || null,
                    occupation: formData.get('occupation') || null,
                    other_skills: formData.get('other_skills') || null
                };

                payload.contact_info = {
                    mobile_number: formData.get('contact[mobile_number]') || formData.get('mobile_number') || null,
                    telephone_number: formData.get('contact[telephone_number]') || formData.get('telephone_number') || null,
                    house_number: formData.get('contact[house_number]') || formData.get('house_number') || null,
                    street: formData.get('contact[street]') || formData.get('street') || null,
                    email: formData.get('contact[email]') || null
                };

                const familyMembers = [];
                document.querySelectorAll('#family-container .member-card').forEach(member => {
                    const fm = {};
                    fm.first_name = member.querySelector('[name="family_first_name[]"]').value || null;
                    fm.middle_name = member.querySelector('[name="family_middle_name[]"]').value || null;
                    fm.last_name = member.querySelector('[name="family_last_name[]"]').value || null;
                    fm.extension = member.querySelector('[name="family_extension[]"]').value || null;
                    fm.relationship = member.querySelector('[name="family_relationship[]"]').value || null;
                    fm.age = member.querySelector('[name="family_age[]"]').value || null;
                    fm.monthly_salary = member.querySelector('[name="family_salary[]"]').value || null;
                    familyMembers.push(fm);
                });
                if (familyMembers.length > 0) payload.family_members = familyMembers;

                // Collect target sectors (associations)
                const targetSectors = [];
                document.querySelectorAll('input[name="target_sector[]"]:checked').forEach(checkbox => {
                    targetSectors.push(checkbox.value);
                });
                if (targetSectors.length > 0) payload.target_sectors = targetSectors;

                // Collect sub-categories
                const subCategories = [];
                document.querySelectorAll('input[name="sub_category[]"]:checked').forEach(checkbox => {
                    subCategories.push(checkbox.value);
                });
                if (subCategories.length > 0) payload.sub_categories = subCategories;

                const applicationIdVal = document.getElementById('application-id').value;
                if (applicationIdVal) payload.application_id = parseInt(applicationIdVal);

                const fd = new FormData();
                fd.append('payload', JSON.stringify(payload));

                // Append files by input name
                document.querySelectorAll('input[type="file"]').forEach(input => {
                    const files = input.files;
                    for (let i = 0; i < files.length; i++) {
                        fd.append(input.name, files[i], files[i].name);
                    }
                });

                const endpoint = applicationIdVal ? '../api/applications/update.php' : '../api/applications/create.php';

                const response = await fetch(endpoint, { method: 'POST', body: fd });
                const text = await response.text();
                let result = null;
                try {
                    result = JSON.parse(text);
                } catch (err) {
                    console.error('Non-JSON response on draft save:', text);
                    showMessage('error', 'Save Error', 'Server returned invalid response: ' + text);
                    return;
                }

                if (result.success) {
                    showMessage('success', 'Saved', 'Application saved as draft.', 'registration_category.php');
                } else {
                    showMessage('error', 'Save Error', result.message || 'Failed to save draft');
                }
            } catch (error) {
                showMessage('error', 'Save Error', 'An unexpected error occurred while saving draft.');
                console.error('Draft save error:', error);
            } finally {
                loadingOverlay.classList.add('hidden');
            }
        });

        // --- Family Logic ---
        const familyContainer = document.getElementById('family-container');

        function createMemberHTML(index) {
            return `
            <div class="bg-white rounded-xl shadow-sm border border-gray-200 p-6 md:p-8 member-card relative fade-in">
                <div class="flex items-center gap-4 mb-6">
                    <div class="h-6 w-6 relative">
                        <input type="checkbox" class="member-checkbox w-6 h-6 border-2 border-gray-300 rounded cursor-pointer accent-blue-900">
                    </div>
                    <h3 class="text-xl font-medium text-black member-title">Family Member ${index}</h3>
                </div>
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-5">
                    <div><label class="block text-sm font-bold mb-2 text-black">First Name <span class="text-orange-500">*</span></label><input type="text" name="family_first_name[]" class="w-full border border-gray-300 rounded-lg p-3 text-gray-700 h-12" required></div>
                    <div><label class="block text-sm font-bold mb-2 text-black">Middle Name/Middle Initial</label><input type="text" name="family_middle_name[]" class="w-full border border-gray-300 rounded-lg p-3 text-gray-700 h-12"></div>
                </div>
                <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-5">
                    <div class="md:col-span-2"><label class="block text-sm font-bold mb-2 text-black">Last Name <span class="text-orange-500">*</span></label><input type="text" name="family_last_name[]" class="w-full border border-gray-300 rounded-lg p-3 text-gray-700 h-12" required></div>
                    <div><label class="block text-sm font-bold mb-2 text-black">Extension</label><input type="text" name="family_extension[]" class="w-full border border-gray-300 rounded-lg p-3 text-gray-700 h-12"></div>
                </div>
                 <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                    <div><label class="block text-sm font-bold mb-2 text-black">Relationship <span class="text-orange-500">*</span></label><input type="text" name="family_relationship[]" class="w-full border border-gray-300 rounded-lg p-3 text-gray-700 h-12" required></div>
                    <div><label class="block text-sm font-bold mb-2 text-black">Age <span class="text-orange-500">*</span></label><input type="number" name="family_age[]" class="w-full border border-gray-300 rounded-lg p-3 text-gray-700 h-12" required></div>
                    <div><label class="block text-sm font-bold mb-2 text-black">Monthly Salary <span class="text-orange-500">*</span></label><input type="text" name="family_salary[]" class="w-full border border-gray-300 rounded-lg p-3 text-gray-700 h-12" required></div>
                </div>
            </div>`;
        }

        function addFamilyMember() {
            const currentCount = familyContainer.children.length + 1;
            const newMemberDiv = document.createElement('div');
            newMemberDiv.innerHTML = createMemberHTML(currentCount);
            familyContainer.appendChild(newMemberDiv.firstElementChild);
        }

        function deleteSelected() {
            const checkboxes = document.querySelectorAll('.member-checkbox:checked');
            if (checkboxes.length === 0) { 
                showMessage('info', 'No Selection', "Please check the box next to the family member you wish to delete."); 
                return; 
            }
            if (confirm(`Are you sure you want to remove ${checkboxes.length} family member(s)?`)) {
                checkboxes.forEach(checkbox => { 
                    const card = checkbox.closest('.member-card'); 
                    if (card) card.remove(); 
                });
                renumberMembers();
            }
        }

        function renumberMembers() {
            const titles = document.querySelectorAll('.member-title');
            titles.forEach((title, index) => { title.textContent = `Family Member ${index + 1}`; });
        }

        // Dummy showMessage function if not already present
        function showMessage(type, title, message, redirectUrl = null) {
            // In a real app, you'd use a modal library like SweetAlert2
            alert(`${title}: ${message}`);
            if (redirectUrl) {
                window.location.href = redirectUrl;
            }
        }
    </script>
</body>
</html>