<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Event - OSCA</title>
    
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

    <?php
    $current_page = 'announcement.php';
    ?>

    <?php include 'sidebar.php'; ?>

    <div class="ml-64 w-full min-h-screen flex flex-col relative">
        
        <?php include 'header.php'; ?>

        <main class="flex-1 p-8 overflow-y-auto flex items-center justify-center">
            
            <div class="w-full max-w-5xl bg-white rounded-xl shadow-lg overflow-hidden border border-gray-200">
                
                <div class="bg-dashboardBlue p-6 relative">
                    <a href="announcement.php" class="absolute top-6 right-6 w-10 h-10 bg-white/20 rounded-full flex items-center justify-center text-white hover:bg-white/30 transition cursor-pointer">
                        <i class="fa-solid fa-xmark text-xl"></i>
                    </a>
                    <div class="flex items-center gap-4 mb-3">
                        <h1 class="text-3xl font-bold text-white">Quarterly Pension</h1>
                        <span class="bg-white/20 text-white px-3 py-1 rounded-full text-xs font-bold uppercase tracking-wider">Event</span>
                    </div>
                    <div class="flex flex-col md:flex-row gap-6 text-white/90 text-sm md:text-base font-medium">
                        <div class="flex items-center gap-2">
                            <i class="fa-regular fa-calendar"></i>
                            <span>October 25, 2025 at 9:00 AM</span>
                        </div>
                        <div class="flex items-center gap-2">
                            <i class="fa-solid fa-location-dot"></i>
                            <span>Barangay Hall, Tetuan</span>
                        </div>
                    </div>
                </div>

                <div class="p-8">
                    <div class="mb-8">
                        <h2 class="text-lg font-bold text-dashboardBlue mb-2">Event Description</h2>
                        <p class="text-gray-700 leading-relaxed">Quarterly Pension for the Senior Citizen</p>
                    </div>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-8">
                        <div class="aspect-video bg-gray-50 border-2 border-gray-200 border-dashed rounded-xl flex items-center justify-center text-gray-400">
                            <span class="text-lg font-medium">Image</span>
                        </div>
                        <div class="aspect-video bg-gray-50 border-2 border-gray-200 border-dashed rounded-xl flex items-center justify-center text-gray-400">
                            <span class="text-lg font-medium">Image</span>
                        </div>
                    </div>

                    <div class="flex flex-col md:flex-row justify-between items-center gap-4 pt-4 border-t border-gray-100">
                        <div class="flex gap-3 w-full md:w-auto">
                            <button class="flex-1 md:flex-none px-6 py-2.5 border border-gray-300 rounded-lg text-gray-700 font-medium hover:bg-gray-50 flex items-center justify-center gap-2 transition">
                                <i class="fa-regular fa-pen-to-square text-green-600"></i> Edit Event
                            </button>
                            <button class="flex-1 md:flex-none px-6 py-2.5 border border-gray-300 rounded-lg text-gray-700 font-medium hover:bg-gray-50 flex items-center justify-center gap-2 transition">
                                <i class="fa-regular fa-envelope text-blue-600"></i> Send Notifications
                            </button>
                        </div>

                        <div class="flex gap-3 w-full md:w-auto">
                            <button class="flex-1 md:flex-none px-6 py-2.5 border border-red-200 text-red-500 rounded-lg font-medium hover:bg-red-50 hover:border-red-300 transition">
                                Delete Event
                            </button>
                            
                            <button onclick="openModal('seniorListModal')" class="flex-1 md:flex-none px-8 py-2.5 bg-dashboardBlue text-white rounded-lg font-bold hover:bg-indigo-900 transition shadow-md">
                                Senior List
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <div id="seniorListModal" class="hidden fixed inset-0 z-50 overflow-y-auto" aria-labelledby="modal-title" role="dialog" aria-modal="true">
            
            <div class="fixed inset-0 bg-gray-900/50 transition-opacity" aria-hidden="true" onclick="closeModal('seniorListModal')"></div>

            <div class="flex min-h-full items-center justify-center p-4 text-center sm:p-0">
                <div class="relative transform overflow-hidden rounded-lg bg-white text-left shadow-xl transition-all sm:my-8 sm:w-full sm:max-w-5xl">
                    
                    <div class="bg-white px-4 pb-4 pt-5 sm:p-6 sm:pb-4">
                        
                        <div class="flex flex-col sm:flex-row justify-between items-center gap-4 mb-6">
                            <div class="relative w-full sm:w-96">
                                <div class="pointer-events-none absolute inset-y-0 left-0 flex items-center pl-3">
                                    <i class="fa-solid fa-magnifying-glass text-gray-400"></i>
                                </div>
                                <input type="text" class="block w-full rounded-md border border-gray-300 py-2 pl-10 pr-3 text-gray-900 placeholder-gray-400 focus:border-dashboardBlue focus:ring-1 focus:ring-dashboardBlue sm:text-sm" placeholder="Search by name or ID number...">
                            </div>

                            <div class="w-full sm:w-auto">
                                <select class="block w-full rounded-md border border-gray-300 py-2 pl-3 pr-10 text-base focus:border-dashboardBlue focus:outline-none focus:ring-dashboardBlue sm:text-sm">
                                    <option>All</option>
                                    <option>Claimed</option>
                                    <option>Unclaimed</option>
                                </select>
                            </div>
                        </div>

                        <div class="overflow-x-auto border border-gray-200 rounded-lg">
                            <table class="min-w-full divide-y divide-gray-200">
                                <thead class="bg-gray-50">
                                    <tr>
                                        <th scope="col" class="px-6 py-3 text-left text-xs font-bold text-gray-900 uppercase tracking-wider">Application ID</th>
                                        <th scope="col" class="px-6 py-3 text-left text-xs font-bold text-gray-900 uppercase tracking-wider cursor-pointer hover:text-dashboardBlue">
                                            Name <i class="fa-solid fa-sort ml-1 text-gray-400"></i>
                                        </th>
                                        <th scope="col" class="px-6 py-3 text-left text-xs font-bold text-gray-900 uppercase tracking-wider cursor-pointer hover:text-dashboardBlue">
                                            Barangay <i class="fa-solid fa-sort ml-1 text-gray-400"></i>
                                        </th>
                                        <th scope="col" class="px-6 py-3 text-left text-xs font-bold text-gray-900 uppercase tracking-wider cursor-pointer hover:text-dashboardBlue">
                                            Age <i class="fa-solid fa-sort ml-1 text-gray-400"></i>
                                        </th>
                                        <th scope="col" class="px-6 py-3 text-center text-xs font-bold text-gray-900 uppercase tracking-wider">Claim Status</th>
                                    </tr>
                                </thead>
                                <tbody class="bg-white divide-y divide-gray-200 text-sm">
                                    
                                    <tr class="hover:bg-gray-50">
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500 font-mono">444444</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-900">Sofia Santos</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500">Tetuan</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500">60</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-center">
                                            <button class="bg-dashboardBlue text-white px-6 py-1.5 rounded-md text-xs font-bold hover:bg-indigo-900 transition shadow-sm border border-transparent">
                                                Claim
                                            </button>
                                        </td>
                                    </tr>

                                    <tr class="hover:bg-gray-50">
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500 font-mono">110010</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-900">Duplicate Ex</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500">Tetuan</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500">61</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-center">
                                            <button class="bg-dashboardBlue text-white px-6 py-1.5 rounded-md text-xs font-bold hover:bg-indigo-900 transition shadow-sm border border-transparent">
                                                Claim
                                            </button>
                                        </td>
                                    </tr>

                                    <tr class="hover:bg-gray-50">
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500 font-mono">210101</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-900">Rey Flores</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500">Tetuan</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500">65</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-center">
                                            <button class="bg-dashboardBlue text-white px-6 py-1.5 rounded-md text-xs font-bold hover:bg-indigo-900 transition shadow-sm border border-transparent">
                                                Claim
                                            </button>
                                        </td>
                                    </tr>

                                    <tr class="hover:bg-gray-50">
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500 font-mono">212102</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-900">Rey Flores</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500">Tetuan</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500">65</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-center">
                                            <button class="bg-dashboardBlue text-white px-6 py-1.5 rounded-md text-xs font-bold hover:bg-indigo-900 transition shadow-sm border border-transparent">
                                                Claim
                                            </button>
                                        </td>
                                    </tr>
                                    
                                     <tr class="hover:bg-gray-50">
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500 font-mono">586953</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-900">Rey Flores</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500">Tetuan</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500">65</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-center">
                                            <button class="bg-dashboardBlue text-white px-6 py-1.5 rounded-md text-xs font-bold hover:bg-indigo-900 transition shadow-sm border border-transparent">
                                                Claim
                                            </button>
                                        </td>
                                    </tr>

                                     <tr class="hover:bg-gray-50">
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500 font-mono">444444</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-900">Rey Flores</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500">Tetuan</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-gray-500">65</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-center">
                                            <button class="bg-dashboardBlue text-white px-6 py-1.5 rounded-md text-xs font-bold hover:bg-indigo-900 transition shadow-sm border border-transparent">
                                                Claim
                                            </button>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>

                        <div class="flex flex-col sm:flex-row items-center justify-between gap-4 mt-6">
                            <div class="text-sm text-gray-600">
                                Showing 1 to 7 of 135 registered participants
                            </div>
                            
                            <div class="flex items-center gap-2">
                                <button class="px-3 py-1 border border-gray-300 rounded hover:bg-gray-50 text-sm">« Previous</button>
                                <button class="w-8 h-8 border border-gray-300 rounded hover:bg-gray-50 text-sm">1</button>
                                <button class="w-8 h-8 border border-gray-300 rounded hover:bg-gray-50 text-sm">2</button>
                                <button class="w-8 h-8 border border-gray-300 rounded hover:bg-gray-50 text-sm">3</button>
                                <span class="px-1">...</span>
                                <button class="w-8 h-8 border border-gray-300 rounded hover:bg-gray-50 text-sm">7</button>
                                <button class="px-3 py-1 border border-gray-300 rounded hover:bg-gray-50 text-sm">Next »</button>
                            </div>
                        </div>
                        
                        <div class="mt-8 flex justify-end">
                            <button type="button" class="inline-flex justify-center rounded-full border border-gray-400 bg-white px-8 py-2 text-base font-semibold text-gray-900 shadow-sm hover:bg-gray-50 focus:outline-none sm:text-lg" onclick="closeModal('seniorListModal')">
                                Close
                            </button>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        </div>

    <script>
        // Modal Logic
        function openModal(modalId) {
            const modal = document.getElementById(modalId);
            modal.classList.remove('hidden');
            document.body.style.overflow = 'hidden';
        }

        function closeModal(modalId) {
            const modal = document.getElementById(modalId);
            modal.classList.add('hidden');
            document.body.style.overflow = 'auto';
        }

        // Close modal when pressing ESC key
        document.addEventListener('keydown', function(event) {
            if (event.key === "Escape") {
                closeModal('seniorListModal');
            }
        });
    </script>

</body>
</html>