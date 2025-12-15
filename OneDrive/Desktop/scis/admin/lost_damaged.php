<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zamboanga City OSCA - Lost/Damage</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../css/style.css">
</head>
<body class="inter-body text-gray-700 flex flex-col min-h-screen">

    <header class="bg-white border-b border-gray-200 py-3 px-4 md:px-8 flex justify-between items-center sticky top-0 z-20">
        <div class="flex items-center gap-4">
            <button onclick="window.location.href='registration_category.php'" class="text-blue-600 bg-blue-50 hover:bg-blue-100 rounded-full h-8 w-8 flex items-center justify-center transition">
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
        
        <div class="flex flex-col md:flex-row gap-6 mb-8 items-start">
            <div class="flex-grow">
                <h2 class="text-2xl font-bold brand-blue-text">Lost/ Damage</h2>
                <p class="text-sm text-gray-600">Replace Lost or Damaged Senior Citizen ID</p>
            </div>

            <div class="flex items-center gap-4 w-full md:w-auto">
                <label class="font-bold text-black text-sm md:text-base hidden md:block">Reason for replacement:</label>
                <div class="relative">
                    <select class="appearance-none border border-gray-300 rounded-md px-4 py-2 w-56 text-gray-700 bg-white focus:outline-none focus:border-blue-900 shadow-sm font-medium">
                        <option>----Select----</option>
                        <option>Damaged</option>
                        <option>Lost</option>
                    </select>
                    <div class="absolute inset-y-0 right-0 flex items-center px-3 pointer-events-none text-gray-500">
                        <i class="fa-solid fa-chevron-down text-xs"></i>
                    </div>
                </div>
            </div>
        </div>

        <form>
            <div class="bg-white rounded-xl shadow-sm border border-gray-100 overflow-hidden">
                
                <div class="p-6 md:p-10 border-b border-gray-100">
                    <h3 class="text-xl font-bold brand-blue-text mb-6">Senior Details</h3>
                    
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div>
                            <label class="block text-sm font-semibold mb-2 text-black">OSCA ID Number <span class="text-orange-500">*</span></label>
                            <input type="text" placeholder="Enter OSCA ID (e.g., ZC-2023-001234)" class="w-full border border-gray-300 rounded-md p-3 text-gray-700">
                        </div>
                        
                        <div>
                            <label class="block text-sm font-semibold mb-2 text-black">Location <span class="text-orange-500">*</span></label>
                            <div class="relative">
                                <select class="w-full border border-gray-300 rounded-md p-3 text-gray-700 appearance-none bg-white">
                                    <option>Select Field</option>
                                    <option>Zamboanga City</option>
                                    <option>Other</option>
                                </select>
                                <div class="absolute inset-y-0 right-0 flex items-center px-3 pointer-events-none text-gray-500">
                                    <i class="fa-solid fa-chevron-down text-xs"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="p-6 md:p-10">
                    <h3 class="text-xl font-bold brand-blue-text mb-6">Requirements</h3>

                    <div class="space-y-6 mb-8">
                        
                        <div class="border border-gray-300 rounded-xl p-6">
                            <h4 class="font-bold text-sm text-black mb-3">Affidavit of Loss</h4>
                            <div class="flex flex-col gap-2">
                                <input type="file" class="w-full text-sm text-gray-500">
                                <p class="text-xs text-gray-500 italic mt-1">Upload birth certificate or any valid government ID showing date of birth</p>
                            </div>
                        </div>

                        <div class="border border-gray-300 rounded-xl p-6">
                            <h4 class="font-bold text-sm text-black mb-3">1 Original Copy of Barangay Certificate</h4>
                            <div class="flex flex-col gap-2">
                                <input type="file" class="w-full text-sm text-gray-500">
                                <p class="text-xs text-gray-500 italic mt-1">Upload birth certificate or any valid government ID showing date of birth</p>
                            </div>
                        </div>

                        <div class="border border-gray-300 rounded-xl p-6">
                            <h4 class="font-bold text-sm text-black mb-3">1 Photo Copy Birth Certificate</h4>
                            <div class="flex flex-col gap-2">
                                <input type="file" class="w-full text-sm text-gray-500">
                                <p class="text-xs text-gray-500 italic mt-1">Upload birth certificate or any valid government ID showing date of birth</p>
                            </div>
                        </div>

                        <div class="border border-gray-300 rounded-xl p-6">
                            <h4 class="font-bold text-sm text-black mb-3">Picture of Old Senior Citizen ID:</h4>
                            <div class="flex flex-col gap-2">
                                <input type="file" class="w-full text-sm text-gray-500">
                                <p class="text-xs text-gray-500 italic mt-1">Upload birth certificate or any valid government ID showing date of birth</p>
                            </div>
                        </div>

                        <div class="flex items-center gap-3 mt-6 px-1">
                            <input type="checkbox" class="checkbox-lg border-2 border-gray-300 rounded cursor-pointer accent-blue-900">
                            <span class="text-sm italic text-black font-medium">This Certify That The Information is Verified and Ready for Processing</span>
                        </div>

                    </div>
                </div>
            </div>

            <div class="flex flex-col md:flex-row justify-between items-center gap-4 pt-10 pb-10">
                <div class="flex gap-4 w-full md:w-auto">
                    
                    <button type="button" class="w-full md:w-auto px-6 py-3 border border-gray-400 rounded-lg text-black font-medium hover:bg-gray-50 text-lg">Reset Form</button>
                </div>
                
                <div class="flex gap-4 w-full md:w-auto">
                    <button type="button" class="w-full md:w-auto px-6 py-3 border border-gray-400 rounded-lg text-black font-medium hover:bg-gray-50 flex items-center justify-center gap-2 text-lg">
                        <i class="fa-regular fa-floppy-disk"></i> Save Draft
                    </button>
                    <button type="button" onclick="alert('Submitted to OSCA!')" class="w-full md:w-auto px-8 py-3 brand-blue text-white font-bold rounded-lg hover:opacity-90 flex items-center justify-center gap-2 transition text-lg">
                        Submit to Osca <i class="fa-solid fa-arrow-right"></i>
                    </button>
                </div>
            </div>

        </form>

    </main>

</body>
</html>