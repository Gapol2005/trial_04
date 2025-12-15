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
    <link rel="stylesheet" href="../css/style.css">
</head>
<body class="bg-osca-bg font-sans flex text-gray-800">

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
                    <button class="bg-dashboardBlue text-white py-3 px-4 rounded-md font-bold hover:bg-indigo-900 transition shadow-md flex items-center justify-center gap-2">
                        <i class="fa-solid fa-plus"></i> New ID
                    </button>
                    <button class="bg-dashboardBlue text-white py-3 px-4 rounded-md font-bold hover:bg-indigo-900 transition shadow-md">
                        Revalidation/Update
                    </button>
                    <button class="bg-dashboardBlue text-white py-3 px-4 rounded-md font-bold hover:bg-indigo-900 transition shadow-md">
                        Lost/Damage ID
                    </button>
                    <button class="bg-dashboardBlue text-white py-3 px-4 rounded-md font-bold hover:bg-indigo-900 transition shadow-md">
                        Report
                    </button>
                </div>

            </div>

            <div class="bg-white rounded-lg shadow-md p-6">
                
                <h3 class="text-lg font-bold text-black mb-4">Senior Citizen List</h3>

                <div class="flex flex-col md:flex-row justify-between items-center gap-4 mb-4">
                    <div class="flex items-center gap-2 w-full md:w-auto">
                        <div class="relative w-full md:w-80">
                            <span class="absolute inset-y-0 left-0 flex items-center pl-3">
                                <i class="fa-solid fa-magnifying-glass text-gray-400"></i>
                            </span>
                            <input type="text" placeholder="Search by name or ID number" class="w-full pl-10 pr-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-1 focus:ring-dashboardBlue text-sm">
                        </div>
                        <button class="p-2 border border-gray-300 rounded-md hover:bg-gray-50 text-gray-600">
                            <i class="fa-solid fa-rotate"></i>
                        </button>
                    </div>

                    <div class="flex gap-2">
                        <a href="registration_category.php" class="px-4 py-2 border border-gray-400 rounded-md text-sm font-medium hover:bg-gray-50 text-gray-700">
                            Applications List
                        </a>
                        <button class="px-4 py-2 border border-gray-400 rounded-md text-sm font-medium hover:bg-gray-50 text-gray-700 flex items-center gap-2">
                            <i class="fa-regular fa-file-excel text-green-600"></i> Export to Excel
                        </button>
                    </div>
                </div>

                <div class="flex flex-wrap items-center gap-2 mb-6 text-sm">
                    <span class="text-gray-600 font-medium mr-1">Age Filter:</span>
                    <button class="bg-dashboardBlue text-white px-4 py-1 rounded-full text-xs font-semibold shadow-sm">All</button>
                    <button class="bg-gray-100 text-gray-700 px-4 py-1 rounded-full text-xs font-semibold hover:bg-blue-100 hover:text-blue-700 transition">Septuagenarian (70-79)</button>
                    <button class="bg-gray-100 text-gray-700 px-4 py-1 rounded-full text-xs font-semibold hover:bg-yellow-100 hover:text-yellow-700 transition">Octogenarian (80-89)</button>
                    <button class="bg-gray-100 text-gray-700 px-4 py-1 rounded-full text-xs font-semibold hover:bg-red-100 hover:text-red-700 transition">Nonagenarian (90-99)</button>
                    <button class="bg-gray-100 text-gray-700 px-4 py-1 rounded-full text-xs font-semibold hover:bg-purple-100 hover:text-purple-700 transition">Centenarian (100+)</button>
                </div>

                <div class="overflow-x-auto">
                    <table class="w-full text-left border-collapse min-w-[900px]">
                        <thead>
                            <tr class="text-black font-bold text-sm border-b border-gray-200">
                                <th class="pb-3 pl-2 w-10">
                                    <input type="checkbox" class="w-4 h-4 rounded border-gray-300 text-dashboardBlue focus:ring-dashboardBlue">
                                </th>
                                <th class="pb-3">OSCA ID <i class="fa-solid fa-sort text-gray-400 ml-1 cursor-pointer"></i></th>
                                <th class="pb-3">Name <i class="fa-solid fa-sort text-gray-400 ml-1 cursor-pointer"></i></th>
                                <th class="pb-3">Barangay <i class="fa-solid fa-sort text-gray-400 ml-1 cursor-pointer"></i></th>
                                <th class="pb-3">Age Group</th>
                                <th class="pb-3">Age</th>
                                <th class="pb-3">Gender <i class="fa-solid fa-sort text-gray-400 ml-1 cursor-pointer"></i></th>
                                <th class="pb-3 text-right pr-4">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="text-gray-800 text-sm">
                            
                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-4 pl-2"><input type="checkbox" class="w-4 h-4 rounded border-gray-300"></td>
                                <td class="py-4 font-mono text-gray-500">444444</td>
                                <td class="py-4 font-medium">Ahmadnur Jul</td>
                                <td class="py-4">Tetuan</td>
                                <td class="py-4">
                                    <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs font-semibold">Septuagenarian</span>
                                </td>
                                <td class="py-4">73</td>
                                <td class="py-4">Male</td>
                                <td class="py-4 text-right pr-4">
                                    <button class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50">View</button>
                                </td>
                            </tr>

                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-4 pl-2"><input type="checkbox" class="w-4 h-4 rounded border-gray-300"></td>
                                <td class="py-4 font-mono text-gray-500">444445</td>
                                <td class="py-4 font-medium">Juan Dela Cruz</td>
                                <td class="py-4">Tetuan</td>
                                <td class="py-4">
                                    <span class="bg-yellow-100 text-yellow-800 px-2 py-1 rounded-full text-xs font-semibold">Octogenarian</span>
                                </td>
                                <td class="py-4">80</td>
                                <td class="py-4">Male</td>
                                <td class="py-4 text-right pr-4">
                                    <button class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50">View</button>
                                </td>
                            </tr>

                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-4 pl-2"><input type="checkbox" class="w-4 h-4 rounded border-gray-300"></td>
                                <td class="py-4 font-mono text-gray-500">444446</td>
                                <td class="py-4 font-medium">Maria Santos</td>
                                <td class="py-4">Tetuan</td>
                                <td class="py-4">
                                    <span class="bg-red-100 text-red-800 px-2 py-1 rounded-full text-xs font-semibold">Nonagenarian</span>
                                </td>
                                <td class="py-4">94</td>
                                <td class="py-4">Female</td>
                                <td class="py-4 text-right pr-4">
                                    <button class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50">View</button>
                                </td>
                            </tr>

                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-4 pl-2"><input type="checkbox" class="w-4 h-4 rounded border-gray-300"></td>
                                <td class="py-4 font-mono text-gray-500">444447</td>
                                <td class="py-4 font-medium">Pedro Penduko</td>
                                <td class="py-4">Tetuan</td>
                                <td class="py-4">
                                    <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs font-semibold">Septuagenarian</span>
                                </td>
                                <td class="py-4">75</td>
                                <td class="py-4">Male</td>
                                <td class="py-4 text-right pr-4">
                                    <button class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50">View</button>
                                </td>
                            </tr>

                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition">
                                <td class="py-4 pl-2"><input type="checkbox" class="w-4 h-4 rounded border-gray-300"></td>
                                <td class="py-4 font-mono text-gray-500">444448</td>
                                <td class="py-4 font-medium">Lola Basyang</td>
                                <td class="py-4">Tetuan</td>
                                <td class="py-4">
                                    <span class="bg-purple-100 text-purple-800 px-2 py-1 rounded-full text-xs font-semibold">Centenarian</span>
                                </td>
                                <td class="py-4">101</td>
                                <td class="py-4">Female</td>
                                <td class="py-4 text-right pr-4">
                                    <button class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50">View</button>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>

                <div class="flex flex-col md:flex-row justify-between items-center mt-6 text-sm text-gray-600">
                    <div class="mb-4 md:mb-0">
                        Showing 1 to 5 of 135 Seniors
                    </div>
                    <div class="flex items-center gap-2">
                        <button class="px-3 py-1 border border-gray-300 rounded hover:bg-gray-50 flex items-center gap-1">
                            <i class="fa-solid fa-angles-left text-xs"></i> Previous
                        </button>
                        <button class="w-8 h-8 bg-dashboardBlue text-white rounded flex items-center justify-center">1</button>
                        <button class="w-8 h-8 border border-gray-300 rounded hover:bg-gray-50 flex items-center justify-center">2</button>
                        <button class="w-8 h-8 border border-gray-300 rounded hover:bg-gray-50 flex items-center justify-center">3</button>
                        <span class="px-2">...</span>
                        <button class="w-8 h-8 border border-gray-300 rounded hover:bg-gray-50 flex items-center justify-center">7</button>
                        <button class="px-4 py-1 border border-gray-300 rounded hover:bg-gray-50 flex items-center gap-1">
                            Next <i class="fa-solid fa-angles-right text-xs"></i>
                        </button>
                    </div>
                </div>

            </div>

        </main>
    </div>

</body>
</html>