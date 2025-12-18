<?php include 'auth_check.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Category - OSCA</title>
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
    <link rel="stylesheet" href="../css/style.css">
</head>
<body class="bg-osca-bg font-sans flex text-gray-800">
    <div id="loading-overlay" class="loading-overlay hidden">
        <div class="spinner"></div>
    </div>
    
    <?php
    // Sets the active page for sidebar highlighting
    $current_page = basename($_SERVER['PHP_SELF']);
    ?>
    
    <?php include 'sidebar.php'; ?>
    
    <div class="ml-64 w-full min-h-screen flex flex-col">
        <?php include 'header.php'; ?>
        
        <main class="flex-1 p-8 overflow-y-auto">
            <!-- Header Section -->
            <div class="bg-white p-6 rounded-lg shadow-sm mb-6 border border-gray-100">
                <div class="mb-6">
                    <h2 class="text-3xl font-bold text-gray-900">Registration Category</h2>
                    <p class="text-gray-600 mt-1">Manage senior citizen ID applications and registrations</p>
                </div>
                
                <div class="grid grid-cols-1 md:grid-cols-4 gap-4">
                    <a href="new_id.php" class="bg-gradient-to-r from-indigo-700 to-indigo-800 text-white py-3 px-4 rounded-lg font-bold hover:from-indigo-800 hover:to-indigo-900 transition shadow-md flex items-center justify-center gap-2">
                        <i class="fa-solid fa-plus"></i> New ID
                    </a>
                    <a href="revalidation_update.php" class="bg-gradient-to-r from-indigo-700 to-indigo-800 text-white py-3 px-4 rounded-lg font-bold hover:from-indigo-800 hover:to-indigo-900 transition shadow-md flex items-center justify-center gap-2">
                        <i class="fa-solid fa-rotate"></i> Revalidation/Update
                    </a>
                    <a href="lost_damaged.php" class="bg-gradient-to-r from-indigo-700 to-indigo-800 text-white py-3 px-4 rounded-lg font-bold hover:from-indigo-800 hover:to-indigo-900 transition shadow-md flex items-center justify-center gap-2">
                        <i class="fa-solid fa-exclamation-triangle"></i> Lost/Damaged
                    </a>
                    <a href="complaints.php" class="bg-gradient-to-r from-indigo-700 to-indigo-800 text-white py-3 px-4 rounded-lg font-bold hover:from-indigo-800 hover:to-indigo-900 transition shadow-md flex items-center justify-center gap-2">
                        <i class="fa-solid fa-file-chart-line"></i> Report
                    </a>
                </div>
            </div>
            
            <!-- Application List Section -->
            <div class="bg-white rounded-lg shadow-md p-6 border border-gray-200">
                <div class="flex items-center justify-between mb-6">
                    <h3 class="text-xl font-bold text-gray-900 flex items-center gap-2">
                        <i class="fa-solid fa-list text-indigo-700"></i> Application List
                    </h3>
                </div>
                
                <!-- Search and Actions Bar -->
                <div class="flex flex-col md:flex-row justify-between items-center gap-4 mb-6">
                    <div class="flex items-center gap-2 w-full md:w-auto">
                        <div class="relative w-full md:w-96">
                            <span class="absolute inset-y-0 left-0 flex items-center pl-3">
                                <i class="fa-solid fa-magnifying-glass text-gray-400"></i>
                            </span>
                            <input type="text" id="search-input" placeholder="Search by name or application ID" class="w-full pl-10 pr-4 py-2.5 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent text-sm">
                        </div>
                        <button id="refresh-btn" class="p-2.5 border border-gray-300 rounded-lg hover:bg-gray-50 text-gray-600 transition" title="Refresh">
                            <i class="fa-solid fa-rotate"></i>
                        </button>
                    </div>
                    
                    <div class="flex gap-2">
                        <a href="senior_citizen_list.php" class="px-4 py-2.5 border border-gray-400 rounded-lg text-sm font-medium hover:bg-gray-50 text-gray-700 transition flex items-center gap-2">
                            <i class="fa-solid fa-users"></i> Senior Citizen List
                        </a>
                        <button class="px-4 py-2.5 border border-gray-400 rounded-lg text-sm font-medium hover:bg-gray-50 text-gray-700 flex items-center gap-2 transition">
                            <i class="fa-regular fa-file-excel text-green-600"></i> Export to Excel
                        </button>
                    </div>
                </div>
                
                <!-- Quick Filters -->
                <div class="flex flex-wrap items-center gap-2 mb-6">
                    <span class="text-gray-800 font-semibold mr-1 flex items-center gap-2">
                        <i class="fa-solid fa-filter text-indigo-700"></i> Quick Filters:
                    </span>
                    <button data-filter="" class="filter-btn bg-indigo-700 text-white px-5 py-2 rounded-full text-xs font-semibold shadow-sm hover:bg-indigo-800 transition">
                        All
                    </button>
                    <button data-filter="Pending" class="filter-btn bg-gray-200 text-gray-700 px-5 py-2 rounded-full text-xs font-semibold hover:bg-gray-300 transition">
                        Pending
                    </button>
                    <button data-filter="For Verification" class="filter-btn bg-gray-200 text-gray-700 px-5 py-2 rounded-full text-xs font-semibold hover:bg-gray-300 transition">
                        For Verification
                    </button>
                    <button data-filter="Approved" class="filter-btn bg-gray-200 text-gray-700 px-5 py-2 rounded-full text-xs font-semibold hover:bg-gray-300 transition">
                        Approved
                    </button>
                    <button data-filter="Completed" class="filter-btn bg-gray-200 text-gray-700 px-5 py-2 rounded-full text-xs font-semibold hover:bg-gray-300 transition">
                        Completed
                    </button>
                </div>
                
                <!-- Table -->
                <div class="overflow-x-auto rounded-lg border border-gray-200">
                    <table class="w-full text-left border-collapse">
                        <thead class="bg-gray-50">
                            <tr class="text-gray-700 font-bold text-sm border-b border-gray-200">
                                <th class="pb-4 pl-4 pt-4">Application ID</th>
                                <th class="pb-4 pt-4">Name</th>
                                <th class="pb-4 pt-4">Status</th>
                                <th class="pb-4 pt-4">Type</th>
                                <th class="pb-4 pt-4">Age</th>
                                <th class="pb-4 pt-4 text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="text-gray-800 text-sm" id="applications-table-body">
                            <tr>
                                <td colspan="6" class="text-center py-8 text-gray-500">
                                    <i class="fa-solid fa-spinner fa-spin text-2xl mb-2 block"></i>
                                    Loading applications...
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                
                <!-- Pagination -->
                <div id="pagination-controls" class="flex justify-between items-center mt-6 text-sm text-gray-600 border-t border-gray-200 pt-6">
                    <div id="pagination-summary" class="font-medium">
                        Showing 0 to 0 of 0 Applications
                    </div>
                    <div class="flex items-center gap-2">
                        <button id="prev-page-button" class="px-4 py-2 border border-gray-300 rounded-lg hover:bg-gray-50 flex items-center gap-2 transition disabled:opacity-50 disabled:cursor-not-allowed" disabled>
                            <i class="fa-solid fa-angles-left text-xs"></i> Previous
                        </button>
                        <div id="page-numbers" class="flex space-x-1"></div>
                        <button id="next-page-button" class="px-4 py-2 border border-gray-300 rounded-lg hover:bg-gray-50 flex items-center gap-2 transition disabled:opacity-50 disabled:cursor-not-allowed" disabled>
                            Next <i class="fa-solid fa-angles-right text-xs"></i>
                        </button>
                    </div>
                </div>
            </div>
        </main>
    </div>

    <!-- Error Modal -->
    <div id="error-modal" class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center p-4 z-50 hidden">
        <div class="bg-white rounded-lg shadow-xl p-6 max-w-sm w-full mx-auto">
            <div class="flex justify-between items-center mb-4">
                <h3 class="text-xl font-bold text-red-600 flex items-center gap-2">
                    <i class="fa-solid fa-exclamation-circle"></i> Error!
                </h3>
                <button id="close-error-modal" class="text-gray-400 hover:text-gray-600 text-2xl leading-none">&times;</button>
            </div>
            <div class="text-gray-700 mb-4">
                <p id="error-modal-message"></p>
                <p id="error-modal-db-status" class="text-sm mt-2"></p>
                <p id="error-modal-api-status" class="text-sm"></p>
            </div>
            <div class="flex justify-end">
                <button id="ok-error-modal" class="bg-red-500 text-white px-4 py-2 rounded-lg hover:bg-red-600 transition">OK</button>
            </div>
        </div>
    </div>

    <script>
        let currentPage = 1;
        let currentLimit = 10;
        let currentSearch = '';
        let currentStatus = '';
        let currentType = '';
        let searchTimeout = null;

        // Status mapping for filters
        const statusMapping = {
            'Pending': 'Pending',
            'For Verification': 'For Verification',
            'Approved': 'Approved',
            'Completed': 'Claimed' // Map Completed to Claimed status
        };

        document.addEventListener('DOMContentLoaded', function() {
            fetchApplications();

            // Error modal event listeners
            const errorModal = document.getElementById('error-modal');
            const closeErrorModalBtn = document.getElementById('close-error-modal');
            const okErrorModalBtn = document.getElementById('ok-error-modal');

            if (closeErrorModalBtn) {
                closeErrorModalBtn.addEventListener('click', hideErrorModal);
            }
            if (okErrorModalBtn) {
                okErrorModalBtn.addEventListener('click', hideErrorModal);
            }
            if (errorModal) {
                errorModal.addEventListener('click', function(event) {
                    if (event.target === errorModal) {
                        hideErrorModal();
                    }
                });
            }

            // Search input with debouncing
            const searchInput = document.getElementById('search-input');
            searchInput.addEventListener('input', function() {
                clearTimeout(searchTimeout);
                searchTimeout = setTimeout(function() {
                    currentSearch = searchInput.value.trim();
                    currentPage = 1;
                    fetchApplications();
                }, 500);
            });

            // Refresh button
            document.getElementById('refresh-btn').addEventListener('click', function() {
                currentSearch = searchInput.value.trim();
                currentPage = 1;
                fetchApplications();
            });

            // Filter buttons
            document.querySelectorAll('.filter-btn').forEach(btn => {
                btn.addEventListener('click', function() {
                    // Update active state
                    document.querySelectorAll('.filter-btn').forEach(b => {
                        b.classList.remove('bg-indigo-700', 'text-white', 'shadow-sm');
                        b.classList.add('bg-gray-200', 'text-gray-700');
                    });
                    this.classList.remove('bg-gray-200', 'text-gray-700');
                    this.classList.add('bg-indigo-700', 'text-white', 'shadow-sm');
                    
                    // Set filter
                    const filter = this.getAttribute('data-filter');
                    currentStatus = filter ? statusMapping[filter] || filter : '';
                    currentPage = 1;
                    fetchApplications();
                });
            });

            // Pagination buttons
            document.getElementById('prev-page-button').addEventListener('click', function() {
                if (currentPage > 1) {
                    currentPage--;
                    fetchApplications();
                }
            });

            document.getElementById('next-page-button').addEventListener('click', function() {
                currentPage++;
                fetchApplications();
            });
        });

        function showErrorModal(message, isDbConnected = null, isApiWorking = null) {
            const errorModal = document.getElementById('error-modal');
            const errorMessageElem = document.getElementById('error-modal-message');
            const dbStatusElem = document.getElementById('error-modal-db-status');
            const apiStatusElem = document.getElementById('error-modal-api-status');

            errorMessageElem.textContent = message;

            if (isDbConnected !== null) {
                dbStatusElem.textContent = 'Database Connected: ' + (isDbConnected ? 'Yes' : 'No');
                dbStatusElem.style.color = isDbConnected ? 'green' : 'red';
            } else {
                dbStatusElem.textContent = '';
            }

            if (isApiWorking !== null) {
                apiStatusElem.textContent = 'API Working: ' + (isApiWorking ? 'Yes' : 'No');
                apiStatusElem.style.color = isApiWorking ? 'green' : 'red';
            } else {
                apiStatusElem.textContent = '';
            }
            
            errorModal.classList.remove('hidden');
        }

        function hideErrorModal() {
            const errorModal = document.getElementById('error-modal');
            errorModal.classList.add('hidden');
        }

        async function fetchApplications() {
            const loadingOverlay = document.getElementById('loading-overlay');
            loadingOverlay.classList.remove('hidden');

            const applicationsTableBody = document.getElementById('applications-table-body');
            applicationsTableBody.innerHTML = `<tr><td colspan="6" class="text-center py-8 text-gray-500"><i class="fa-solid fa-spinner fa-spin text-2xl mb-2 block"></i>Loading applications...</td></tr>`;

            let url = `../api/applications/list.php?page=${currentPage}&limit=${currentLimit}`;
            if (currentSearch) url += `&search=${encodeURIComponent(currentSearch)}`;
            if (currentStatus) url += `&status=${encodeURIComponent(currentStatus)}`;
            if (currentType) url += `&type=${encodeURIComponent(currentType)}`;

            try {
                const response = await fetch(url);
                
                if (!response.ok) {
                    const errorText = await response.text();
                    showErrorModal('HTTP Error fetching applications: ' + response.status + ' - ' + errorText.substring(0, 100) + '...', false, false);
                    applicationsTableBody.innerHTML = `<tr><td colspan="6" class="text-center py-8 text-red-500"><i class="fa-solid fa-exclamation-triangle text-2xl mb-2 block"></i>Failed to load applications.</td></tr>`;
                    return;
                }

                const data = await response.json();

                if (data.success) {
                    applicationsTableBody.innerHTML = '';

                    if (data.data && data.data.length > 0) {
                        data.data.forEach(app => {
                            const color = app.status_color || '#6b7280';
                            const statusClass = getStatusClass(app.status);
                            const row = `
                                <tr class="border-b border-gray-100 hover:bg-indigo-50/30 transition">
                                    <td class="pl-4 py-4 font-medium text-gray-800">${app.application_number || 'N/A'}</td>
                                    <td class="py-4">${app.senior_name || 'N/A'}</td>
                                    <td class="py-4">
                                        <span class="${statusClass} px-3 py-1 rounded-full text-xs font-semibold">
                                            ${app.status || 'N/A'}
                                        </span>
                                    </td>
                                    <td class="py-4">${app.application_type || 'N/A'}</td>
                                    <td class="py-4">${app.age || 'N/A'}</td>
                                    <td class="py-4 text-center">
                                        <div class="flex items-center justify-center gap-2">
                                            <a href="application_view.php?id=${app.id}" class="px-3 py-1.5 bg-indigo-100 text-indigo-700 rounded-lg hover:bg-indigo-200 transition text-xs font-semibold flex items-center gap-1" title="View">
                                                <i class="fa-solid fa-eye"></i> View
                                            </a>
                                            <a href="#" data-id="${app.id}" class="delete-application px-3 py-1.5 bg-red-100 text-red-700 rounded-lg hover:bg-red-200 transition text-xs font-semibold flex items-center gap-1" title="Delete">
                                                <i class="fa-solid fa-trash"></i> Delete
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            `;
                            applicationsTableBody.innerHTML += row;
                        });
                        
                        // Attach delete handlers
                        applicationsTableBody.querySelectorAll('.delete-application').forEach(el => {
                            el.addEventListener('click', async function(ev) {
                                ev.preventDefault();
                                const id = this.getAttribute('data-id');
                                if (!confirm('Are you sure you want to delete this application? This cannot be undone.')) return;
                                try {
                                    const res = await fetch('../api/applications/delete.php', {
                                        method: 'POST',
                                        headers: { 'Content-Type': 'application/json' },
                                        body: JSON.stringify({ id: id })
                                    });
                                    const json = await res.json();
                                    if (json.success) {
                                        fetchApplications();
                                    } else {
                                        showErrorModal('Failed to delete: ' + (json.message || 'Unknown'));
                                    }
                                } catch (err) {
                                    showErrorModal('Network error deleting application: ' + err.message);
                                }
                            });
                        });
                        
                        if (data.pagination) {
                            updatePaginationControls(data.pagination.total, data.pagination.pages || Math.ceil(data.pagination.total / currentLimit), data.pagination.page || currentPage, data.pagination.limit || currentLimit);
                        }
                    } else {
                        applicationsTableBody.innerHTML = `
                            <tr>
                                <td colspan="6" class="text-center py-12 text-gray-500">
                                    <i class="fa-solid fa-inbox text-4xl mb-3 block"></i>
                                    <p class="text-lg font-medium">No applications found</p>
                                    <p class="text-sm mt-1">Try adjusting your search or filters</p>
                                </td>
                            </tr>
                        `;
                        updatePaginationControls(0, 0, 0, 0);
                    }
                } else {
                    let isDbConnected = true;
                    let apiMessage = data.message || 'An unknown API error occurred while fetching applications.';
                    if (apiMessage.includes("Database connection error") || apiMessage.includes("SQLSTATE")) {
                        isDbConnected = false;
                    }
                    showErrorModal(apiMessage, isDbConnected, true);
                    applicationsTableBody.innerHTML = `<tr><td colspan="6" class="text-center py-8 text-red-500"><i class="fa-solid fa-exclamation-triangle text-2xl mb-2 block"></i>Failed to load applications.</td></tr>`;
                    updatePaginationControls(0, 0, 0, 0);
                }
            } catch (error) {
                console.error('Error fetching applications:', error);
                applicationsTableBody.innerHTML = `<tr><td colspan="6" class="text-center py-8 text-red-500"><i class="fa-solid fa-exclamation-triangle text-2xl mb-2 block"></i>Network or parsing error loading applications.</td></tr>`;
                showErrorModal('Network or parsing error loading applications: ' + error.message, false, false);
                updatePaginationControls(0, 0, 0, 0);
            } finally {
                loadingOverlay.classList.add('hidden');
            }
        }

        function getStatusClass(status) {
            const statusLower = (status || '').toLowerCase();
            if (statusLower.includes('pending') || statusLower.includes('draft')) {
                return 'bg-yellow-100 text-yellow-800';
            } else if (statusLower.includes('verification')) {
                return 'bg-blue-100 text-blue-800';
            } else if (statusLower.includes('approved') || statusLower.includes('verified')) {
                return 'bg-green-100 text-green-800';
            } else if (statusLower.includes('completed') || statusLower.includes('claimed') || statusLower.includes('printed')) {
                return 'bg-purple-100 text-purple-800';
            } else {
                return 'bg-gray-100 text-gray-800';
            }
        }

        function updatePaginationControls(totalItems, totalPages, currentPageNum, limit) {
            const prevButton = document.getElementById('prev-page-button');
            const nextButton = document.getElementById('next-page-button');
            const pageNumbersContainer = document.getElementById('page-numbers');
            const paginationSummary = document.getElementById('pagination-summary');

            prevButton.disabled = currentPageNum <= 1;
            nextButton.disabled = currentPageNum >= totalPages;

            pageNumbersContainer.innerHTML = '';
            const maxPageButtons = 5;

            if (totalPages <= 1) {
                paginationSummary.textContent = `Showing ${totalItems > 0 ? 1 : 0} to ${Math.min(limit, totalItems)} of ${totalItems} Applications`;
                return;
            }

            let startPage = Math.max(1, currentPageNum - Math.floor(maxPageButtons / 2));
            let endPage = Math.min(totalPages, startPage + maxPageButtons - 1);

            if (endPage - startPage + 1 < maxPageButtons) {
                startPage = Math.max(1, endPage - maxPageButtons + 1);
            }

            if (startPage > 1) {
                pageNumbersContainer.innerHTML += `<button class="px-3 py-1 border border-gray-300 rounded-lg text-sm hover:bg-gray-100 transition" onclick="goToPage(1)">1</button>`;
                if (startPage > 2) pageNumbersContainer.innerHTML += `<span class="px-2 text-gray-400">...</span>`;
            }

            for (let i = startPage; i <= endPage; i++) {
                const buttonClass = `px-3 py-1 border border-gray-300 rounded-lg text-sm transition ${
                    i === currentPageNum 
                        ? 'bg-indigo-700 text-white font-semibold' 
                        : 'hover:bg-gray-100'
                }`;
                pageNumbersContainer.innerHTML += `<button class="${buttonClass}" onclick="goToPage(${i})">${i}</button>`;
            }

            if (endPage < totalPages) {
                if (endPage < totalPages - 1) pageNumbersContainer.innerHTML += `<span class="px-2 text-gray-400">...</span>`;
                pageNumbersContainer.innerHTML += `<button class="px-3 py-1 border border-gray-300 rounded-lg text-sm hover:bg-gray-100 transition" onclick="goToPage(${totalPages})">${totalPages}</button>`;
            }
            
            const startItem = (currentPageNum - 1) * limit + 1;
            const endItem = Math.min(currentPageNum * limit, totalItems);
            paginationSummary.textContent = `Showing ${totalItems > 0 ? startItem : 0} to ${endItem} of ${totalItems} Applications`;
        }

        function goToPage(page) {
            currentPage = page;
            fetchApplications();
        }
    </script>
</body>
</html>
