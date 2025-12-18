<?php include 'auth_check.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Application Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body class="font-sans">
<?php include 'sidebar.php'; ?>
<div class="ml-64 p-8">
    <div class="flex items-center justify-center">
        <div class="w-full max-w-4xl">
            <div id="app-card" class="bg-white rounded-xl shadow-xl p-6 relative">
                <div id="duplicate-banner" class="hidden absolute top-4 left-6 right-6 bg-green-50 border border-green-200 text-green-800 rounded px-4 py-2 flex items-center gap-3">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4"></path></svg>
                    <div>This Person Has No Duplicates in the System<br><small class="text-xs">Please Check Requirements for Verification.</small></div>
                </div>

                <div class="flex justify-between items-start mb-4">
                    <h3 class="text-xl font-bold text-indigo-700">Application Details</h3>
                    <div class="flex items-center gap-2">
                        <button id="print-btn" class="px-3 py-2 border rounded bg-white hover:bg-gray-50">📇 Print Profile</button>
                        <button id="download-btn" class="px-3 py-2 border rounded bg-white hover:bg-gray-50">⬇️ Download PDF</button>
                    </div>
                </div>

                <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                    <div class="md:col-span-1 flex flex-col items-center gap-3">
                        <div class="w-28 h-28 rounded-full overflow-hidden bg-gray-100">
                            <img id="profile-pic" src="../img/default-avatar.png" class="w-full h-full object-cover" alt="profile">
                        </div>
                        <div class="text-center">
                            <div id="profile-name" class="font-semibold text-lg"></div>
                            <div id="profile-osca" class="text-sm text-gray-600"></div>
                        </div>
                    </div>

                    <div class="md:col-span-2">
                        <div class="bg-gray-50 border rounded p-4 mb-4">
                            <h4 class="text-sm font-bold text-indigo-700 mb-2">PERSONAL INFORMATION</h4>
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-4 text-sm text-gray-800">
                                <div>
                                    <div class="text-xs text-gray-500">FULL NAME</div>
                                    <div id="pi-fullname" class="font-medium"></div>
                                </div>
                                <div>
                                    <div class="text-xs text-gray-500">CIVIL STATUS / SEX</div>
                                    <div id="pi-gender" class="font-medium"></div>
                                </div>

                                <div>
                                    <div class="text-xs text-gray-500">DATE OF BIRTH</div>
                                    <div id="pi-birth" class="font-medium"></div>
                                </div>
                                <div>
                                    <div class="text-xs text-gray-500">BARANGAY</div>
                                    <div id="pi-barangay" class="font-medium"></div>
                                </div>

                                <div>
                                    <div class="text-xs text-gray-500">AGE</div>
                                    <div id="pi-age" class="font-medium"></div>
                                </div>
                                <div>
                                    <div class="text-xs text-gray-500">COMPLETE ADDRESS</div>
                                    <div id="pi-address" class="font-medium"></div>
                                </div>
                            </div>
                        </div>

                        <div class="bg-white border rounded p-4 mb-4">
                            <h4 class="text-sm font-bold text-indigo-700 mb-2">UPLOADED REQUIREMENTS</h4>
                            <div id="docs-grid" class="grid grid-cols-2 md:grid-cols-3 gap-3 text-sm"></div>
                        </div>

                        <div class="bg-white border rounded p-4 mb-4" id="family-section">
                            <h4 class="text-sm font-bold text-indigo-700 mb-2">FAMILY COMPOSITION AND ASSOCIATION</h4>
                            <div id="family-grid" class="text-sm text-gray-800"></div>
                        </div>

                        <div class="bg-white border rounded p-4">
                            <h4 class="text-sm font-bold text-indigo-700 mb-2">ATTESTED BY</h4>
                            <div class="grid grid-cols-2 gap-2 text-sm text-gray-800">
                                <div>
                                    <div class="text-xs text-gray-500">REGISTRATION DATE</div>
                                    <div id="att-registration" class="font-medium"></div>
                                </div>
                                <div>
                                    <div class="text-xs text-gray-500">BARANGAY</div>
                                    <div id="att-barangay" class="font-medium"></div>
                                </div>

                                <div>
                                    <div class="text-xs text-gray-500">REGISTERED BY</div>
                                    <div id="att-registered" class="font-medium"></div>
                                </div>
                                <div>
                                    <div class="text-xs text-gray-500">LAST UPDATED</div>
                                    <div id="att-updated" class="font-medium"></div>
                                </div>

                                <div class="md:col-span-2">
                                    <div class="text-xs text-gray-500">STAFF POSITION</div>
                                    <div id="att-position" class="font-medium">Social Worker</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="flex justify-end mt-6 gap-2">
                    <button id="continue-btn" class="bg-white border border-gray-300 text-gray-800 px-4 py-2 rounded hidden">Continue / Edit</button>
                    <button id="approve-btn" class="bg-indigo-800 text-white px-6 py-2 rounded hidden">Approve</button>
                </div>
            </div>
        </div>
    </div>

<script>
    const params = new URLSearchParams(window.location.search);
    const id = params.get('id');
    if (!id) { alert('No application id'); location.href = 'registration_category.php'; }

    function formatDate(dt) {
        if (!dt) return '';
        try { const d = new Date(dt); return d.toLocaleString(); } catch(e) { return dt; }
    }

    async function load() {
        const res = await fetch(`../api/applications/details.php?id=${id}`);
        const json = await res.json();
        if (!json.success) { alert('Failed to load: ' + json.message); location.href='registration_category.php'; }
        const app = json.data;

        // populate header/profile
        const fullName = (app.senior_name || (app.first_name + ' ' + app.last_name)).trim();
        document.getElementById('profile-name').textContent = fullName || '';
        document.getElementById('profile-osca').textContent = app.osca_id ? ('OSCA ID: ' + app.osca_id) : '';
        document.getElementById('pi-fullname').textContent = fullName || '';
        document.getElementById('pi-gender').textContent = (app.gender_id ? (app.gender_name || '') : '') || (app.sex || '');
        document.getElementById('pi-birth').textContent = app.birthdate || '';
        document.getElementById('pi-barangay').textContent = app.barangay_name || '';
        document.getElementById('pi-age').textContent = app.age || '';
        const addr = [app.house_number, app.street].filter(Boolean).join(', ');
        document.getElementById('pi-address').textContent = addr;

        // Attested
        document.getElementById('att-registration').textContent = app.submission_date || app.created_at || '';
        document.getElementById('att-barangay').textContent = app.barangay_name || '';
        document.getElementById('att-registered').textContent = app.submitted_by_name || app.registered_by || '';
        document.getElementById('att-updated').textContent = formatDate(app.updated_at || app.approval_date || app.verification_date || '');

        // Documents grid with type labels
        const docsGrid = document.getElementById('docs-grid');
        docsGrid.innerHTML = '';
        const docTypeLabels = {
            '1': 'Proof of Age',
            '2': 'Barangay Certification / Residency',
            '3': 'Comelec ID / Certification',
            '4': 'Senior Picture'
        };
        (app.documents || []).forEach(d => {
            const btn = document.createElement('a');
            btn.href = d.file_path ? ('../' + d.file_path) : '#';
            btn.target = '_blank';
            btn.className = 'px-3 py-2 border rounded text-sm text-center block bg-white hover:bg-gray-50';
            const label = docTypeLabels[String(d.document_type_id)] || d.original_filename || 'Document';
            btn.textContent = label;
            docsGrid.appendChild(btn);
        });

        // Family Composition and Association
        const familyGrid = document.getElementById('family-grid');
        const familySection = document.getElementById('family-section');
        if (app.family_members && app.family_members.length > 0) {
            let html = '<ul class="space-y-2">';
            app.family_members.forEach((fm, idx) => {
                const fName = [fm.first_name, fm.middle_name, fm.last_name].filter(Boolean).join(' ');
                html += `<li><strong>Member ${idx + 1}:</strong> ${fName} (${fm.relationship || 'N/A'}) - Age: ${fm.age || 'N/A'}</li>`;
            });
            html += '</ul>';
            familyGrid.innerHTML = html;
        } else {
            familyGrid.innerHTML = '<p class="text-gray-500 italic">No family members recorded</p>';
        }

        // Profile picture
        if (app.photo_path) document.getElementById('profile-pic').src = '../' + app.photo_path;

        // Duplicate banner (placeholder logic)
        // If API provides a duplicates field, show accordingly. For now, show only if app.duplicates === 0
        if (typeof app.duplicates !== 'undefined') {
            if (app.duplicates === 0) document.getElementById('duplicate-banner').classList.remove('hidden');
        }

        const status = (app.status || '').toLowerCase();
        const continueBtn = document.getElementById('continue-btn');
        const approveBtn = document.getElementById('approve-btn');

        // Continue/Edit should be available for drafts/pending and verification stages
        if (['draft','pending','for verification','submitted'].includes(status)) {
            continueBtn.classList.remove('hidden');
            continueBtn.onclick = () => {
                window.location.href = `new_id.php?application_id=${id}`;
            };
        }

        // Approve should only be shown for complete submissions (for verification / submitted)
        if (['for verification','submitted'].includes(status)) {
            approveBtn.classList.remove('hidden');
            approveBtn.onclick = () => {
                if (!confirm('Approve this application and create a senior record?')) return;
                updateStatus('Approved');
            };
        }

        // Print / Download handlers (use browser print)
        document.getElementById('print-btn').addEventListener('click', () => window.print());
        document.getElementById('download-btn').addEventListener('click', () => window.print());
    }

    async function updateStatus(newStatus, notes = null) {
        try {
            const payload = { application_id: id, status: newStatus };
            if (notes) payload.notes = notes;
            const res = await fetch('../api/applications/update_status.php', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(payload)
            });
            const json = await res.json();
            if (json.success) {
                alert('Status updated');
                window.location.reload();
            } else {
                alert('Failed: ' + (json.message || 'Unknown'));
            }
        } catch (err) { alert('Network error: ' + err.message); }
    }

    load();
</script>
</body>
</html>
