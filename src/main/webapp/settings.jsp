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
        /* Fallback if style.css update failed */
        .settings-container { display: flex; flex-direction: column; gap: 2rem; }
        .settings-tabs { display: flex; gap: 1rem; border-bottom: 2px solid var(--border-color); padding-bottom: 0.5rem; margin-bottom: 2rem; }
        .tab-btn { padding: 0.75rem 1.5rem; border: none; background: none; color: var(--text-muted); font-weight: 600; cursor: pointer; position: relative; transition: all 0.3s ease; font-size: 1rem; }
        .tab-btn:hover { color: var(--teal-primary); }
        .tab-btn.active { color: var(--teal-primary); }
        .tab-btn.active::after { content: ''; position: absolute; bottom: -0.7rem; left: 0; width: 100%; height: 3px; background: var(--teal-primary); border-radius: 2px; }
        .settings-section { display: none; animation: fadeIn 0.3s ease; }
        .settings-section.active { display: block; }
        @keyframes fadeIn { from { opacity: 0; transform: translateY(10px); } to { opacity: 1; transform: translateY(0); } }
        .settings-form-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem; }
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
                    <p class="text-muted">Manage your profile and security preferences</p>
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
                    </div>

                    <!-- Profile Section -->
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
                                        <label>Role</label>
                                        <input type="text" value="<%= currentUser.getRole() %>" readonly class="form-control" style="background: #f8fafc; border-bottom: 2px solid var(--border-color);">
                                    </div>
                                </div>
                                <div style="margin-top: 2rem; display: flex; justify-content: flex-end;">
                                    <button type="submit" class="btn-primary" style="width: auto; padding: 0.8rem 2.5rem;">Update Profile</button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <!-- Security Section -->
                    <div id="security-section" class="settings-section">
                        <div class="data-card" style="padding: 2.5rem;">
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
                    </div>
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
            document.getElementById(tabName + '-section').classList.add('active');
            
            // Activate button
            event.currentTarget.classList.add('active');
        }
    </script>
</body>
</html>
