<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Announcement - OSCA</title>
    
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
    // Sets the active page for sidebar highlighting
    $current_page = basename($_SERVER['PHP_SELF']);
    ?>

    <?php include 'sidebar.php'; ?>

    <div class="ml-64 w-full min-h-screen flex flex-col">
        
        <?php include 'header.php'; ?>

        <main class="flex-1 p-8 overflow-y-auto">
            
            <div class="bg-white p-6 rounded-lg shadow-sm mb-6 border border-gray-100">
                <div class="mb-6">
                    <h2 class="text-3xl font-bold text-gray-900">Announcement</h2>
                    <p class="text-gray-600 mt-1">Create and manage announcement</p>
                </div>

                <div class="grid grid-cols-1 md:grid-cols-4 gap-4">
                    <a href="add_announement.php" class="bg-dashboardBlue text-white py-3 px-4 rounded-md font-bold hover:bg-indigo-900 transition shadow-md flex items-center justify-center gap-2">
                        Add Announcement
                    </a>
                </div>
            </div>

            <div class="bg-white rounded-lg shadow-md p-6 mb-6">
                
                <h3 class="text-lg font-bold text-black mb-4">Upcoming Events</h3>

                <div class="flex items-center gap-2 mb-4">
                    <div class="relative w-full md:w-96">
                        <span class="absolute inset-y-0 left-0 flex items-center pl-3">
                            <i class="fa-solid fa-magnifying-glass text-gray-400"></i>
                        </span>
                        <input type="text" placeholder="Search By Title, Target Audience..." class="w-full pl-10 pr-4 py-2 border border-gray-300 rounded focus:outline-none focus:ring-1 focus:ring-dashboardBlue text-sm">
                    </div>
                    <button class="p-2 border border-gray-300 rounded hover:bg-gray-50 text-gray-600 transition" title="Refresh">
                        <i class="fa-solid fa-rotate"></i>
                    </button>
                </div>

                <div class="overflow-x-auto">
                    <table class="w-full text-left border-collapse min-w-[800px]">
                        <thead>
                            <tr class="text-black font-bold text-sm border-b border-gray-200">
                                <th class="pb-4 pl-2">Event Name</th>
                                <th class="pb-4">Target Audience <i class="fa-solid fa-sort text-gray-400 ml-1 cursor-pointer"></i></th>
                                <th class="pb-4">Date Event <i class="fa-solid fa-sort text-gray-400 ml-1 cursor-pointer"></i></th>
                                <th class="pb-4">Location <i class="fa-solid fa-sort text-gray-400 ml-1 cursor-pointer"></i></th>
                                <th class="pb-4 text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="text-gray-800 text-sm">
                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-4 pl-2">Medical Mission 2025</td>
                                <td class="py-4">All Senior Citizen</td>
                                <td class="py-4">Oct 25, 2025 <span class="ml-2 text-gray-500">9:00 AM</span></td>
                                <td class="py-4">Barangay Hall</td>
                                <td class="py-4 text-center">
                                    <a href="view_event.php" class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </a>
                                </td>
                            </tr>
                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-4 pl-2">Quarterly Pension (Octagenarian)</td>
                                <td class="py-4">Ages 80-89</td>
                                <td class="py-4">Oct 25, 2025 <span class="ml-2 text-gray-500">9:00 AM</span></td>
                                <td class="py-4">DSWD</td>
                                <td class="py-4 text-center">
                                    <a href="view_event.php" class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="bg-white rounded-lg shadow-md p-6">
                
                <h3 class="text-lg font-bold text-black mb-4">Announcement History</h3>

                <div class="flex items-center gap-2 mb-4">
                    <div class="relative w-full md:w-96">
                        <span class="absolute inset-y-0 left-0 flex items-center pl-3">
                            <i class="fa-solid fa-magnifying-glass text-gray-400"></i>
                        </span>
                        <input type="text" placeholder="Search By Title, Target Audience..." class="w-full pl-10 pr-4 py-2 border border-gray-300 rounded focus:outline-none focus:ring-1 focus:ring-dashboardBlue text-sm">
                    </div>
                    <button class="p-2 border border-gray-300 rounded hover:bg-gray-50 text-gray-600 transition" title="Refresh">
                        <i class="fa-solid fa-rotate"></i>
                    </button>
                </div>

                <div class="flex items-center gap-2 mb-6 text-sm">
                    <button class="bg-dashboardBlue text-white px-6 py-1 rounded-full text-xs font-medium shadow-sm">All</button>
                    <button class="bg-gray-200 text-gray-700 px-6 py-1 rounded-full text-xs font-medium hover:bg-gray-300 transition">News</button>
                    <button class="bg-gray-200 text-gray-700 px-6 py-1 rounded-full text-xs font-medium hover:bg-gray-300 transition">Events</button>
                </div>

                <div class="overflow-x-auto">
                    <table class="w-full text-left border-collapse min-w-[800px]">
                        <thead>
                            <tr class="text-black font-bold text-sm border-b border-gray-200">
                                <th class="pb-4 pl-2">Title</th>
                                <th class="pb-4">Target Audience <i class="fa-solid fa-sort text-gray-400 ml-1 cursor-pointer"></i></th>
                                <th class="pb-4">Date Event <i class="fa-solid fa-sort text-gray-400 ml-1 cursor-pointer"></i></th>
                                <th class="pb-4">Location <i class="fa-solid fa-sort text-gray-400 ml-1 cursor-pointer"></i></th>
                                <th class="pb-4 text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="text-gray-800 text-sm">
                            
                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-5 pl-2">Medical Mission 2025</td>
                                <td class="py-5">All Senior Citizen</td>
                                <td class="py-5">Oct 10, 2025 <span class="ml-2 text-gray-500">8:00 AM</span></td>
                                <td class="py-5">Barangay Hall</td>
                                <td class="py-5 text-center">
                                    <button class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>

                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-5 pl-2">comprehensive geriatric training</td>
                                <td class="py-5">Social Workers</td>
                                <td class="py-5"></td>
                                <td class="py-5">DSWD</td>
                                <td class="py-5 text-center">
                                    <button class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>

                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-5 pl-2">Medical Mission 2025</td>
                                <td class="py-5">All Senior Citizen</td>
                                <td class="py-5">Oct 10, 2025 <span class="ml-2 text-gray-500">8:00 AM</span></td>
                                <td class="py-5">Barangay Hall</td>
                                <td class="py-5 text-center">
                                    <button class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>

                             <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-5 pl-2">Medical Mission 2025</td>
                                <td class="py-5">All Senior Citizen</td>
                                <td class="py-5">Oct 01, 2025 <span class="ml-2 text-gray-500">8:00 AM</span></td>
                                <td class="py-5">Barangay Hall</td>
                                <td class="py-5 text-center">
                                    <button class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>

                             <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-5 pl-2">Medical Mission 2025</td>
                                <td class="py-5">All Senior Citizen</td>
                                <td class="py-5">Oct 10, 2025 <span class="ml-2 text-gray-500">8:00 AM</span></td>
                                <td class="py-5">Barangay Hall</td>
                                <td class="py-5 text-center">
                                    <button class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>

                <div class="flex justify-between items-center mt-8 text-sm text-gray-600 border-t border-gray-100 pt-6">
                    <div>
                        Showing 1 to 7 of 135 Applications
                    </div>
                    <div class="flex items-center gap-2">
                        <button class="px-4 py-2 border border-gray-300 rounded hover:bg-gray-50 flex items-center gap-2 transition">
                            <i class="fa-solid fa-angles-left text-xs"></i> Previous
                        </button>
                        
                        <button class="w-10 h-10 border border-gray-300 rounded hover:bg-gray-50 flex items-center justify-center transition">1</button>
                        <button class="w-10 h-10 border border-gray-300 rounded hover:bg-gray-50 flex items-center justify-center transition">2</button>
                        <button class="w-10 h-10 border border-gray-300 rounded hover:bg-gray-50 flex items-center justify-center transition">3</button>
                        <span class="px-2 text-gray-400">...</span>
                        <button class="w-10 h-10 border border-gray-300 rounded hover:bg-gray-50 flex items-center justify-center transition">7</button>
                        
                        <button class="px-4 py-2 border border-gray-300 rounded hover:bg-gray-50 flex items-center gap-2 transition">
                            Next <i class="fa-solid fa-angles-right text-xs"></i>
                        </button>
                    </div>
                </div>

            </div>

        </main>
    </div>

</body>
</html>