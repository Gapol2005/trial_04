<?php include 'auth_check.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Senior Citizen List - OSCA</title>
    
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

    <div id="idModal" class="fixed inset-0 bg-gray-600 bg-opacity-50 flex items-center justify-center z-50 hidden">
        <div class="bg-white p-6 rounded-lg shadow-xl w-full max-w-sm">
            <h3 class="text-lg font-bold text-gray-900 mb-4">Enter Senior ID</h3>
            <p class="text-sm text-gray-600 mb-4">Please enter the Senior ID for the action you wish to perform.</p>
            <input type="text" id="seniorIdInput" class="w-full border border-gray-300 rounded-md px-3 py-2 mb-4 focus:ring-brandBlue focus:border-brandBlue text-sm" placeholder="Senior ID">
            <div class="flex justify-end space-x-3">
                <button id="cancelIdModal" class="bg-gray-300 text-gray-800 px-4 py-2 rounded-md text-sm font-semibold hover:bg-gray-400 transition">Cancel</button>
                <button id="goIdModal" class="bg-dashboardBlue text-white px-4 py-2 rounded-md text-sm font-semibold hover:bg-indigo-900 transition">Go</button>
            </div>
        </div>
    </div>

    <?php 
    // Sets the active page for the sidebar
    $current_page = basename($_SERVER['PHP_SELF']); 
    ?>

    <?php include 'sidebar.php'; ?>

    <div class="ml-64 w-full min-h-screen flex flex-col">
        
        <?php include 'header.php'; ?>

        <main class="flex-1 p-8 overflow-y-auto">
            
            <div class="bg-white p-6 rounded-lg shadow-sm mb-6 border border-gray-100">
                                
                <div class="mb-6">
                    <h2 class="text-3xl font-bold text-gray-900">Registration Category</h2>
                    <p class="text-gray-600 mt-1">Manage senior citizen ID applications and registrations</p>
                </div>

                <div class="grid grid-cols-1 md:grid-cols-4 gap-4">
                    <a href="new_id.php" class="bg-dashboardBlue text-white py-3 px-4 rounded-md font-bold hover:bg-indigo-900 transition shadow-md flex items-center justify-center gap-2">
                        <i class="fa-solid fa-plus"></i> New ID
                    </a>
                    <a href="javascript:void(0)" onclick="openIdModal('revalidation_update.php')" class="bg-dashboardBlue text-white py-3 px-4 rounded-md font-bold hover:bg-indigo-900 transition shadow-md flex items-center justify-center gap-2">
                        Revalidation/Update
                    </a>
                    <a href="javascript:void(0)" onclick="openIdModal('lost_damaged.php')" class="bg-dashboardBlue text-white py-3 px-4 rounded-md font-bold hover:bg-indigo-900 transition shadow-md flex items-center justify-center gap-2">
                        Lost/Damage ID
                    </a>
                    <a href="complaints.php" class="bg-dashboardBlue text-white py-3 px-4 rounded-md font-bold hover:bg-indigo-900 transition shadow-md flex items-center justify-center gap-2">
                        <i class="fa-solid fa-file-chart-line"></i> Report
                    </a>
                </div>

            </div>

            <div class="bg-white rounded-lg shadow-md p-6">
                                
                <h3 class="text-lg font-bold text-black mb-4">Senior Citizen List</h3>

                <!-- Age Category Filters -->
                <div class="flex flex-wrap items-center gap-2 mb-4">
                    <span class="text-gray-800 font-semibold mr-1 flex items-center gap-2">
                        <i class="fa-solid fa-filter text-indigo-700"></i> Age Categories:
                    </span>
                    <button data-age-group="" class="age-filter-btn bg-indigo-700 text-white px-5 py-2 rounded-full text-xs font-semibold shadow-sm hover:bg-indigo-800 transition">
                        All Ages
                    </button>
                    <button data-age-group="octogenarian" class="age-filter-btn bg-gray-200 text-gray-700 px-5 py-2 rounded-full text-xs font-semibold hover:bg-gray-300 transition">
                        Octogenarians (80-89)
                    </button>
                    <button data-age-group="nonagenarian" class="age-filter-btn bg-gray-200 text-gray-700 px-5 py-2 rounded-full text-xs font-semibold hover:bg-gray-300 transition">
                        Nonagenarians (90-99)
                    </button>
                    <button data-age-group="centenarian" class="age-filter-btn bg-gray-200 text-gray-700 px-5 py-2 rounded-full text-xs font-semibold hover:bg-gray-300 transition">
                        Centenarians (100+)
                    </button>
                </div>

                <div class="flex flex-col md:flex-row justify-between items-center gap-4 mb-4">
                    <div class="flex items-center gap-2 w-full md:w-auto">
                        <div class="relative w-full md:w-80">
                            <span class="absolute inset-y-0 left-0 flex items-center pl-3">
                                <i class="fa-solid fa-magnifying-glass text-gray-400"></i>
                            </span>
                            <input type="text" id="search-input" placeholder="Search By Name, OSCA ID, or ID" class="w-full pl-10 pr-4 py-2 border border-gray-300 rounded focus:outline-none focus:ring-1 focus:ring-dashboardBlue text-sm">
                        </div>
                        <button class="p-2 border border-gray-300 rounded hover:bg-gray-50 text-gray-600 transition">
                            <i class="fa-solid fa-filter"></i>
                        </button>
                    </div>

                    <div class="flex items-center gap-2">
                        <a href="registration_category.php" class="px-3 py-1 border border-gray-300 rounded text-sm text-gray-800 bg-white">Application List</a>
                        <span class="text-sm text-gray-600">Show</span>
                        <select id="limit-select" class="p-2 border border-gray-300 rounded text-sm">
                            <option value="10">10</option>
                            <option value="25">25</option>
                            <option value="50">50</option>
                            <option value="100">100</option>
                        </select>
                        <span class="text-sm text-gray-600">entries</span>
                    </div>
                </div>

                <div class="overflow-x-auto">
                    <table class="w-full text-left border-collapse">
                        <thead>
                            <tr class="text-black font-bold text-sm border-b border-gray-200 bg-gray-50">
                                <th class="pb-4 pl-4 pt-4">OSCA ID</th>
                                <th class="pb-4 pt-4">Name</th>
                                <th class="pb-4 pt-4">Birthdate</th>
                                <th class="pb-4 pt-4">Age</th>
                                <th class="pb-4 pt-4">Generians</th>
                                <th class="pb-4 pt-4">Barangay</th>
                                <th class="pb-4 pt-4">Status</th>
                                <th class="pb-4 pt-4 text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody id="seniors-table" class="text-gray-800 text-sm">
                            <!-- Senior rows will be inserted here by JavaScript -->
                        </tbody>
                    </table>
                </div>

                <div class="flex justify-between items-center mt-4">
                    <div id="pagination-summary" class="text-sm text-gray-600">
                        Loading...
                    </div>
                    <div id="pagination-controls" class="flex space-x-2">
                        <!-- Pagination buttons will be inserted here -->
                    </div>
                </div>
            </div>
        </main>
    </div>

    <script>
        // Global variable to store the target URL for the modal
        let currentModalActionUrl = '';
        
        // Pagination and search state
        let currentPage = 1;
        let currentLimit = 10;
        let currentSearch = '';
        let currentAgeGroup = '';
        let searchTimeout = null;

        document.addEventListener('DOMContentLoaded', function() {
            fetchSeniors();

            const idModal = document.getElementById('idModal');
            const seniorIdInput = document.getElementById('seniorIdInput');
            const cancelIdModal = document.getElementById('cancelIdModal');
            const goIdModal = document.getElementById('goIdModal');
            const searchInput = document.getElementById('search-input');
            const limitSelect = document.getElementById('limit-select');

            cancelIdModal.addEventListener('click', closeIdModal);
            goIdModal.addEventListener('click', goToPageWithId);
            seniorIdInput.addEventListener('keypress', function(event) {
                if (event.key === 'Enter') {
                    goToPageWithId();
                }
            });
            
            // Search input with debouncing
            searchInput.addEventListener('input', function() {
                clearTimeout(searchTimeout);
                searchTimeout = setTimeout(function() {
                    currentSearch = searchInput.value.trim();
                    currentPage = 1; // Reset to first page on new search
                    fetchSeniors();
                }, 500); // 500ms debounce
            });
            
            // Limit selector
            limitSelect.value = currentLimit; // Set initial value
            limitSelect.addEventListener('change', function() {
                currentLimit = parseInt(limitSelect.value);
                currentPage = 1; // Reset to first page when changing limit
                fetchSeniors();
            });
            
            // Age group filter buttons
            document.querySelectorAll('.age-filter-btn').forEach(btn => {
                btn.addEventListener('click', function() {
                    // Update active state
                    document.querySelectorAll('.age-filter-btn').forEach(b => {
                        b.classList.remove('bg-indigo-700', 'text-white', 'shadow-sm');
                        b.classList.add('bg-gray-200', 'text-gray-700');
                    });
                    this.classList.remove('bg-gray-200', 'text-gray-700');
                    this.classList.add('bg-indigo-700', 'text-white', 'shadow-sm');
                    
                    // Set filter
                    currentAgeGroup = this.getAttribute('data-age-group') || '';
                    currentPage = 1; // Reset to first page when changing filter
                    fetchSeniors();
                });
            });
        });

        function openIdModal(actionUrl) {
            currentModalActionUrl = actionUrl;
            document.getElementById('seniorIdInput').value = ''; // Clear previous input
            document.getElementById('idModal').classList.remove('hidden');
            document.getElementById('seniorIdInput').focus();
        }

        function closeIdModal() {
            document.getElementById('idModal').classList.add('hidden');
        }

        function goToPageWithId() {
            const seniorId = document.getElementById('seniorIdInput').value.trim();
            if (seniorId) {
                window.location.href = `${currentModalActionUrl}?id=${seniorId}`;
            } else {
                showMessage('error', 'Input Error', 'Please enter a Senior ID.');
            }
        }

        function fetchSeniors() {
            const loadingOverlay = document.getElementById('loading-overlay');
            loadingOverlay.classList.remove('hidden'); // Show spinner

            // Build query parameters
            const params = new URLSearchParams({
                page: currentPage,
                limit: currentLimit
            });
            
            if (currentSearch) {
                params.append('search', currentSearch);
            }
            
            if (currentAgeGroup) {
                params.append('age_group', currentAgeGroup);
            }

            fetch(`../api/seniors/list.php?${params.toString()}`)
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        const tableBody = document.getElementById('seniors-table');
                        tableBody.innerHTML = '';
                        
                        if (data.data && data.data.length > 0) {
                            data.data.forEach(senior => {
                                const fullName = `${senior.first_name || ''} ${senior.middle_name || ''} ${senior.last_name || ''}`.trim();
                                const birthdate = senior.birthdate ? new Date(senior.birthdate).toLocaleDateString() : 'N/A';
                                const age = senior.age || 'N/A';
                                
                                // Determine age category
                                let ageCategory = '';
                                if (age >= 100) {
                                    ageCategory = '<span class="ml-2 px-2 py-0.5 bg-purple-100 text-purple-800 text-xs font-semibold rounded-full">Centenarian</span>';
                                } else if (age >= 90) {
                                    ageCategory = '<span class="ml-2 px-2 py-0.5 bg-blue-100 text-blue-800 text-xs font-semibold rounded-full">Nonagenarian</span>';
                                } else if (age >= 80) {
                                    ageCategory = '<span class="ml-2 px-2 py-0.5 bg-indigo-100 text-indigo-800 text-xs font-semibold rounded-full">Octogenarian</span>';
                                }
                                
                                const barangay = senior.barangay_name || senior.barangay || 'N/A';
                                
                                // Determine status
                                let statusHtml = '';
                                if (senior.is_deceased == 1) {
                                    statusHtml = '<span class="bg-gray-100 text-gray-800 text-xs font-medium px-2.5 py-0.5 rounded-full">Deceased</span>';
                                } else if (senior.is_active == 1) {
                                    statusHtml = '<span class="bg-green-100 text-green-800 text-xs font-medium px-2.5 py-0.5 rounded-full">Active</span>';
                                } else {
                                    statusHtml = '<span class="bg-red-100 text-red-800 text-xs font-medium px-2.5 py-0.5 rounded-full">Inactive</span>';
                                }
                                
                                // Build actions based on status
                                let actionsHtml = '';
                                if (senior.is_deceased == 1) {
                                    // Show revive button for deceased seniors
                                    actionsHtml = `
                                        <div class="flex items-center justify-center gap-2 flex-wrap">
                                            <button class="px-3 py-1.5 border border-green-500 text-green-500 rounded hover:bg-green-50 transition text-xs font-semibold" onclick="reviveSenior(${senior.id})" title="Revive">
                                                <i class="fa-solid fa-heart-pulse"></i> Revive
                                            </button>
                                        </div>
                                    `;
                                } else {
                                    // Show normal actions for living seniors
                                    actionsHtml = `
                                        <div class="flex items-center justify-center gap-2 flex-wrap">
                                            <button class="px-3 py-1.5 border border-green-500 text-green-500 rounded hover:bg-green-50 transition text-xs font-semibold" onclick="revalidateSenior(${senior.id})" title="Revalidate">
                                                <i class="fa-solid fa-check-circle"></i> Revalidate
                                            </button>
                                            <button class="px-3 py-1.5 border border-yellow-500 text-yellow-500 rounded hover:bg-yellow-50 transition text-xs font-semibold" onclick="lostDamagedSenior(${senior.id})" title="Lost/Damaged">
                                                <i class="fa-solid fa-exclamation-triangle"></i> Lost/Damaged
                                            </button>
                                            <button class="px-3 py-1.5 border border-red-500 text-red-500 rounded hover:bg-red-50 transition text-xs font-semibold" onclick="deleteSenior(${senior.id})" title="Mark as Deceased">
                                                <i class="fa-solid fa-trash"></i> Delete
                                            </button>
                                        </div>
                                    `;
                                }
                                
                                const row = `
                                    <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                        <td class="py-4 pl-4 font-medium">${senior.osca_id || 'N/A'}</td>
                                        <td class="py-4 font-medium">${fullName}</td>
                                        <td class="py-4">${birthdate}</td>
                                        <td class="py-4 font-semibold">${age} years</td>
                                        <td class="py-4">${ageCategory || '<span class="text-gray-400 text-xs">-</span>'}</td>
                                        <td class="py-4">${barangay}</td>
                                        <td class="py-4">${statusHtml}</td>
                                        <td class="py-4 text-center">
                                            ${actionsHtml}
                                        </td>
                                    </tr>
                                `;
                                tableBody.innerHTML += row;
                            });
                        } else {
                            tableBody.innerHTML = `
                                <tr>
                                    <td colspan="8" class="py-8 text-center text-gray-500">
                                        <i class="fa-solid fa-inbox text-4xl mb-2 block"></i>
                                        No senior citizens found
                                    </td>
                                </tr>
                            `;
                        }
                        
                        // Update pagination
                        updatePagination(data.pagination);
                    } else {
                        showMessage('error', 'Fetch Error', data.message);
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    showMessage('error', 'Fetch Error', 'An unexpected error occurred while fetching senior citizens.');
                })
                .finally(() => {
                    loadingOverlay.classList.add('hidden'); // Hide spinner
                });
        }
        
        function updatePagination(pagination) {
            if (!pagination) return;
            
            const { page, limit, total, total_pages } = pagination;
            const start = total > 0 ? ((page - 1) * limit) + 1 : 0;
            const end = Math.min(page * limit, total);
            
            // Update summary
            const summaryEl = document.getElementById('pagination-summary');
            summaryEl.textContent = `Showing ${start} to ${end} of ${total} entries`;
            
            // Update pagination controls
            const controlsEl = document.getElementById('pagination-controls');
            controlsEl.innerHTML = '';
            
            if (total_pages <= 1) {
                return; // No pagination needed
            }
            
            // Previous button
            const prevBtn = document.createElement('button');
            prevBtn.className = `px-3 py-1 border border-gray-300 rounded text-sm hover:bg-gray-100 transition ${page === 1 ? 'opacity-50 cursor-not-allowed' : ''}`;
            prevBtn.textContent = 'Previous';
            prevBtn.disabled = page === 1;
            prevBtn.addEventListener('click', function() {
                if (page > 1) {
                    currentPage = page - 1;
                    fetchSeniors();
                }
            });
            controlsEl.appendChild(prevBtn);
            
            // Page numbers
            const maxPagesToShow = 5;
            let startPage = Math.max(1, page - Math.floor(maxPagesToShow / 2));
            let endPage = Math.min(total_pages, startPage + maxPagesToShow - 1);
            
            if (endPage - startPage < maxPagesToShow - 1) {
                startPage = Math.max(1, endPage - maxPagesToShow + 1);
            }
            
            if (startPage > 1) {
                const firstBtn = document.createElement('button');
                firstBtn.className = 'px-3 py-1 border border-gray-300 rounded text-sm hover:bg-gray-100 transition';
                firstBtn.textContent = '1';
                firstBtn.addEventListener('click', function() {
                    currentPage = 1;
                    fetchSeniors();
                });
                controlsEl.appendChild(firstBtn);
                
                if (startPage > 2) {
                    const ellipsis = document.createElement('span');
                    ellipsis.className = 'px-2 text-gray-500';
                    ellipsis.textContent = '...';
                    controlsEl.appendChild(ellipsis);
                }
            }
            
            for (let i = startPage; i <= endPage; i++) {
                const pageBtn = document.createElement('button');
                pageBtn.className = `px-3 py-1 border border-gray-300 rounded text-sm transition ${
                    i === page 
                        ? 'bg-dashboardBlue text-white' 
                        : 'hover:bg-gray-100'
                }`;
                pageBtn.textContent = i;
                pageBtn.addEventListener('click', function() {
                    currentPage = i;
                    fetchSeniors();
                });
                controlsEl.appendChild(pageBtn);
            }
            
            if (endPage < total_pages) {
                if (endPage < total_pages - 1) {
                    const ellipsis = document.createElement('span');
                    ellipsis.className = 'px-2 text-gray-500';
                    ellipsis.textContent = '...';
                    controlsEl.appendChild(ellipsis);
                }
                
                const lastBtn = document.createElement('button');
                lastBtn.className = 'px-3 py-1 border border-gray-300 rounded text-sm hover:bg-gray-100 transition';
                lastBtn.textContent = total_pages;
                lastBtn.addEventListener('click', function() {
                    currentPage = total_pages;
                    fetchSeniors();
                });
                controlsEl.appendChild(lastBtn);
            }
            
            // Next button
            const nextBtn = document.createElement('button');
            nextBtn.className = `px-3 py-1 border border-gray-300 rounded text-sm hover:bg-gray-100 transition ${page === total_pages ? 'opacity-50 cursor-not-allowed' : ''}`;
            nextBtn.textContent = 'Next';
            nextBtn.disabled = page === total_pages;
            nextBtn.addEventListener('click', function() {
                if (page < total_pages) {
                    currentPage = page + 1;
                    fetchSeniors();
                }
            });
            controlsEl.appendChild(nextBtn);
        }

        function reviveSenior(id) {
            if (!confirm('Are you sure you want to revive this senior citizen? This will mark them as active again.')) {
                return;
            }

            const loadingOverlay = document.getElementById('loading-overlay');
            loadingOverlay.classList.remove('hidden'); // Show spinner

            fetch('../api/seniors/save.php', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ id: id, update_type: 'revive' })
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    showMessage('success', 'Success', 'Senior citizen revived successfully!');
                    fetchSeniors(); // Refresh the list
                } else {
                    showMessage('error', 'Revive Error', data.message);
                }
            })
            .catch(error => showMessage('error', 'Revive Error', 'An unexpected error occurred while reviving senior.'))
            .finally(() => {
                loadingOverlay.classList.add('hidden'); // Hide spinner
            });
        }

        function revalidateSenior(id) {
            window.location.href = `revalidation_update.php?id=${id}`;
        }

        function lostDamagedSenior(id) {
            window.location.href = `lost_damaged.php?id=${id}`;
        }

        function deleteSenior(id) {
            if (!confirm('Are you sure you want to mark this senior citizen as deceased? This action cannot be undone.')) {
                return;
            }

            const loadingOverlay = document.getElementById('loading-overlay');
            loadingOverlay.classList.remove('hidden'); // Show spinner

            fetch('../api/seniors/save.php', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ id: id, update_type: 'deceased', deceased: { date: new Date().toISOString().slice(0, 10) } })
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    showMessage('success', 'Success', 'Senior citizen marked as deceased successfully!');
                    fetchSeniors(); // Refresh the list
                } else {
                    showMessage('error', 'Deletion Error', data.message);
                }
            })
            .catch(error => showMessage('error', 'Deletion Error', 'An unexpected error occurred while marking senior as deceased.'))
            .finally(() => {
                loadingOverlay.classList.add('hidden'); // Hide spinner
            });
        }

        function showMessage(type, title, message, redirectUrl = null) {
            alert(`${title}: ${message}`);
            if (redirectUrl) {
                window.location.href = redirectUrl;
            }
        }
    </script>
</body>
</html>