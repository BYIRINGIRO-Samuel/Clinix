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
    <title>Enterprise AI & Ops | Admin Portal | PMS Health</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/topbar.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body class="premium-font">
    <div class="dashboard-layout">
        <jsp:include page="components/sidebar.jsp" />
        <main class="main-content">
            <jsp:include page="components/topbar.jsp" />
            <div class="main-inner-content">
                
                <div class="hero-glass" style="margin-bottom: 2.5rem; background: linear-gradient(135deg, #475569, #1e293b);">
                    <div style="max-width: 600px;">
                        <div class="status-indicator" style="margin-bottom: 1rem; color: #94a3b8;">
                            <i data-lucide="activity" style="width: 16px; height: 16px;"></i>
                            Enterprise Operations: OPTIMIZED
                        </div>
                        <h1 style="font-size: 3.5rem; line-height: 1; margin-bottom: 1rem;">Operations AI</h1>
                        <p style="font-size: 1.1rem; opacity: 0.9;">Global health center telemetry, facility management, and automated financial integrity auditing.</p>
                    </div>
                </div>

                <div class="premium-stat-grid" style="grid-template-columns: 1fr 1fr; gap: 2.5rem;">
                    <!-- Facility Twin Map -->
                    <div class="glass-container">
                        <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1.5rem;">
                            <h3 style="font-weight: 800;">Digital Facility Twin</h3>
                            <div style="display: flex; gap: 0.75rem; font-size: 0.65rem; font-weight: 800;">
                                <span style="display:flex; align-items:center; gap:0.25rem;"><span class="room-status status-occupied" style="position:static; width:6px; height:6px;"></span> BUSY</span>
                                <span style="display:flex; align-items:center; gap:0.25rem;"><span class="room-status status-available" style="position:static; width:6px; height:6px;"></span> FREE</span>
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
                        <button class="premium-btn" style="width: 100%; margin-top: 1.5rem;">Bed Allocation AI</button>
                    </div>

                    <!-- Smart Financial Audit -->
                    <div class="glass-container">
                        <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1.5rem;">
                            <h3 style="font-weight: 800;">Automated Audit</h3>
                            <span style="background: #dcfce7; color: #16a34a; padding: 0.2rem 0.6rem; border-radius: 6px; font-size: 0.65rem; font-weight: 900;">99.8% ACCURACY</span>
                        </div>
                        <canvas id="auditChart" height="140"></canvas>
                        <div class="audit-log" style="margin-top: 1.5rem;">
                            <div class="audit-item" style="font-size: 0.8rem; padding: 0.75rem; border-radius: 8px; background: rgba(0,0,0,0.02); margin-top: 0.5rem; display: flex; justify-content: space-between;">
                                <span>Unbilled Service Detected: #1944</span>
                                <span style="font-weight: 800; color: #ef4444;">RESOLVED</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
            </div>
        </main>
    </div>

    <script>
        const ctx = document.getElementById('auditChart').getContext('2d');
        new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
                datasets: [{
                    label: 'Revenue Consistency',
                    data: [12000, 15000, 14000, 22000, 18000, 21000],
                    borderColor: '#0d9488',
                    backgroundColor: 'rgba(13, 148, 136, 0.1)',
                    fill: true,
                    tension: 0.4
                }]
            },
            options: {
                plugins: { legend: { display: false } },
                scales: { y: { display: false }, x: { grid: { display: false } } }
            }
        });
    </script>
</body>
</html>
