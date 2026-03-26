<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.pms.model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null || !"Patient".equals(user.getRole())) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Privacy Vault | PMS Health</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/topbar.css">
    <style>
        .vault-container { max-width: 900px; margin: 0 auto; }
        .vault-card { background: white; border-radius: 20px; padding: 2.5rem; border: 1.5px solid var(--border-color); box-shadow: 0 10px 25px rgba(0,0,0,0.03); margin-top: 1rem; }
        .permission-item { display: flex; align-items: center; justify-content: space-between; padding: 1.25rem 0; border-bottom: 1px solid var(--border-color); }
        .permission-item:last-child { border-bottom: none; }
        .perm-info h4 { font-size: 1rem; font-weight: 700; color: var(--text-dark); margin-bottom: 0.25rem; }
        .perm-info p { font-size: 0.85rem; color: var(--text-muted); }
        .switch { position: relative; display: inline-block; width: 44px; height: 24px; }
        .switch input { opacity: 0; width: 0; height: 0; }
        .slider { position: absolute; cursor: pointer; top: 0; left: 0; right: 0; bottom: 0; background-color: #e2e8f0; transition: .4s; border-radius: 34px; }
        .slider:before { position: absolute; content: ""; height: 18px; width: 18px; left: 3px; bottom: 3px; background-color: white; transition: .4s; border-radius: 50%; }
        input:checked + .slider { background-color: var(--teal-primary); }
        input:checked + .slider:before { transform: translateX(20px); }
    </style>
</head>
<body>
    <div class="dashboard-layout">
        <jsp:include page="components/sidebar.jsp" />
        <main class="main-content">
            <jsp:include page="components/topbar.jsp" />
            <div class="main-inner-content">
                <div class="vault-container">
                    <div class="page-title">
                        <h1 style="display: flex; align-items: center; gap: 0.75rem;">
                            <svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>
                            Your Privacy Vault
                        </h1>
                        <p class="text-muted">Take full control of who can see your medical records and for how long.</p>
                    </div>

                    <div class="vault-card">
                        <h3>Active Data Permissions</h3>
                        
                        <div class="permission-item">
                            <div class="perm-info">
                                <h4>Medical History Sharing</h4>
                                <p>Allow clinics to pull your historical clinical summaries.</p>
                            </div>
                            <label class="switch"><input type="checkbox" checked><span class="slider"></span></label>
                        </div>

                        <div class="permission-item">
                            <div class="perm-info">
                                <h4>Lab Results (Automated)</h4>
                                <p>Enable third-party labs to auto-insert reports into your record.</p>
                            </div>
                            <label class="switch"><input type="checkbox" checked><span class="slider"></span></label>
                        </div>

                        <div class="permission-item">
                            <div class="perm-info">
                                <h4>External Pharmacy API</h4>
                                <p>Allow pharmacies to verify your e-prescriptions instantly.</p>
                            </div>
                            <label class="switch"><input type="checkbox"><span class="slider"></span></label>
                        </div>

                        <div style="margin-top: 2.5rem; text-align: right;">
                            <button class="btn-primary" style="padding: 0.75rem 2rem;">Save Vault Settings</button>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
</html>
