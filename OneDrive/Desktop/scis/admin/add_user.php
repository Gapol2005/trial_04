<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zamboanga City OSCA - Add User</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../css/style.css">
</head>
<body class="inter-body text-gray-700 flex flex-col min-h-screen">

    <header class="bg-white border-b border-gray-200 py-3 px-4 md:px-8 flex justify-between items-center sticky top-0 z-20">
        <div class="flex items-center gap-4">
            <button onclick="window.history.back()" class="text-blue-600 bg-blue-50 hover:bg-blue-100 rounded-full h-8 w-8 flex items-center justify-center transition">
                <i class="fa-solid fa-chevron-left text-sm"></i>
            </button>
            <div>
                <h1 class="font-bold text-sm md:text-base leading-tight text-black">Zamboanga City OSCA</h1>
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
        
        <div class="bg-white border border-gray-300 rounded-lg p-4 mb-6 flex justify-between items-center shadow-sm">
            <h2 class="text-xl font-bold text-gray-800">Add User Account</h2>
            <input class="border border-gray-300 text-gray-500 font-medium text-sm px-6 py-2 rounded bg-white hover:bg-gray-50" placeholder="Input OSCA ID">
        </div>

        <form>
            
            <div class="bg-white border border-gray-300 rounded-lg shadow-sm mb-6 overflow-hidden">
                <div class="bg-gray-50 border-b border-gray-300 px-6 py-3">
                    <h3 class="font-bold brand-blue-text text-base">User Details</h3>
                </div>
                <div class="p-6">
                    <div class="grid grid-cols-1 md:grid-cols-4 gap-4 mb-5">
                        <div class="md:col-span-1">
                            <label class="block text-xs font-bold mb-1 text-black">First Name <span class="text-orange-500">*</span></label>
                            <input type="text" class="w-full border border-gray-400 rounded p-2 text-sm text-gray-700">
                        </div>
                        <div class="md:col-span-1">
                            <label class="block text-xs font-bold mb-1 text-black">Middle Name <span class="text-orange-500">*</span></label>
                            <input type="text" class="w-full border border-gray-400 rounded p-2 text-sm text-gray-700">
                        </div>
                        <div class="md:col-span-1">
                            <label class="block text-xs font-bold mb-1 text-black">Last Name <span class="text-orange-500">*</span></label>
                            <input type="text" class="w-full border border-gray-400 rounded p-2 text-sm text-gray-700">
                        </div>
                        <div class="md:col-span-1">
                            <label class="block text-xs font-bold mb-1 text-black">Extension <span class="text-orange-500">*</span></label>
                            <input type="text" class="w-full border border-gray-400 rounded p-2 text-sm text-gray-700">
                        </div>
                    </div>

                    <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                        <div>
                            <label class="block text-xs font-bold mb-1 text-black">Position <span class="text-orange-500">*</span></label>
                            <input type="text" class="w-full border border-gray-400 rounded p-2 text-sm text-gray-700">
                        </div>
                        <div>
                            <label class="block text-xs font-bold mb-1 text-black">Sex <span class="text-orange-500">*</span></label>
                            <input type="text" class="w-full border border-gray-400 rounded p-2 text-sm text-gray-700">
                        </div>
                        <div>
                            <label class="block text-xs font-bold mb-1 text-black">Mobile Number <span class="text-orange-500">*</span></label>
                            <div class="relative">
                                <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                                    <span class="text-gray-500 text-sm font-medium">+63</span>
                                </div>
                                <input type="text" class="w-full border border-gray-400 rounded p-2 pl-10 text-sm text-gray-700">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="bg-white border border-gray-300 rounded-lg shadow-sm mb-6 overflow-hidden">
                <div class="bg-gray-50 border-b border-gray-300 px-6 py-3">
                    <h3 class="font-bold brand-blue-text text-base">Account Details</h3>
                </div>
                <div class="p-6 flex flex-col md:flex-row gap-8 items-start">
                    <div class="flex-shrink-0 flex justify-center md:justify-start w-full md:w-auto">
                        <div class="w-28 h-28 rounded-full bg-orange-400 border-4 border-white shadow-lg flex items-center justify-center overflow-hidden">
                             <i class="fa-solid fa-user-tie text-6xl text-blue-800"></i>
                        </div>
                    </div>

                    <div class="flex-grow grid grid-cols-1 md:grid-cols-2 gap-x-8 gap-y-4 w-full">
                        <div class="md:col-span-1">
                            <label class="block text-xs font-bold mb-1 text-black">Username <span class="text-orange-500">*</span></label>
                            <input type="text" class="w-full border border-gray-400 rounded p-2 text-sm text-gray-700">
                        </div>
                        <div class="hidden md:block"></div> 

                        <div class="md:col-span-1">
                            <label class="block text-xs font-bold mb-1 text-black">Password <span class="text-orange-500">*</span></label>
                            <input type="password" class="w-full border border-gray-400 rounded p-2 text-sm text-gray-700">
                        </div>
                        <div class="md:col-span-1">
                            <label class="block text-xs font-bold mb-1 text-black">Confirm Password <span class="text-orange-500">*</span></label>
                            <input type="password" class="w-full border border-gray-400 rounded p-2 text-sm text-gray-700">
                        </div>
                    </div>
                </div>
            </div>

            <div class="bg-white border border-gray-300 rounded-lg shadow-sm mb-6 overflow-hidden">
                <div class="bg-gray-50 border-b border-gray-300 px-6 py-3">
                    <h3 class="font-bold brand-blue-text text-base">Role and Permissions</h3>
                </div>
                <div class="p-6">
                    <div class="grid grid-cols-1 md:grid-cols-4 gap-4 mb-6">
                        <div>
                            <label class="block text-xs font-bold mb-1 text-black">Role <span class="text-orange-500">*</span></label>
                            <input type="text" class="w-full border border-gray-400 rounded p-2 text-sm text-gray-700">
                        </div>
                        <div>
                            <label class="block text-xs font-bold mb-1 text-black">Type <span class="text-orange-500">*</span></label>
                            <input type="text" class="w-full border border-gray-400 rounded p-2 text-sm text-gray-700">
                        </div>
                        <div>
                            <label class="block text-xs font-bold mb-1 text-black">Location <span class="text-orange-500">*</span></label>
                            <input type="text" class="w-full border border-gray-400 rounded p-2 text-sm text-gray-700">
                        </div>
                        <div>
                            <label class="block text-xs font-bold mb-1 text-black">Field Office Handled <span class="text-orange-500">*</span></label>
                            <input type="text" class="w-full border border-gray-400 rounded p-2 text-sm text-gray-700">
                        </div>
                    </div>

                    <label class="block text-xs font-bold mb-3 text-black">Permissions <span class="text-orange-500">*</span></label>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        
                        <div class="flex flex-col gap-6">
                            <div class="border border-gray-300">
                                <div class="bg-gray-200 px-4 py-2 border-b border-gray-300 flex items-center gap-2">
                                    <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-400">
                                    <span class="text-sm font-bold text-gray-700">Registration Module</span>
                                </div>
                                <div class="p-4 space-y-2">
                                    <label class="flex items-center gap-2 cursor-pointer">
                                        <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-300 rounded">
                                        <span class="text-xs text-black">Manage Senior Citizen, Booklet and Slip</span>
                                    </label>
                                    <label class="flex items-center gap-2 cursor-pointer">
                                        <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-300 rounded">
                                        <span class="text-xs text-black">View Senior Citizen Profile</span>
                                    </label>
                                    <label class="flex items-center gap-2 cursor-pointer">
                                        <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-300 rounded">
                                        <span class="text-xs text-black">View Pending Request</span>
                                    </label>
                                    <label class="flex items-center gap-2 cursor-pointer">
                                        <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-300 rounded">
                                        <span class="text-xs text-black">Application Monitoring</span>
                                    </label>
                                    <label class="flex items-center gap-2 cursor-pointer">
                                        <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-300 rounded">
                                        <span class="text-xs text-black">Deceased Archiving</span>
                                    </label>
                                    <label class="flex items-center gap-2 cursor-pointer">
                                        <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-300 rounded">
                                        <span class="text-xs text-black">Generate Reports</span>
                                    </label>
                                    <label class="flex items-center gap-2 cursor-pointer">
                                        <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-300 rounded">
                                        <span class="text-xs text-black">Printing of ID</span>
                                    </label>
                                </div>
                            </div>

                            <div class="border border-gray-300">
                                <div class="bg-gray-200 px-4 py-2 border-b border-gray-300 flex items-center gap-2">
                                    <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-400">
                                    <span class="text-sm font-bold text-gray-700">Account Module</span>
                                </div>
                                <div class="p-4 space-y-2">
                                    <label class="flex items-center gap-2 cursor-pointer">
                                        <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-300 rounded">
                                        <span class="text-xs text-black">Manage User Accounts</span>
                                    </label>
                                    <label class="flex items-center gap-2 cursor-pointer">
                                        <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-300 rounded">
                                        <span class="text-xs text-black">View Users Access Logs</span>
                                    </label>
                                    <label class="flex items-center gap-2 cursor-pointer">
                                        <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-300 rounded">
                                        <span class="text-xs text-black">View Users Activity Logs</span>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="flex flex-col gap-6">
                            <div class="border border-gray-300 h-full">
                                <div class="bg-gray-200 px-4 py-2 border-b border-gray-300 flex items-center gap-2">
                                    <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-400">
                                    <span class="text-sm font-bold text-gray-700">Complaint Module</span>
                                </div>
                                <div class="p-4 space-y-2">
                                    <label class="flex items-center gap-2 cursor-pointer">
                                        <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-300 rounded">
                                        <span class="text-xs text-black">Manage Complaint</span>
                                    </label>
                                    <label class="flex items-center gap-2 cursor-pointer">
                                        <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-300 rounded">
                                        <span class="text-xs text-black">View Complaints</span>
                                    </label>
                                    <label class="flex items-center gap-2 cursor-pointer">
                                        <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-300 rounded">
                                        <span class="text-xs text-black">View Pending Cases</span>
                                    </label>
                                    <label class="flex items-center gap-2 cursor-pointer">
                                        <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-300 rounded">
                                        <span class="text-xs text-black">Compute for amount billable</span>
                                    </label>
                                    <label class="flex items-center gap-2 cursor-pointer">
                                        <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-300 rounded">
                                        <span class="text-xs text-black">Complaint Monitoring</span>
                                    </label>
                                    <label class="flex items-center gap-2 cursor-pointer">
                                        <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-300 rounded">
                                        <span class="text-xs text-black">Archiving</span>
                                    </label>
                                    <label class="flex items-center gap-2 cursor-pointer">
                                        <input type="checkbox" class="checkbox-md accent-blue-900 border-gray-300 rounded">
                                        <span class="text-xs text-black">Generate Reports</span>
                                    </label>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="flex justify-end mt-4 mb-10">
                <button type="button" class="brand-blue text-white font-bold py-3 px-8 rounded-lg shadow hover:opacity-90 transition text-sm">
                    Create Account
                </button>
            </div>

        </form>

    </main>

</body>

</html>