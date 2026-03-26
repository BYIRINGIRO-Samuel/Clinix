<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.pms.model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null || !"Admin".equals(user.getRole())) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enterprise AI & Digital Operations | PMS Health</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/topbar.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        .ops-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 2rem; margin-bottom: 2rem; }
        .ops-card { background: white; border-radius: 20px; padding: 1.5rem; border: 1.5px solid var(--border-color); }
        .facility-map { background: #f8fafc; border-radius: 12px; height: 350px; display: grid; grid-template-columns: repeat(4, 1fr); gap: 10px; padding: 10px; border: 1px dashed var(--border-color); }
        .room-item { background: white; border: 1px solid var(--border-color); border-radius: 8px; display: flex; align-items: center; justify-content: center; font-size: 0.75rem; font-weight: 700; position: relative; }
        .room-status { position: absolute; top: 5px; right: 5px; width: 8px; height: 8px; border-radius: 50%; }
        .status-occupied { background: #ef4444; }
        .status-available { background: #22c55e; }
        .status-cleaning  { background: #f59e0b; }
    </style>
</head>
<body>
    <div class="dashboard-layout">
        <jsp:include page="components/sidebar.jsp" />
        <main class="main-content">
            <jsp:include page="components/topbar.jsp" />
            <div class="main-inner-content">
                <div class="page-title">
                    <h1 style="margin:0;">Enterprise AI & Digital Operations</h1>
                    <p class="text-muted">Facility mapping and automated financial audit engine</p>
                </div>

                <div class="ops-grid">
                    <div class="ops-card">
                        <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1rem;">
                            <h3 style="font-weight: 700;">Live Facility Twin</h3>
                            <div style="display: flex; gap: 1rem; font-size: 0.7rem;">
                                <span style="display:flex; align-items:center; gap:0.25rem;"><span class="room-status status-occupied" style="position:static;"></span> OCCUPIED</span>
                                <span style="display:flex; align-items:center; gap:0.25rem;"><span class="room-status status-available" style="position:static;"></span> AVAILABLE</span>
                            </div>
                        </div>
                        <div class="facility-map">
                            <div class="room-item">OPD-1 <span class="room-status status-occupied"></span></div>
                            <div class="room-item">OPD-2 <span class="room-status status-occupied"></span></div>
                            <div class="room-item">ICU-A <span class="room-status status-occupied"></span></div>
                            <div class="room-item">LAB <span class="room-status status-available"></span></div>
                            <div class="room-item">MRI <span class="room-status status-cleaning"></span></div>
                            <div class="room-item">PHARM <span class="room-status status-available"></span></div>
                            <div class="room-item">OPD-3 <span class="room-status status-available"></span></div>
                            <div class="room-item">ER-1 <span class="room-status status-occupied"></span></div>
                        </div>
                        <button class="btn-primary" style="width: 100%; margin-top: 1rem;">Optimize Bed Allocation</button>
                    </div>

                    <div class="ops-card">
                        <h3>AI Financial Auditing</h3>
                        <canvas id="auditChart" height="150" style="margin-top: 1rem;"></canvas>
                        <div style="margin-top: 1rem; font-size: 0.85rem; color: var(--text-muted);">
                            <div style="display: flex; justify-content: space-between; padding: 0.5rem 0; border-bottom: 1px solid #f1f5f9;">
                                <span>Unbilled Service: #1944</span>
                                <span style="font-weight: 700; color: #ef4444;">RESOLVED</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <script>
        const ctx = document.getElementById('auditChart');
        if (ctx) {
            new Chart(ctx, {
                type: 'line',
                data: {
                    labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                    datasets: [{
                        label: 'Audit Confidence',
                        data: [98, 99.2, 99, 99.5, 99.8, 99.7, 99.9],
                        borderColor: '#0d9488',
                        tension: 0.4
                    }]
                },
                options: { plugins: { legend: { display: false } }, scales: { y: { suggestedMin: 95 } } }
            });
        }
    </script>
</body>
</html>
