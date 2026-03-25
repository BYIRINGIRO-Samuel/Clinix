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
    <title>Health Hub | Digital Twin | PMS Health</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/topbar.css">
</head>
<body class="premium-font">
    <div class="dashboard-layout">
        <jsp:include page="components/sidebar.jsp" />
        <main class="main-content">
            <jsp:include page="components/topbar.jsp" />
            <div class="main-inner-content">
                
                <div class="hero-glass" style="margin-bottom: 2.5rem; background: linear-gradient(135deg, rgba(13, 148, 136, 0.9), rgba(99, 102, 241, 0.7));">
                    <div style="max-width: 600px;">
                        <div class="status-indicator" style="margin-bottom: 1rem; color: #ffffff;">
                            <span class="pulse-dot" style="background: white; box-shadow: 0 0 10px white;"></span>
                            IoT Wearable Sync: ACTIVE
                        </div>
                        <h1 style="font-size: 3.5rem; line-height: 1; margin-bottom: 1rem;">Health Twin 2.0</h1>
                        <p style="font-size: 1.1rem; opacity: 0.9;">Real-time biological telemetry and AI-driven risk forecasting based on your active health profile.</p>
                        <div style="margin-top: 2rem; display: flex; gap: 1rem;">
                            <button class="premium-btn" style="background: white; color: var(--premium-accent);">Connect Device</button>
                        </div>
                    </div>
                </div>

                <div class="premium-stat-grid" style="margin-bottom: 2.5rem;">
                    <div class="glass-container">
                        <div style="font-size: 0.75rem; color: var(--text-muted); font-weight: 800; text-transform: uppercase;">Heart Rate</div>
                        <div style="font-size: 2.5rem; font-weight: 900; margin: 0.5rem 0;">72 <small style="font-size: 1rem; font-weight: 600;">BPM</small></div>
                        <div style="height: 4px; background: #f1f5f9; border-radius: 2px;"><div style="width: 70%; height: 100%; background: #ef4444; border-radius: 2px;"></div></div>
                    </div>
                    <div class="glass-container">
                        <div style="font-size: 0.75rem; color: var(--text-muted); font-weight: 800; text-transform: uppercase;">Sleep Quality</div>
                        <div style="font-size: 2.5rem; font-weight: 900; margin: 0.5rem 0;">8.2 <small style="font-size: 1rem; font-weight: 600;">HRS</small></div>
                        <div style="height: 4px; background: #f1f5f9; border-radius: 2px;"><div style="width: 85%; height: 100%; background: #3b82f6; border-radius: 2px;"></div></div>
                    </div>
                    <div class="glass-container">
                        <div style="font-size: 0.75rem; color: var(--text-muted); font-weight: 800; text-transform: uppercase;">Blood Oxygen</div>
                        <div style="font-size: 2.5rem; font-weight: 900; margin: 0.5rem 0;">98 <small style="font-size: 1rem; font-weight: 600;">%</small></div>
                        <div style="height: 4px; background: #f1f5f9; border-radius: 2px;"><div style="width: 98%; height: 100%; background: #06b6d4; border-radius: 2px;"></div></div>
                    </div>
                </div>

                <div class="glass-container">
                    <h3 style="font-weight: 800; margin-bottom: 1.5rem;">Longitudinal Health Forecast</h3>
                    <div style="background: rgba(0,0,0,0.02); height: 200px; border-radius: 12px; display: flex; align-items: center; justify-content: center; border: 1px dashed rgba(0,0,0,0.1);">
                        <p style="color: var(--text-muted); font-size: 0.85rem;">[Data Visualization Engine Initializing...]</p>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
</html>
