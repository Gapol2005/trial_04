<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Archives - OSCA</title>
    
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
                    <h2 class="text-3xl font-bold text-gray-900">Archive</h2>
                    <p class="text-gray-600 mt-1">Complete history of all senior citizens records and activities</p>
                </div>
            </div>

            <div class="bg-white rounded-lg shadow-md p-6">
                
                <div class="flex flex-col md:flex-row justify-between items-center gap-4 mb-6">
                    
                    <div class="flex items-center gap-2 w-full md:w-auto">
                        <div class="relative w-full md:w-96">
                            <span class="absolute inset-y-0 left-0 flex items-center pl-3">
                                <i class="fa-solid fa-magnifying-glass text-gray-400"></i>
                            </span>
                            <input type="text" placeholder="Search by name" class="w-full pl-10 pr-4 py-2.5 border border-gray-300 rounded-md focus:outline-none focus:ring-1 focus:ring-dashboardBlue text-sm">
                        </div>
                        <button class="p-2.5 border border-gray-300 rounded-md hover:bg-gray-50 text-gray-600 transition" title="Refresh List">
                            <i class="fa-solid fa-rotate"></i>
                        </button>
                    </div>

                    <div>
                        <button class="px-4 py-2.5 border border-gray-400 rounded-md text-sm font-medium hover:bg-gray-50 text-gray-700 flex items-center gap-2 transition shadow-sm">
                            <i class="fa-regular fa-file-excel text-green-600 text-lg"></i> Export to Excel
                        </button>
                    </div>
                </div>

                <div class="flex flex-wrap gap-3 mb-6">
                    <button class="bg-dashboardBlue text-white px-6 py-2 rounded text-sm font-medium shadow-md">
                        All Records
                    </button>
                    <button class="bg-gray-200 text-gray-600 px-6 py-2 rounded text-sm font-medium hover:bg-gray-300 transition">
                        With Complaints
                    </button>
                    <button class="bg-gray-200 text-gray-600 px-6 py-2 rounded text-sm font-medium hover:bg-gray-300 transition">
                        Deceased
                    </button>
                    <button class="bg-gray-200 text-gray-600 px-6 py-2 rounded text-sm font-medium hover:bg-gray-300 transition">
                        Recently Updated
                    </button>
                </div>

                <div class="overflow-x-auto">
                    <table class="w-full text-left border-collapse min-w-[900px]">
                        <thead>
                            <tr class="text-black font-bold text-sm border-b border-gray-200">
                                <th class="pb-4 pl-2 cursor-pointer hover:text-dashboardBlue">ID <i class="fa-solid fa-sort text-gray-400 ml-1"></i></th>
                                <th class="pb-4 cursor-pointer hover:text-dashboardBlue">Name <i class="fa-solid fa-sort text-gray-400 ml-1"></i></th>
                                <th class="pb-4 cursor-pointer hover:text-dashboardBlue">Barangay <i class="fa-solid fa-sort text-gray-400 ml-1"></i></th>
                                <th class="pb-4 cursor-pointer hover:text-dashboardBlue">Registration Date <i class="fa-solid fa-sort text-gray-400 ml-1"></i></th>
                                <th class="pb-4 cursor-pointer hover:text-dashboardBlue">Status <i class="fa-solid fa-sort text-gray-400 ml-1"></i></th>
                                <th class="pb-4 cursor-pointer hover:text-dashboardBlue">Last Updated <i class="fa-solid fa-sort text-gray-400 ml-1"></i></th>
                                <th class="pb-4 text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="text-gray-800 text-sm">
                            
                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-5 pl-2 font-mono text-gray-600">444444</td>
                                <td class="py-5 font-medium">Ahmadnur Jul</td>
                                <td class="py-5">Tetuan</td>
                                <td class="py-5">Oct. 3, 2025</td>
                                <td class="py-5">
                                    <span class="bg-green-400 text-white px-3 py-1 rounded-full text-xs font-semibold">Active</span>
                                </td>
                                <td class="py-5 text-gray-600">Oct. 3, 2025 2:30 PM</td>
                                <td class="py-5 text-center">
                                    <button class="px-6 py-1.5 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>

                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-5 pl-2 font-mono text-gray-600">110010</td>
                                <td class="py-5 font-medium">Ahmadnur Jul</td>
                                <td class="py-5">Tetuan</td>
                                <td class="py-5">Oct. 3, 2025</td>
                                <td class="py-5">
                                    <span class="bg-gray-400 text-white px-3 py-1 rounded-full text-xs font-semibold">Deceased</span>
                                </td>
                                <td class="py-5 text-gray-600">Oct. 3, 2025 2:30 PM</td>
                                <td class="py-5 text-center">
                                    <button class="px-6 py-1.5 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>

                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-5 pl-2 font-mono text-gray-600">210101</td>
                                <td class="py-5 font-medium">Rey Flores</td>
                                <td class="py-5">Tetuan</td>
                                <td class="py-5">Oct. 3, 2025</td>
                                <td class="py-5">
                                    <span class="bg-green-400 text-white px-3 py-1 rounded-full text-xs font-semibold">Active</span>
                                </td>
                                <td class="py-5 text-gray-600">Oct. 3, 2025 2:30 PM</td>
                                <td class="py-5 text-center">
                                    <button class="px-6 py-1.5 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>

                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-5 pl-2 font-mono text-gray-600">212102</td>
                                <td class="py-5 font-medium">Rey Flores</td>
                                <td class="py-5">Tetuan</td>
                                <td class="py-5">Oct. 3, 2025</td>
                                <td class="py-5">
                                    <span class="bg-green-400 text-white px-3 py-1 rounded-full text-xs font-semibold">Active</span>
                                </td>
                                <td class="py-5 text-gray-600">Oct. 3, 2025 2:30 PM</td>
                                <td class="py-5 text-center">
                                    <button class="px-6 py-1.5 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>

                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-5 pl-2 font-mono text-gray-600">586953</td>
                                <td class="py-5 font-medium">Rey Flores</td>
                                <td class="py-5">Tetuan</td>
                                <td class="py-5">Oct. 3, 2025</td>
                                <td class="py-5">
                                    <span class="bg-gray-400 text-white px-3 py-1 rounded-full text-xs font-semibold">Deceased</span>
                                </td>
                                <td class="py-5 text-gray-600">Oct. 3, 2025 2:30 PM</td>
                                <td class="py-5 text-center">
                                    <button class="px-6 py-1.5 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>

                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-5 pl-2 font-mono text-gray-600">444444</td>
                                <td class="py-5 font-medium">Rey Flores</td>
                                <td class="py-5">Tetuan</td>
                                <td class="py-5">Oct. 3, 2025</td>
                                <td class="py-5">
                                    <span class="bg-green-400 text-white px-3 py-1 rounded-full text-xs font-semibold">Active</span>
                                </td>
                                <td class="py-5 text-gray-600">Oct. 3, 2025 2:30 PM</td>
                                <td class="py-5 text-center">
                                    <button class="px-6 py-1.5 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>

                             <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-5 pl-2 font-mono text-gray-600">444444</td>
                                <td class="py-5 font-medium">Draft Example</td>
                                <td class="py-5">Tetuan</td>
                                <td class="py-5">Oct. 3, 2025</td>
                                <td class="py-5">
                                    <span class="bg-green-400 text-white px-3 py-1 rounded-full text-xs font-semibold">Active</span>
                                </td>
                                <td class="py-5 text-gray-600">Oct. 3, 2025 2:30 PM</td>
                                <td class="py-5 text-center">
                                    <button class="px-6 py-1.5 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>

                <div class="flex flex-col md:flex-row justify-between items-center mt-8 text-sm text-gray-600 border-t border-gray-100 pt-6">
                    <div class="mb-4 md:mb-0">
                        Showing 1 to 7 of 135 Records
                    </div>
                    <div class="flex items-center gap-2">
                        <button class="px-4 py-2 border border-gray-300 rounded hover:bg-gray-50 flex items-center gap-2 transition">
                            <i class="fa-solid fa-angles-left text-xs"></i> Previous
                        </button>
                        
                        <button class="w-9 h-9 border border-gray-300 rounded hover:bg-gray-50 flex items-center justify-center transition bg-white font-medium text-gray-700">1</button>
                        <button class="w-9 h-9 border border-gray-300 rounded hover:bg-gray-50 flex items-center justify-center transition">2</button>
                        <button class="w-9 h-9 border border-gray-300 rounded hover:bg-gray-50 flex items-center justify-center transition">3</button>
                        <span class="px-2 text-gray-400">...</span>
                        <button class="w-9 h-9 border border-gray-300 rounded hover:bg-gray-50 flex items-center justify-center transition">7</button>
                        
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