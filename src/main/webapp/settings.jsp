<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.pms.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Settings | PMS Health</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/topbar.css">
    <style>
        .settings-container { display: flex; flex-direction: column; gap: 2rem; width: 100%; max-width: 100%; }
        .settings-tabs {
            display: flex;
            gap: 1rem;
            border-bottom: 2px solid var(--border-color);
            padding-bottom: 0.5rem;
            margin-bottom: 2rem;
            overflow-x: auto;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
            -ms-overflow-style: none;
            scrollbar-width: none;
        }
        .settings-tabs::-webkit-scrollbar { display: none; }

        .tab-btn {
            padding: 0.75rem 1.5rem;
            border: none;
            background: none;
            color: var(--text-muted);
            font-weight: 600;
            cursor: pointer;
            position: relative;
            transition: all 0.3s ease;
            font-size: 1rem;
            flex-shrink: 0;
        }
        .tab-btn:hover { color: var(--teal-primary); }
        .tab-btn.active { color: var(--teal-primary); }
        .tab-btn.active::after { content: ''; position: absolute; bottom: -0.7rem; left: 0; width: 100%; height: 3px; background: var(--teal-primary); border-radius: 2px; }
        .settings-section { display: none; animation: fadeIn 0.3s ease; width: 100%; }
        .settings-section.active { display: block; }
        @keyframes fadeIn { from { opacity: 0; transform: translateY(10px); } to { opacity: 1; transform: translateY(0); } }
        .settings-form-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.5rem;
            width: 100%;
        }
        .status-message { padding: 1rem 1.5rem; border-radius: 12px; margin-bottom: 2rem; font-weight: 600; display: flex; align-items: center; gap: 0.75rem; }
        .status-success { background: #ecfdf5; color: #10b981; border: 1px solid #d1fae5; }
        .status-error { background: #fef2f2; color: #ef4444; border: 1px solid #fee2e2; }
    </style>
</head>
<body>
    <%
        User currentUser = (User) session.getAttribute("user");
        if (currentUser == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        String status = request.getParameter("status");
        String error = request.getParameter("error");
    %>

    <div class="dashboard-layout">
        <jsp:include page="components/sidebar.jsp" />

        <main class="main-content">
            <jsp:include page="components/topbar.jsp" />

            <div class="main-inner-content">
                <div class="page-title" style="margin-bottom:2rem;">
                    <h1>Account Settings</h1>
                    <p class="text-muted">Manage your profile, system preferences, and security</p>
                </div>

                <% if ("success".equals(status)) { %>
                    <div class="status-message status-success">
                        <svg width="20" height="20" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path d="M5 13l4 4L19 7"></path></svg>
                        Settings updated successfully!
                    </div>
                <% } else if (error != null) { %>
                    <div class="status-message status-error">
                        <svg width="20" height="20" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path d="M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
                        <%= error %>
                    </div>
                <% } %>

                <div class="settings-container">
                    <div class="settings-tabs">
                        <button class="tab-btn active" onclick="showTab('profile')">Profile Information</button>
                        <button class="tab-btn" onclick="showTab('security')">Security</button>
                        <button class="tab-btn" onclick="showTab('preferences')">System Preferences</button>
                        
                        <% if ("Admin".equals(currentUser.getRole())) { %>
                            <button class="tab-btn" onclick="showTab('branding')">Branding & System</button>
                            <button class="tab-btn" onclick="showTab('billing')">Financial & Billing</button>
                            <button class="tab-btn" onclick="showTab('audit')">Audit & Reports</button>
                        <% } else if ("Doctor".equals(currentUser.getRole())) { %>
                            <button class="tab-btn" onclick="showTab('clinical')">Clinical Setup</button>
                            <button class="tab-btn" onclick="showTab('telehealth')">Telehealth & E-Rx</button>
                        <% } else if ("Receptionist".equals(currentUser.getRole())) { %>
                            <button class="tab-btn" onclick="showTab('workflow')">Workflow & Queue</button>
                            <button class="tab-btn" onclick="showTab('comms')">Communications</button>
                        <% } else if ("Patient".equals(currentUser.getRole())) { %>
                            <button class="tab-btn" onclick="showTab('medicalid')">Medical ID & Health</button>
                            <button class="tab-btn" onclick="showTab('privacy')">Privacy & Sharing</button>
                        <% } %>
                    </div>

                    <!-- Profile Section (Shared) -->
                    <div id="profile-section" class="settings-section active">
                        <div class="data-card" style="padding: 2.5rem;">
                            <div style="display: flex; align-items: center; gap: 2rem; margin-bottom: 2.5rem; padding-bottom: 2rem; border-bottom: 1px solid var(--border-color);">
                                <div class="avatar" style="width: 80px; height: 80px; font-size: 2rem; background: var(--teal-primary); color: white;"><%= currentUser.getFullName().charAt(0) %></div>
                                <div>
                                    <h2 style="font-size: 1.5rem; color: var(--text-dark);"><%= currentUser.getFullName() %></h2>
                                    <p class="text-muted" style="font-size: 0.95rem;"><%= currentUser.getRole() %> Account</p>
                                </div>
                            </div>

                            <form action="<%= currentUser.getRole() %>Servlet" method="POST">
                                <input type="hidden" name="action" value="updateProfile">
                                <div class="settings-form-grid">
                                    <div class="form-group">
                                        <label>Full Name</label>
                                        <input type="text" name="fullName" value="<%= currentUser.getFullName() %>" required class="form-control" style="border-bottom: 2px solid var(--border-color);">
                                    </div>
                                    <div class="form-group">
                                        <label>Email Address</label>
                                        <input type="email" name="email" value="<%= currentUser.getEmail() %>" required class="form-control" style="border-bottom: 2px solid var(--border-color);">
                                    </div>
                                    <div class="form-group">
                                        <label>Phone Number</label>
                                        <input type="tel" name="phone" value="<%= currentUser.getPhone() != null ? currentUser.getPhone() : "" %>" class="form-control" style="border-bottom: 2px solid var(--border-color);">
                                    </div>
                                    <div class="form-group">
                                        <label>Staff/Patient ID</label>
                                        <input type="text" value="#<%= currentUser.getId() %>" readonly class="form-control" style="background: #f8fafc; border-bottom: 2px solid var(--border-color);">
                                    </div>
                                </div>
                                <div style="margin-top: 2rem; display: flex; justify-content: flex-end;">
                                    <button type="submit" class="btn-primary" style="width: auto; padding: 0.8rem 2.5rem;">Update Profile</button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <!-- Security Section (Shared) -->
                    <div id="security-section" class="settings-section">
                        <div class="data-card" style="padding: 2.5rem; margin-bottom: 2rem;">
                            <h3 style="margin-bottom: 1.5rem; color: var(--text-dark);">Change Password</h3>
                            <p class="text-muted" style="margin-bottom: 2.5rem;">Ensure your account is using a long, random password to stay secure.</p>

                            <form action="<%= currentUser.getRole() %>Servlet" method="POST">
                                <input type="hidden" name="action" value="changePassword">
                                <div style="max-width: 500px;">
                                    <div class="form-group">
                                        <label>Current Password</label>
                                        <input type="password" name="currentPassword" required class="form-control" style="border-bottom: 2px solid var(--border-color);">
                                    </div>
                                    <div class="form-group">
                                        <label>New Password</label>
                                        <input type="password" name="newPassword" required class="form-control" style="border-bottom: 2px solid var(--border-color);">
                                    </div>
                                    <div class="form-group">
                                        <label>Confirm New Password</label>
                                        <input type="password" name="confirmPassword" required class="form-control" style="border-bottom: 2px solid var(--border-color);">
                                    </div>
                                    <div style="margin-top: 2rem;">
                                        <button type="submit" class="btn-primary" style="width: auto; padding: 0.8rem 2.5rem;">Save Password</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        
                        <div class="data-card" style="padding: 2.5rem;">
                            <h3 style="margin-bottom: 1.5rem; color: var(--text-dark);">Two-Factor Authentication (2FA)</h3>
                            <div style="display:flex; align-items:center; justify-content:space-between; padding: 1.5rem; background: var(--teal-soft); border-radius: 12px; border: 1px dashed var(--teal-primary);">
                                <div>
                                    <h4 style="color: var(--teal-dark); margin-bottom: 0.25rem;">Enable 2FA</h4>
                                    <p class="text-muted" style="font-size: 0.85rem;">Add an extra layer of security using an authenticator app.</p>
                                </div>
                                <button class="btn-sm btn-outline-success">Configure 2FA</button>
                            </div>
                        </div>
                    </div>

                    <!-- Preferences Section (Shared) -->
                    <div id="preferences-section" class="settings-section">
                        <div class="data-card" style="padding: 2.5rem;">
                            <h3 style="margin-bottom: 1.5rem; color: var(--text-dark);">System Customization</h3>
                            
                            <div class="settings-form-grid" style="margin-bottom: 3rem;">
                                <div class="form-group">
                                    <label>System Language</label>
                                    <select class="form-control" style="border-bottom: 2px solid var(--border-color);">
                                        <option>English (US)</option>
                                        <option>French (FR)</option>
                                        <option>Spanish (ES)</option>
                                        <option>Swahili (KE)</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Dashboard Theme</label>
                                    <div style="display:flex; gap:1rem; margin-top: 0.5rem;">
                                        <label style="display:flex; align-items:center; gap:0.5rem; cursor:pointer;">
                                            <input type="radio" name="theme" checked> ☀️ Light
                                        </label>
                                        <label style="display:flex; align-items:center; gap:0.5rem; cursor:pointer;">
                                            <input type="radio" name="theme"> 🌙 Dark
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <h3 style="margin-bottom: 1.5rem; color: var(--text-dark); border-top: 1px solid var(--border-color); padding-top: 2rem;">Notification Channels</h3>
                            <div style="display:grid; gap:1.5rem;">
                                <div style="display:flex; align-items:center; justify-content:space-between;">
                                    <div>
                                        <h4 style="font-size: 1rem; color: var(--text-dark);">Email Notifications</h4>
                                        <p class="text-muted" style="font-size: 0.85rem;">Receive summaries and appointment reminders via email.</p>
                                    </div>
                                    <input type="checkbox" checked style="width: 20px; height: 20px; accent-color: var(--teal-primary);">
                                </div>
                                <div style="display:flex; align-items:center; justify-content:space-between;">
                                    <div>
                                        <h4 style="font-size: 1rem; color: var(--text-dark);">SMS Alerts</h4>
                                        <p class="text-muted" style="font-size: 0.85rem;">Urgent notifications delivered to your phone.</p>
                                    </div>
                                    <input type="checkbox" style="width: 20px; height: 20px; accent-color: var(--teal-primary);">
                                </div>
                            </div>
                        </div>
                    </div>

                    <% if ("Admin".equals(currentUser.getRole())) { %>
                        <!-- Branding & System (Admin) -->
                        <div id="branding-section" class="settings-section">
                            <div class="data-card" style="padding: 2.5rem;">
                                <h3 style="margin-bottom: 1.5rem; color: var(--text-dark);">White-Labeling & Branding</h3>
                                <div class="settings-form-grid">
                                    <div class="form-group">
                                        <label>System Logo</label>
                                        <input type="file" class="form-control" style="border: none; padding: 0.5rem 0;">
                                    </div>
                                    <div class="form-group">
                                        <label>Primary Brand Color</label>
                                        <input type="color" value="#1abf9a" class="form-control" style="height: 45px; padding: 5px;">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: 2rem;">
                                    <label>Maintenance Mode</label>
                                    <div style="display:flex; align-items:center; gap:1rem;">
                                        <button class="btn-sm btn-outline-primary" style="background:#f1f5f9; color:#475569; border:1px solid #cbd5e1;">Disabled</button>
                                        <span class="text-muted" style="font-size: 0.85rem;">Locks system for all non-admin users.</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Financial & Billing (Admin) -->
                        <div id="billing-section" class="settings-section">
                            <div class="data-card" style="padding: 2.5rem;">
                                <h3 style="margin-bottom: 2rem;">Revenue Cycle Management</h3>
                                <div class="settings-form-grid">
                                    <div class="form-group">
                                        <label>Default Currency</label>
                                        <select class="form-control">
                                            <option>USD ($)</option>
                                            <option>EUR (€)</option>
                                            <option>KES (Ksh)</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Tax Percentage (%)</label>
                                        <input type="number" value="16" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Audit & Reports (Admin) -->
                        <div id="audit-section" class="settings-section">
                            <div class="data-card" style="padding: 2.5rem;">
                                <h3 style="margin-bottom: 1.5rem;">Audit Settings</h3>
                                <div style="display:flex; flex-direction:column; gap:1.5rem;">
                                    <div style="display:flex; justify-content:space-between; align-items:center;">
                                        <span>Retain Logs for 90 Days</span>
                                        <input type="checkbox" checked>
                                    </div>
                                    <div style="display:flex; justify-content:space-between; align-items:center;">
                                        <span>Export Financial Reports Monthly</span>
                                        <input type="checkbox">
                                    </div>
                                </div>
                            </div>
                        </div>
                    <% } else if ("Doctor".equals(currentUser.getRole())) { %>
                        <!-- Clinical Setup (Doctor) -->
                        <div id="clinical-section" class="settings-section">
                            <div class="data-card" style="padding: 2.5rem;">
                                <h3 style="margin-bottom: 2rem;">Operational & Consultation Settings</h3>
                                <div class="settings-form-grid">
                                    <div class="form-group">
                                        <label>Start Work Time</label>
                                        <input type="time" value="08:00" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>End Work Time</label>
                                        <input type="time" value="17:00" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Average Consultation (Mins)</label>
                                        <input type="number" value="30" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Auto-Close Appointments</label>
                                        <input type="checkbox" checked>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Telehealth (Doctor) -->
                        <div id="telehealth-section" class="settings-section">
                            <div class="data-card" style="padding: 2.5rem;">
                                <h3 style="margin-bottom: 1.5rem;">Prescription & Telehealth Setup</h3>
                                <div class="form-group">
                                    <label>Digital Signature Image</label>
                                    <div style="border: 2px dashed var(--border-color); padding: 2rem; text-align: center; border-radius: 8px;">
                                        <p class="text-muted">Drop your signature here or <b>Browse</b></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <% } else if ("Receptionist".equals(currentUser.getRole())) { %>
                        <!-- Queue & Workflow (Receptionist) -->
                        <div id="workflow-section" class="settings-section">
                            <div class="data-card" style="padding: 2.5rem;">
                                <h3 style="margin-bottom: 2rem;">Reception Workflow</h3>
                                <div style="display:flex; flex-direction:column; gap:2rem;">
                                    <div style="display:flex; justify-content:space-between;">
                                        <span>Sound Notification on New Check-in</span>
                                        <input type="checkbox" checked>
                                    </div>
                                    <div style="display:flex; justify-content:space-between;">
                                        <span>Auto-Generate Invoice after Booking</span>
                                        <input type="checkbox">
                                    </div>
                                </div>
                            </div>
                        </div>
                    <% } else if ("Patient".equals(currentUser.getRole())) { %>
                        <!-- Medical ID & Health (Patient) -->
                        <div id="medicalid-section" class="settings-section">
                            <div class="data-card" style="padding: 2.5rem;">
                                <h3 style="margin-bottom: 2rem;">Emergency Medical ID</h3>
                                <div class="settings-form-grid">
                                    <div class="form-group">
                                        <label>Blood Group</label>
                                        <select class="form-control"><option>O+</option><option>A+</option><option>B+</option></select>
                                    </div>
                                    <div class="form-group">
                                        <label>Emergency Contact Name</label>
                                        <input type="text" placeholder="John Doe" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Emergency Phone</label>
                                        <input type="tel" placeholder="+123..." class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Privacy (Patient) -->
                        <div id="privacy-section" class="settings-section">
                            <div class="data-card" style="padding: 2.5rem;">
                                <h3 style="margin-bottom: 1.5rem;">Record Sharing Privacy</h3>
                                <div style="display:flex; flex-direction:column; gap:1.5rem;">
                                    <div style="display:flex; justify-content:space-between;">
                                        <span>Allow all doctors to view Lab results</span>
                                        <input type="checkbox" checked>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <% } %>
                </div>
            </div><!-- /.main-inner-content -->
        </main>
    </div>

    <script>
        function showTab(tabName) {
            // Hide all sections
            document.querySelectorAll('.settings-section').forEach(section => {
                section.classList.remove('active');
            });
            // Remove active class from buttons
            document.querySelectorAll('.tab-btn').forEach(btn => {
                btn.classList.remove('active');
            });
            
            // Show target section
            const targetSection = document.getElementById(tabName + '-section');
            if(targetSection) {
                targetSection.classList.add('active');
            }
            
            // Activate button
            event.currentTarget.classList.add('active');
        }
    </script>

</body>
</html>
