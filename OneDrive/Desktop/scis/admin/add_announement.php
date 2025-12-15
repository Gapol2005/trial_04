<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Announcement - OSCA</title>
    
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
    // We can manually set this to 'announcement.php' so the parent menu stays active
    $current_page = 'announcement.php';
    ?>

    <?php include 'sidebar.php'; ?>

    <div class="ml-64 w-full min-h-screen flex flex-col">
        
        <?php include 'header.php'; ?>

        <main class="flex-1 p-8 overflow-y-auto">
            
            <div class="mb-4">
                <a href="announcement.php" class="text-gray-500 hover:text-dashboardBlue flex items-center gap-2 transition text-sm font-medium">
                    <i class="fa-solid fa-arrow-left"></i> Back to Announcements
                </a>
            </div>

            <div class="bg-white rounded-lg shadow-md p-8 border border-gray-100">
                
                <h2 class="text-2xl font-bold text-dashboardBlue mb-8">Create an Announcement</h2>

                <form action="submit_announcement.php" method="POST" enctype="multipart/form-data">
                    
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-x-8 gap-y-6 mb-6">
                        
                        <div class="md:col-span-1">
                            <label class="block text-gray-800 font-bold mb-2">Title</label>
                            <input type="text" name="title" class="w-full border border-gray-400 rounded-lg px-4 py-3 focus:outline-none focus:border-dashboardBlue focus:ring-1 focus:ring-dashboardBlue bg-white">
                        </div>

                        <div class="md:col-span-1">
                            <label class="block text-gray-800 font-bold mb-2">Date</label>
                            <input type="date" name="event_date" class="w-full border border-gray-400 rounded-lg px-4 py-3 focus:outline-none focus:border-dashboardBlue focus:ring-1 focus:ring-dashboardBlue bg-white text-gray-600">
                        </div>

                        <div class="md:col-span-1">
                            <label class="block text-gray-800 font-bold mb-2">Time</label>
                            <input type="time" name="event_time" class="w-full border border-gray-400 rounded-lg px-4 py-3 focus:outline-none focus:border-dashboardBlue focus:ring-1 focus:ring-dashboardBlue bg-white text-gray-600">
                        </div>

                         <div class="md:col-span-1">
                            <label class="block text-gray-800 font-bold mb-2">Location</label>
                            <input type="text" name="location" class="w-full border border-gray-400 rounded-lg px-4 py-3 focus:outline-none focus:border-dashboardBlue focus:ring-1 focus:ring-dashboardBlue bg-white">
                        </div>

                        <div class="md:col-span-2">
                             <label class="block text-gray-800 font-bold mb-2">Target Audience</label>
                            <input type="text" name="target_audience" class="w-full border border-gray-400 rounded-lg px-4 py-3 focus:outline-none focus:border-dashboardBlue focus:ring-1 focus:ring-dashboardBlue bg-white">
                        </div>

                    </div>

                    <div class="mb-8">
                        <label class="block text-gray-800 font-bold mb-2">Description</label>
                        <textarea name="description" rows="8" class="w-full border border-gray-400 rounded-lg px-4 py-3 focus:outline-none focus:border-dashboardBlue focus:ring-1 focus:ring-dashboardBlue bg-white resize-none"></textarea>
                    </div>

                    <div class="flex flex-col md:flex-row justify-between items-center gap-4 pt-2">
                        
                        <div class="flex items-center gap-4 text-2xl text-black">
                            <label class="cursor-pointer hover:text-gray-600 transition">
                                <input type="file" class="hidden">
                                <i class="fa-solid fa-arrow-up-from-bracket"></i>
                            </label>
                            
                            <label class="cursor-pointer hover:text-gray-600 transition">
                                <input type="file" accept="video/*" class="hidden">
                                <i class="fa-solid fa-video"></i>
                            </label>

                             <label class="cursor-pointer hover:text-gray-600 transition">
                                <input type="file" accept="image/*" class="hidden">
                                <i class="fa-regular fa-image"></i>
                            </label>
                        </div>

                        <button type="submit" class="bg-dashboardBlue text-white py-3 px-12 rounded-full font-bold hover:bg-indigo-900 transition shadow-md flex items-center gap-2 text-lg">
                            Post <i class="fa-solid fa-arrow-right"></i>
                        </button>

                    </div>

                </form>
            </div>

        </main>
    </div>

</body>
</html>