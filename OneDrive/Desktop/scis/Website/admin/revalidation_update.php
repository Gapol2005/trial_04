<?php 
include 'auth_check.php'; 
$current_page = basename($_SERVER['PHP_SELF']); 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Revalidation / Update - OSCA</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    fontFamily: {
                        sans: ['Inter', 'sans-serif'],
                    },
                    colors: {
                        dashboardBlue: '#1a008e', 
                        'osca-text': '#1a008e',
                        'osca-bg': '#f3f4f6',
                    }
                }
            }
        }
    </script>
    <link rel="stylesheet" href="../../css/style.css">
</head>
<body class="bg-osca-bg font-sans flex text-gray-800">
    <div id="loading-overlay" class="loading-overlay hidden">
        <div class="spinner"></div>
    </div>

    <?php include 'sidebar.php'; ?>

    <div class="ml-64 w-full min-h-screen flex flex-col">
        <?php include 'header.php'; ?>

        <main class="flex-1 p-8 overflow-y-auto">
            <div class="bg-white p-6 rounded-lg shadow-sm mb-6 border border-gray-100">
                <div class="flex flex-col md:flex-row gap-6 mb-6 items-start">
                    <div class="flex-grow">
                        <h2 class="text-3xl font-bold text-gray-900">Revalidation / Update</h2>
                        <p class="text-gray-600 mt-1">Renew Senior Citizen ID or update information</p>
                    </div>
                    <div class="flex items-center gap-4 w-full md:w-auto">
                        <label for="transaction_type" class="font-bold text-gray-800 text-sm md:text-base hidden md:block">Transaction Type:</label>
                        <div class="relative">
                            <select id="transaction_type" class="appearance-none border border-gray-300 rounded-md px-4 py-2.5 w-64 text-gray-700 bg-white hover:border-gray-400 focus:outline-none focus:ring-2 focus:ring-dashboardBlue pr-8 font-medium">
                                <option value="revalidation">Revalidation</option>
                                <option value="contact">Update Contact</option>
                                <option value="address">Change Address</option>
                                <option value="socioeconomic">Update Socioeconomic</option>
                                <option value="deceased">Mark Deceased</option>
                            </select>
                            <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                                <i class="fa-solid fa-chevron-down text-xs"></i>
                            </div>
                        </div>
                    </div>
                </div>

        <form id="revalidation-form">
            <input type="hidden" id="senior-id" name="id">
            <input type="hidden" id="contact-id" name="contact_id">
            <input type="hidden" id="update-type" name="update_type" value="revalidation">

            <div class="bg-white border border-gray-200 rounded-lg shadow-sm mb-6">
                <div class="bg-gradient-to-r from-indigo-50 to-indigo-100 border-b border-gray-200 px-6 py-4">
                    <h3 class="font-bold text-dashboardBlue text-lg flex items-center gap-2">
                        <i class="fa-solid fa-user text-indigo-700"></i> Senior Citizen Details
                    </h3>
                </div>
                <div class="px-6 py-5 grid grid-cols-1 md:grid-cols-2 gap-y-5 gap-x-6">
                    <div>
                        <label for="osca_id" class="block text-sm font-medium text-gray-700 mb-1">OSCA ID</label>
                        <input type="text" id="osca_id" name="osca_id" class="w-full border border-gray-300 rounded-md px-3 py-2 text-sm bg-gray-100" readonly>
                    </div>
                    <div>
                        <label for="full_name" class="block text-sm font-medium text-gray-700 mb-1">Full Name</label>
                        <input type="text" id="full_name" name="full_name" class="w-full border border-gray-300 rounded-md px-3 py-2 text-sm bg-gray-100" readonly>
                    </div>
                    <div>
                        <label for="birthdate" class="block text-sm font-medium text-gray-700 mb-1">Birthdate</label>
                        <input type="date" id="birthdate" name="birthdate" class="w-full border border-gray-300 rounded-md px-3 py-2 text-sm bg-gray-100" readonly>
                    </div>
                    <div>
                        <label for="gender" class="block text-sm font-medium text-gray-700 mb-1">Gender</label>
                        <input type="text" id="gender" name="gender" class="w-full border border-gray-300 rounded-md px-3 py-2 text-sm bg-gray-100" readonly>
                    </div>
                    <div id="status-display-group" class="md:col-span-2 hidden">
                        <label class="block text-sm font-medium text-gray-700 mb-1">Current Status</label>
                        <span id="current-status" class="px-3 py-1 rounded-full text-xs font-semibold"></span>
                    </div>
                </div>
            </div>

            <!-- Fields for Contact Update -->
            <div id="contact-fields" class="bg-white border border-gray-200 rounded-lg shadow-sm mb-6 hidden">
                <div class="bg-gradient-to-r from-indigo-50 to-indigo-100 border-b border-gray-200 px-6 py-4">
                    <h3 class="font-bold text-dashboardBlue text-lg flex items-center gap-2">
                        <i class="fa-solid fa-phone text-indigo-700"></i> Contact Information
                    </h3>
                </div>
                <div class="px-6 py-5 grid grid-cols-1 md:grid-cols-2 gap-y-5 gap-x-6">
                    <div>
                        <label for="mobile_number" class="block text-sm font-medium text-gray-700 mb-1">Mobile Number</label>
                        <input type="text" id="mobile_number" name="contact[mobile_number]" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                    <div>
                        <label for="telephone_number" class="block text-sm font-medium text-gray-700 mb-1">Telephone Number</label>
                        <input type="text" id="telephone_number" name="contact[telephone_number]" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                    <div class="md:col-span-2">
                        <label for="email" class="block text-sm font-medium text-gray-700 mb-1">Email</label>
                        <input type="email" id="email" name="contact[email]" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                </div>
            </div>

            <!-- Fields for Address Change -->
            <div id="address-fields" class="bg-white border border-gray-200 rounded-lg shadow-sm mb-6 hidden">
                <div class="bg-gradient-to-r from-indigo-50 to-indigo-100 border-b border-gray-200 px-6 py-4">
                    <h3 class="font-bold text-dashboardBlue text-lg flex items-center gap-2">
                        <i class="fa-solid fa-map-marker-alt text-indigo-700"></i> Address Information
                    </h3>
                </div>
                <div class="px-6 py-5 grid grid-cols-1 md:grid-cols-2 gap-y-5 gap-x-6">
                    <div>
                        <label for="house_number" class="block text-sm font-medium text-gray-700 mb-1">House Number</label>
                        <input type="text" id="house_number" name="address[house_number]" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                    <div>
                        <label for="street" class="block text-sm font-medium text-gray-700 mb-1">Street</label>
                        <input type="text" id="street" name="address[street]" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                    <div class="md:col-span-2">
                        <label for="address_barangay_id" class="block text-sm font-medium text-gray-700 mb-1">Barangay</label>
                        <select id="address_barangay_id" name="address[barangay_id]" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                            <!-- Options populated by JS -->
                        </select>
                    </div>
                </div>
            </div>

            <!-- Fields for Socioeconomic Update -->
            <div id="socioeconomic-fields" class="bg-white border border-gray-200 rounded-lg shadow-sm mb-6 hidden">
                <div class="bg-gradient-to-r from-indigo-50 to-indigo-100 border-b border-gray-200 px-6 py-4">
                    <h3 class="font-bold text-dashboardBlue text-lg flex items-center gap-2">
                        <i class="fa-solid fa-briefcase text-indigo-700"></i> Socioeconomic Details
                    </h3>
                </div>
                <div class="px-6 py-5 grid grid-cols-1 md:grid-cols-2 gap-y-5 gap-x-6">
                    <div>
                        <label for="educational_attainment_id" class="block text-sm font-medium text-gray-700 mb-1">Educational Attainment</label>
                        <select id="educational_attainment_id" name="updates[educational_attainment_id]" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                            <!-- Options populated by JS -->
                        </select>
                    </div>
                    <div>
                        <label for="monthly_salary" class="block text-sm font-medium text-gray-700 mb-1">Monthly Salary</label>
                        <input type="number" step="0.01" id="monthly_salary" name="updates[monthly_salary]" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                    <div>
                        <label for="occupation" class="block text-sm font-medium text-gray-700 mb-1">Occupation</label>
                        <input type="text" id="occupation" name="updates[occupation]" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                    <div>
                        <label for="other_skills" class="block text-sm font-medium text-gray-700 mb-1">Other Skills</label>
                        <input type="text" id="other_skills" name="updates[other_skills]" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                    <div>
                        <label for="socioeconomic_status_id" class="block text-sm font-medium text-gray-700 mb-1">Socioeconomic Status</label>
                        <select id="socioeconomic_status_id" name="updates[socioeconomic_status_id]" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                            <!-- Options populated by JS -->
                        </select>
                    </div>
                    <div>
                        <label for="mobility_level_id" class="block text-sm font-medium text-gray-700 mb-1">Mobility Level</label>
                        <select id="mobility_level_id" name="updates[mobility_level_id]" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                            <!-- Options populated by JS -->
                        </select>
                    </div>
                </div>
            </div>

            <!-- Fields for Deceased Status -->
            <div id="deceased-fields" class="bg-white border border-gray-200 rounded-lg shadow-sm mb-6 hidden">
                <div class="bg-gradient-to-r from-red-50 to-red-100 border-b border-gray-200 px-6 py-4">
                    <h3 class="font-bold text-red-700 text-lg flex items-center gap-2">
                        <i class="fa-solid fa-cross text-red-700"></i> Mark as Deceased
                    </h3>
                </div>
                <div class="px-6 py-5">
                    <div>
                        <label for="deceased_date" class="block text-sm font-medium text-gray-700 mb-1">Date of Decease</label>
                        <input type="date" id="deceased_date" name="deceased[date]" class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-brandBlue focus:border-brandBlue text-sm">
                    </div>
                </div>
            </div>

            <div id="form-error-message" class="text-red-500 text-sm mt-4 mb-4"></div>
            <div class="bg-white border border-gray-200 rounded-lg shadow-sm p-6 flex justify-end gap-3">
                <a href="senior_citizen_list.php" class="px-6 py-2.5 border border-gray-300 rounded-md font-semibold text-sm text-gray-700 hover:bg-gray-50 transition">
                    <i class="fa-solid fa-times mr-2"></i> Cancel
                </a>
                <button type="submit" class="bg-dashboardBlue text-white px-6 py-2.5 rounded-md font-semibold text-sm hover:bg-indigo-900 transition shadow-md flex items-center gap-2">
                    <i class="fa-solid fa-check"></i> Perform Update
                </button>
            </div>
        </form>
        </main>
    </div>

    <script>
        const loadingOverlay = document.getElementById('loading-overlay');
        const formErrorMessage = document.getElementById('form-error-message');
        const seniorIdInput = document.getElementById('senior-id');
        const contactIdInput = document.getElementById('contact-id');

        const transactionTypeSelect = document.getElementById('transaction_type');

        const contactFields = document.getElementById('contact-fields');
        const addressFields = document.getElementById('address-fields');
        const socioeconomicFields = document.getElementById('socioeconomic-fields');
        const deceasedFields = document.getElementById('deceased-fields');

        // Dropdowns
        // Note: gender is a text input, not a dropdown, so we'll fetch genders for lookup only
        let gendersData = []; // Store genders data for gender text lookup
        const educationalAttainmentSelect = document.getElementById('educational_attainment_id');
        const socioeconomicStatusSelect = document.getElementById('socioeconomic_status_id');
        const mobilityLevelSelect = document.getElementById('mobility_level_id');
        const addressBarangaySelect = document.getElementById('address_barangay_id');

        document.addEventListener('DOMContentLoaded', async function() {
            loadingOverlay.classList.remove('hidden'); // Show spinner on page load

            // Set a timeout to prevent infinite loading (30 seconds)
            const loadingTimeout = setTimeout(() => {
                if (!loadingOverlay.classList.contains('hidden')) {
                    loadingOverlay.classList.add('hidden');
                    showMessage('error', 'Timeout Error', 'The page is taking too long to load. Please refresh and try again.');
                    console.error('Page load timeout after 30 seconds');
                }
            }, 30000);

            try {
                // Fetch data for dropdowns (with null checks)
                const dropdownPromises = [];
                
                // Fetch genders for lookup (not a dropdown, but needed for display)
                dropdownPromises.push(
                    fetch('../api/genders/list.php')
                        .then(response => {
                            if (!response.ok) throw new Error(`HTTP ${response.status}`);
                            return response.json();
                        })
                        .then(data => {
                            if (data.success) {
                                gendersData = data.data;
                            }
                        })
                        .catch(error => {
                            console.error("Error fetching genders:", error);
                            // Continue even if genders fail
                        })
                );
                
                // Fetch other dropdowns only if elements exist
                if (educationalAttainmentSelect) {
                    dropdownPromises.push(fetchAndPopulateDropdown('../api/educational_attainment/list.php', educationalAttainmentSelect, 'Select Educational Attainment'));
                }
                if (socioeconomicStatusSelect) {
                    dropdownPromises.push(fetchAndPopulateDropdown('../api/socioeconomic_statuses/list.php', socioeconomicStatusSelect, 'Select Socioeconomic Status'));
                }
                if (mobilityLevelSelect) {
                    dropdownPromises.push(fetchAndPopulateDropdown('../api/mobility_levels/list.php', mobilityLevelSelect, 'Select Mobility Level'));
                }
                if (addressBarangaySelect) {
                    dropdownPromises.push(fetchAndPopulateDropdown('../api/barangays/list.php', addressBarangaySelect, 'Select Barangay'));
                }
                
                // Wait for dropdowns with timeout
                await Promise.race([
                    Promise.all(dropdownPromises),
                    new Promise((_, reject) => setTimeout(() => reject(new Error('Dropdown fetch timeout')), 15000))
                ]).catch(error => {
                    console.error("Error or timeout fetching dropdown data:", error);
                    // Continue anyway - some dropdowns might have loaded
                });
            } catch (error) {
                console.error("Error fetching dropdown data:", error);
                // Continue anyway - we can still load senior details
            }

            const urlParams = new URLSearchParams(window.location.search);
            const seniorId = urlParams.get('id');

            if (seniorId) {
                seniorIdInput.value = seniorId;
                try {
                    await fetchSeniorDetails(seniorId);
                } catch (error) {
                    console.error('Error fetching senior details:', error);
                    // Error already handled in fetchSeniorDetails
                }
            } else {
                showMessage('error', 'Error', "No Senior ID provided for revalidation/update.");
                loadingOverlay.classList.add('hidden');
                clearTimeout(loadingTimeout);
                return;
            }

            transactionTypeSelect.addEventListener('change', showHideFields);
            showHideFields(); // Initial display

            clearTimeout(loadingTimeout);
            loadingOverlay.classList.add('hidden'); // Hide spinner after initial data load
        });

        async function fetchAndPopulateDropdown(apiEndpoint, selectElement, defaultOptionText) {
            if (!selectElement) {
                console.warn(`Select element not found for ${apiEndpoint}`);
                return;
            }
            
            try {
                const response = await fetch(apiEndpoint);
                if (!response.ok) {
                    throw new Error(`HTTP error! status: ${response.status}`);
                }
                const data = await response.json();
                if (data.success && Array.isArray(data.data)) {
                    selectElement.innerHTML = `<option value="">${defaultOptionText}</option>`;
                    data.data.forEach(item => {
                        selectElement.innerHTML += `<option value="${item.id}">${item.name || item.level || item.category}</option>`;
                    });
                } else {
                    console.error(`Error fetching data from ${apiEndpoint}:`, data.message || 'Unknown error');
                }
            } catch (error) {
                console.error(`Error fetching dropdown from ${apiEndpoint}:`, error);
                // Don't show message for every failed dropdown, just log it
            }
        }

        async function fetchSeniorDetails(id) {
            loadingOverlay.classList.remove('hidden');
            
            // Add timeout for the fetch request (20 seconds)
            const controller = new AbortController();
            const timeoutId = setTimeout(() => controller.abort(), 20000);
            
            try {
                const response = await fetch(`../api/seniors/details.php?id=${id}`, {
                    signal: controller.signal
                });
                clearTimeout(timeoutId);
                
                if (!response.ok) {
                    throw new Error(`HTTP error! status: ${response.status}`);
                }
                const data = await response.json();
                if (data.success) {
                    // API returns data.data.senior, not data.data directly
                    const senior = data.data.senior || data.data;
                    
                    if (!senior) {
                        throw new Error('Senior data not found in response');
                    }
                    
                    document.getElementById('osca_id').value = senior.osca_id || '';
                    document.getElementById('full_name').value = `${senior.first_name || ''} ${senior.middle_name ? senior.middle_name + ' ' : ''}${senior.last_name || ''} ${senior.extension ? senior.extension : ''}`.trim();
                    document.getElementById('birthdate').value = senior.birthdate || '';
                    
                    // Set gender text from gendersData lookup
                    if (senior.gender_id && gendersData.length > 0) {
                        const genderObj = gendersData.find(g => g.id == senior.gender_id);
                        document.getElementById('gender').value = genderObj ? (genderObj.name || '') : (senior.gender || '');
                    } else if (senior.gender) {
                        document.getElementById('gender').value = senior.gender;
                    }

                    // Store contact_id if available for updates
                    if (senior.contact_id) {
                        contactIdInput.value = senior.contact_id;
                    }

                    // Pre-fill contact fields if available
                    document.getElementById('mobile_number').value = senior.mobile_number || '';
                    document.getElementById('telephone_number').value = senior.telephone_number || '';
                    document.getElementById('email').value = senior.email || '';

                    // Pre-fill address fields
                    document.getElementById('house_number').value = senior.house_number || '';
                    document.getElementById('street').value = senior.street || '';
                    document.getElementById('address_barangay_id').value = senior.barangay_id;

                    // Pre-fill socioeconomic fields
                    document.getElementById('educational_attainment_id').value = senior.educational_attainment_id || '';
                    document.getElementById('monthly_salary').value = senior.monthly_salary || '';
                    document.getElementById('occupation').value = senior.occupation || '';
                    document.getElementById('other_skills').value = senior.other_skills || '';
                    document.getElementById('socioeconomic_status_id').value = senior.socioeconomic_status_id || '';
                    document.getElementById('mobility_level_id').value = senior.mobility_level_id || '';
                    
                    // Display status
                    const statusDisplayGroup = document.getElementById('status-display-group');
                    const currentStatusSpan = document.getElementById('current-status');
                    statusDisplayGroup.classList.remove('hidden');
                    if (senior.is_deceased == 1) {
                        currentStatusSpan.textContent = 'Deceased';
                        currentStatusSpan.className = 'px-3 py-1 rounded-full text-xs font-semibold bg-gray-100 text-gray-800';
                    } else if (senior.is_active == 1) {
                        currentStatusSpan.textContent = 'Active';
                        currentStatusSpan.className = 'px-3 py-1 rounded-full text-xs font-semibold bg-green-100 text-green-800';
                    } else {
                        currentStatusSpan.textContent = 'Inactive';
                        currentStatusSpan.className = 'px-3 py-1 rounded-full text-xs font-semibold bg-red-100 text-red-800';
                    }

                } else {
                    showMessage('error', 'Fetch Error', data.message || 'Failed to fetch senior details');
                }
            } catch (error) {
                if (error.name === 'AbortError') {
                    showMessage('error', 'Timeout Error', 'The request took too long. Please check your connection and try again.');
                } else {
                    showMessage('error', 'Fetch Error', 'An unexpected error occurred while fetching details. ' + (error.message || ''));
                }
                console.error('Error fetching senior details:', error);
            } finally {
                loadingOverlay.classList.add('hidden');
            }
        }
        
        // Define showMessage function if not already present
        function showMessage(type, title, message, redirectUrl = null) {
            // Use a more user-friendly alert or modal
            alert(`${title}: ${message}`);
            if (redirectUrl) {
                window.location.href = redirectUrl;
            }
        }

        function showHideFields() {
            const selectedType = transactionTypeSelect.value;
            document.getElementById('update-type').value = selectedType;

            contactFields.classList.add('hidden');
            addressFields.classList.add('hidden');
            socioeconomicFields.classList.add('hidden');
            deceasedFields.classList.add('hidden');

            // Reset required for dynamic fields
            document.querySelectorAll('#revalidation-form [required]').forEach(el => el.removeAttribute('required'));
            
            if (selectedType === 'revalidation') {
                // No specific fields for revalidation apart from senior details
            } else if (selectedType === 'contact') {
                contactFields.classList.remove('hidden');
                document.getElementById('mobile_number').setAttribute('required', 'required');
            } else if (selectedType === 'address') {
                addressFields.classList.remove('hidden');
                document.getElementById('address_barangay_id').setAttribute('required', 'required');
            } else if (selectedType === 'socioeconomic') {
                socioeconomicFields.classList.remove('hidden');
                document.getElementById('educational_attainment_id').setAttribute('required', 'required');
            } else if (selectedType === 'deceased') {
                deceasedFields.classList.remove('hidden');
                document.getElementById('deceased_date').setAttribute('required', 'required');
            }
        }

        document.getElementById('revalidation-form').addEventListener('submit', async function(e) {
            e.preventDefault();
            formErrorMessage.textContent = "";

            const seniorId = seniorIdInput.value;
            if (!seniorId) {
                showMessage('error', 'Error', "Senior ID is missing. Cannot perform update.");
                return;
            }

            loadingOverlay.classList.remove('hidden'); // Show spinner

            const formData = new FormData(this);
            const data = {
                id: seniorId,
                update_type: formData.get('update_type')
            };

            // Conditionally add nested objects based on update_type
            if (data.update_type === 'contact') {
                data.contact = {
                    mobile_number: formData.get('contact[mobile_number]'),
                    telephone_number: formData.get('contact[telephone_number]'),
                    email: formData.get('contact[email]')
                };
                data.contact_id = contactIdInput.value; // Pass existing contact_id for update
            } else if (data.update_type === 'address') {
                data.address = {
                    house_number: formData.get('address[house_number]'),
                    street: formData.get('address[street]'),
                    barangay_id: formData.get('address[barangay_id]')
                };
                data.barangay_id = formData.get('address[barangay_id]'); // Also update senior_citizens.barangay_id
            } else if (data.update_type === 'socioeconomic') {
                data.updates = {
                    educational_attainment_id: formData.get('updates[educational_attainment_id]'),
                    monthly_salary: formData.get('updates[monthly_salary]'),
                    occupation: formData.get('updates[occupation]'),
                    other_skills: formData.get('updates[other_skills]'),
                    socioeconomic_status_id: formData.get('updates[socioeconomic_status_id]'),
                    mobility_level_id: formData.get('updates[mobility_level_id]')
                };
            } else if (data.update_type === 'deceased') {
                data.deceased = {
                    date: formData.get('deceased[date]')
                };
            }
            // For 'revalidation' type, no specific fields are needed, only the senior ID

            try {
                const response = await fetch('../api/seniors/save.php', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify(data)
                });
                const result = await response.json();
                if (result.success) {
                    showMessage('success', 'Success', 'Senior citizen updated successfully!', 'senior_citizen_list.php');
                } else {
                    showMessage('error', 'Update Error', result.message);
                }
            } catch (error) {
                showMessage('error', 'Update Error', 'An unexpected error occurred.');
                console.error('Error:', error);
            } finally {
                loadingOverlay.classList.add('hidden'); // Hide spinner
            }
        });
    </script>
</body>
</html>