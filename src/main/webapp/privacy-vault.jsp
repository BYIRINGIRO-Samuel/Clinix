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
</head>
<body class="premium-font">
    <div class="dashboard-layout">
        <jsp:include page="components/sidebar.jsp" />
        <main class="main-content">
            <jsp:include page="components/topbar.jsp" />
            <div class="main-inner-content">
                
                <div class="hero-glass" style="margin-bottom: 2.5rem; background: linear-gradient(135deg, #1e293b, #0f172a);">
                    <div style="max-width: 600px;">
                        <div class="status-indicator" style="margin-bottom: 1rem; color: #38bdf8;">
                            <i data-lucide="shield-check" style="width: 16px; height: 16px;"></i>
                            End-to-End Encryption ACTIVE
                        </div>
                        <h1 style="font-size: 3.5rem; line-height: 1; margin-bottom: 1rem;">Privacy Vault</h1>
                        <p style="font-size: 1.1rem; opacity: 0.9;">Total sovereign control over your clinical data. Revoke or grant access with granular precision.</p>
                    </div>
                </div>

                <div class="glass-container" style="max-width: 800px; margin: 0 auto;">
                    <style>
                        .perm-item { display: flex; align-items: center; justify-content: space-between; padding: 1.5rem 0; border-bottom: 1px solid rgba(0,0,0,0.05); }
                        .perm-item:last-child { border-bottom: none; }
                        .switch { position: relative; width: 44px; height: 24px; }
                        .switch input { opacity: 0; width: 0; height: 0; }
                        .slider { position: absolute; cursor: pointer; top:0; left:0; right:0; bottom:0; background-color: #e2e8f0; transition: .4s; border-radius: 34px; }
                        .slider:before { position: absolute; content: ""; height: 18px; width: 18px; left: 3px; bottom: 3px; background-color: white; transition: .4s; border-radius: 50%; }
                        input:checked + .slider { background-color: var(--premium-accent); }
                        input:checked + .slider:before { transform: translateX(20px); }
                    </style>
                    
                    <div class="perm-item">
                        <div>
                            <h4 style="font-weight: 700;">Global Clinical Sync</h4>
                            <p style="font-size: 0.85rem; color: var(--text-muted);">Allow hospital networks to fetch your historical records.</p>
                        </div>
                        <label class="switch"><input type="checkbox" checked><span class="slider"></span></label>
                    </div>

                    <div class="perm-item">
                        <div>
                            <h4 style="font-weight: 700;">Lab Integration</h4>
                            <p style="font-size: 0.85rem; color: var(--text-muted);">Automated ingestion of diagnostic reports.</p>
                        </div>
                        <label class="switch"><input type="checkbox" checked><span class="slider"></span></label>
                    </div>

                    <div class="perm-item">
                        <div>
                            <h4 style="font-weight: 700;">Pharmacy Bio-Verificaton</h4>
                            <p style="font-size: 0.85rem; color: var(--text-muted);">Third-party verification of active prescriptions.</p>
                        </div>
                        <label class="switch"><input type="checkbox"><span class="slider"></span></label>
                    </div>

                    <div style="margin-top: 2rem; text-align: right;">
                        <button class="premium-btn">Update Vault Security</button>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/lucide@latest/dist/umd/lucide.min.js"></script>
    <script>lucide.createIcons();</script>
</body>
</html>
            </div>
        </main>
    </div>
</body>
</html>
