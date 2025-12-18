<aside class="w-64 bg-gradient-to-b from-indigo-900 via-indigo-800 to-indigo-900 text-white fixed h-full left-0 top-0 flex flex-col z-50 shadow-2xl font-sans overflow-hidden border-r border-indigo-700/50">
    <!-- Header with logo -->
    <div class="px-6 py-6 border-b border-indigo-700/50">
        <div class="flex items-center gap-3">
            <div class="w-10 h-10 bg-white/10 rounded-lg flex items-center justify-center backdrop-blur-sm border border-white/20">
                <i class="fa-solid fa-id-card-clip text-xl text-white"></i>
            </div>
            <div>
                <h1 class="font-bold text-lg tracking-wide">SCIS</h1>
                <p class="text-xs text-white/60">Senior Citizens</p>
            </div>
        </div>
    </div>

    <!-- Navigation -->
    <nav class="flex-1 py-4 px-3 overflow-y-auto">
        <ul class="space-y-1">
            <li>
                <a href="dashboard.php"
                    class="flex items-center gap-3 px-3 py-2.5 rounded-lg <?php echo ($current_page == 'dashboard.php') ? 'bg-white text-indigo-900 font-semibold shadow-lg' : 'text-white/80 hover:bg-white/10 hover:text-white transition-all duration-200'; ?>">
                    <i class="fa-solid fa-chart-line w-5 text-center"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li>
                <a href="registration_category.php"
                    class="flex items-center gap-3 px-3 py-2.5 rounded-lg <?php echo ($current_page == 'registration_category.php' || $current_page == 'senior_citizen_list.php' || $current_page == 'application_view.php' || $current_page == 'new_id.php') ? 'bg-white text-indigo-900 font-semibold shadow-lg' : 'text-white/80 hover:bg-white/10 hover:text-white transition-all duration-200'; ?>">
                    <i class="fa-solid fa-users w-5 text-center"></i>
                    <span>Registration</span>
                </a>
            </li>
            <li>
                <a href="complaints.php"
                    class="flex items-center gap-3 px-3 py-2.5 rounded-lg <?php echo ($current_page == 'complaints.php') ? 'bg-white text-indigo-900 font-semibold shadow-lg' : 'text-white/80 hover:bg-white/10 hover:text-white transition-all duration-200'; ?>">
                    <i class="fa-solid fa-file-circle-exclamation w-5 text-center"></i>
                    <span>Complaints</span>
                </a>
            </li>
            <li>
                <a href="id_printing.php"
                    class="flex items-center gap-3 px-3 py-2.5 rounded-lg <?php echo ($current_page == 'id_printing.php') ? 'bg-white text-indigo-900 font-semibold shadow-lg' : 'text-white/80 hover:bg-white/10 hover:text-white transition-all duration-200'; ?>">
                    <i class="fa-solid fa-id-card w-5 text-center"></i>
                    <span>ID Printing</span>
                </a>
            </li>
            <li>
                <a href="accounts.php"
                    class="flex items-center gap-3 px-3 py-2.5 rounded-lg <?php echo ($current_page == 'accounts.php') ? 'bg-white text-indigo-900 font-semibold shadow-lg' : 'text-white/80 hover:bg-white/10 hover:text-white transition-all duration-200'; ?>">
                    <i class="fa-solid fa-user-gear w-5 text-center"></i>
                    <span>Accounts</span>
                </a>
            </li>
            <li>
                <a href="archives.php"
                    class="flex items-center gap-3 px-3 py-2.5 rounded-lg <?php echo ($current_page == 'archives.php') ? 'bg-white text-indigo-900 font-semibold shadow-lg' : 'text-white/80 hover:bg-white/10 hover:text-white transition-all duration-200'; ?>">
                    <i class="fa-solid fa-box-archive w-5 text-center"></i>
                    <span>Archives</span>
                </a>
            </li>
            <li>
                <a href="heatmap.php"
                    class="flex items-center gap-3 px-3 py-2.5 rounded-lg <?php echo ($current_page == 'heatmap.php') ? 'bg-white text-indigo-900 font-semibold shadow-lg' : 'text-white/80 hover:bg-white/10 hover:text-white transition-all duration-200'; ?>">
                    <i class="fa-solid fa-map-location-dot w-5 text-center"></i>
                    <span>Heat Map</span>
                </a>
            </li>
            <li>
                <a href="announcement.php"
                    class="flex items-center gap-3 px-3 py-2.5 rounded-lg <?php echo ($current_page == 'announcement.php') ? 'bg-white text-indigo-900 font-semibold shadow-lg' : 'text-white/80 hover:bg-white/10 hover:text-white transition-all duration-200'; ?>">
                    <i class="fa-solid fa-bullhorn w-5 text-center"></i>
                    <span>Announcements</span>
                </a>
            </li>
            <li>
                <a href="db_test.php"
                    class="flex items-center gap-3 px-3 py-2.5 rounded-lg <?php echo ($current_page == 'db_test.php') ? 'bg-white text-indigo-900 font-semibold shadow-lg' : 'text-white/80 hover:bg-white/10 hover:text-white transition-all duration-200'; ?>">
                    <i class="fa-solid fa-flask w-5 text-center"></i>
                    <span>API/DB Test</span>
                </a>
            </li>
        </ul>
    </nav>

    <!-- Footer -->
    <div class="px-4 py-4 border-t border-indigo-700/50">
        <div class="text-xs text-white/50 text-center">
            <p>© 2025 OSCA System</p>
        </div>
    </div>
</aside>