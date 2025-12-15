<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Access Logs - OSCA</title>
    
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
    // You might want to manually set this to 'accounts.php' if you want the Accounts tab to stay highlighted
    $current_page = 'accounts.php'; 
    ?>

    <?php include 'sidebar.php'; ?>

    <div class="ml-64 w-full min-h-screen flex flex-col">
        
        <?php include 'header.php'; ?>

        <main class="flex-1 p-8 overflow-y-auto">
            
            <div class="bg-white p-6 rounded-lg shadow-sm mb-6 border border-gray-100">
                
                <div class="mb-6">
                    <h2 class="text-3xl font-bold text-gray-900">Accounts Settings</h2>
                    <p class="text-gray-600 mt-1">Manage Account Settings</p>
                </div>

                <div class="grid grid-cols-1 md:grid-cols-4 gap-4">
                    <a href="add_user.php" class="bg-dashboardBlue text-white py-3 px-4 rounded-md font-bold hover:bg-indigo-900 transition shadow-md flex items-center justify-center gap-2">
                        Add User
                    </a>
                </div>

            </div>

            <div class="bg-white rounded-lg shadow-md p-6">
                
                <h3 class="text-lg font-bold text-black mb-4">Access Logs</h3>

                <div class="flex flex-col md:flex-row justify-between items-center gap-4 mb-4">
                    
                    <div class="flex items-center gap-2 w-full md:w-auto">
                        <div class="relative w-full md:w-80">
                            <span class="absolute inset-y-0 left-0 flex items-center pl-3">
                                <i class="fa-solid fa-magnifying-glass text-gray-400"></i>
                            </span>
                            <input type="text" placeholder="Search By Name" class="w-full pl-10 pr-4 py-2 border border-gray-300 rounded focus:outline-none focus:ring-1 focus:ring-dashboardBlue text-sm">
                        </div>
                        
                        <button class="p-2 border border-gray-300 rounded hover:bg-gray-50 text-gray-600 transition" title="Refresh">
                            <i class="fa-solid fa-rotate"></i>
                        </button>
                    </div>

                    <a href="accounts.php" class="px-6 py-2 border border-gray-400 rounded text-sm font-medium hover:bg-gray-50 text-gray-700 transition">
                        User List
                    </a>
                </div>

                <div class="flex items-center gap-2 mb-6 text-sm">
                    <span class="text-gray-800 font-medium mr-1">Quick Filters:</span>
                    <button class="bg-dashboardBlue text-white px-4 py-1 rounded-full text-xs font-medium">All</button>
                    <button class="bg-gray-200 text-gray-700 px-4 py-1 rounded-full text-xs font-medium hover:bg-gray-300 transition">Admin</button>
                    <button class="bg-gray-200 text-gray-700 px-4 py-1 rounded-full text-xs font-medium hover:bg-gray-300 transition">Employee</button>
                </div>

                <div class="overflow-x-auto">
                    <table class="w-full text-left border-collapse min-w-[800px]">
                        <thead>
                            <tr class="text-black font-bold text-sm border-b border-gray-200">
                                <th class="pb-4 pl-2 w-1/6">User <i class="fa-solid fa-sort text-gray-400 ml-1 cursor-pointer"></i></th>
                                <th class="pb-4 w-1/5">Access Type <i class="fa-solid fa-sort text-gray-400 ml-1 cursor-pointer"></i></th>
                                <th class="pb-4 w-1/6">Date <i class="fa-solid fa-sort text-gray-400 ml-1 cursor-pointer"></i></th>
                                <th class="pb-4 w-1/6">Time <i class="fa-solid fa-sort text-gray-400 ml-1 cursor-pointer"></i></th>
                                <th class="pb-4 w-1/6">IP Address</th>
                                <th class="pb-4 w-1/6 text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="text-gray-800 text-sm">
                            
                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition h-16">
                                <td class="pl-2">Ahmadnur Jul</td>
                                <td>Google Chrome(Browser)</td>
                                <td>Oct. 3, 2025</td>
                                <td>2:30 PM</td>
                                <td>Localhost</td>
                                <td class="text-center">
                                    <button class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>

                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition h-16">
                                <td class="pl-2">Juan Dela Cruz</td>
                                <td>Google Chrome(Browser)</td>
                                <td>Oct. 3, 2025</td>
                                <td>2:30 PM</td>
                                <td>192.168.1.173</td>
                                <td class="text-center">
                                    <button class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>

                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition h-16">
                                <td class="pl-2">Maria Ozawa</td>
                                <td>Google Chrome(Browser)</td>
                                <td>Oct. 3, 2025</td>
                                <td>2:30 PM</td>
                                <td>192.168.1.173</td>
                                <td class="text-center">
                                    <button class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>

                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition h-16">
                                <td class="pl-2">Juan Dela Cruz</td>
                                <td>Google Chrome(Browser)</td>
                                <td>Oct. 3, 2025</td>
                                <td>2:30 PM</td>
                                <td>192.168.1.173</td>
                                <td class="text-center">
                                    <button class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>

                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition h-16">
                                <td class="pl-2">Juan Dela Cruz</td>
                                <td>Google Chrome(Browser)</td>
                                <td>Oct. 3, 2025</td>
                                <td>2:30 PM</td>
                                <td>192.168.1.173</td>
                                <td class="text-center">
                                    <button class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>
                            
                             <tr class="border-b border-gray-100 hover:bg-gray-50 transition h-16">
                                <td class="pl-2">Juan Dela Cruz</td>
                                <td>Brave(Browser)</td>
                                <td>Oct. 3, 2025</td>
                                <td>2:30 PM</td>
                                <td>192.168.1.173</td>
                                <td class="text-center">
                                    <button class="px-6 py-1 border border-dashboardBlue text-dashboardBlue rounded text-xs font-medium hover:bg-indigo-50 transition">
                                        View
                                    </button>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>

                <div class="flex justify-center items-center gap-3 mt-8 text-sm">
                    <button class="px-4 py-2 border border-gray-400 rounded hover:bg-gray-50 flex items-center gap-2 transition text-gray-800 font-medium">
                        <i class="fa-solid fa-angles-left text-xs"></i> Previous
                    </button>
                    
                    <button class="w-10 h-10 border border-gray-400 rounded hover:bg-gray-50 flex items-center justify-center transition text-gray-800 font-medium">1</button>
                    <button class="w-10 h-10 border border-gray-400 rounded hover:bg-gray-50 flex items-center justify-center transition text-gray-800 font-medium">2</button>
                    <button class="w-10 h-10 border border-gray-400 rounded hover:bg-gray-50 flex items-center justify-center transition text-gray-800 font-medium">3</button>
                    
                    <button class="w-10 h-10 border border-gray-400 rounded hover:bg-gray-50 flex items-center justify-center transition text-gray-800 font-medium">3</button>
                    <button class="w-10 h-10 border border-gray-400 rounded hover:bg-gray-50 flex items-center justify-center transition text-gray-800 font-medium">3</button>
                    
                    <button class="px-8 py-2 border border-gray-400 rounded hover:bg-gray-50 flex items-center gap-2 transition text-gray-800 font-medium">
                        Next <i class="fa-solid fa-angles-right text-xs"></i>
                    </button>
                </div>

            </div>

        </main>
    </div>

</body>
</html>