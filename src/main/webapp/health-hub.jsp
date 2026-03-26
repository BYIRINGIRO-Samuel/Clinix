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
    <title>Health Hub | PMS Health</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/topbar.css">
    <style>
        .hub-hero { position: relative; border-radius: 20px; padding: 3rem; color: white; margin-bottom: 2rem; overflow: hidden; background: #0f172a; }
        .hero-img { position: absolute; top: 0; right: 0; height: 100%; opacity: 0.5; }
        .metric-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 1.5rem; margin-bottom: 2rem; }
        .metric-card { background: white; border-radius: 16px; padding: 1.5rem; border: 1px solid var(--border-color); }
        .live-tag { display: inline-flex; align-items: center; gap: 0.5rem; background: rgba(34, 197, 94, 0.1); color: #22c55e; padding: 0.25rem 0.75rem; border-radius: 20px; font-size: 0.7rem; font-weight: 700; margin-bottom: 1rem; }
        .pulse-dot { width: 8px; height: 8px; background: #22c55e; border-radius: 50%; box-shadow: 0 0 10px #22c55e; }
    </style>
</head>
<body>
    <div class="dashboard-layout">
        <jsp:include page="components/sidebar.jsp" />
        <main class="main-content">
            <jsp:include page="components/topbar.jsp" />
            <div class="main-inner-content">
                
                <div class="hub-hero">
                    <img src="health_digital_twin_hero_1774448364126.png" alt="Digital Twin" class="hero-img">
                    <div style="position: relative; z-index: 2;">
                        <div class="live-tag"><span class="pulse-dot"></span> REAL-TIME SYNC</div>
                        <h1 style="font-size: 3rem; font-weight: 800; line-height: 1.1; margin-bottom: 1rem;">Digital Twin 2.0</h1>
                        <p style="font-size: 1rem; opacity: 0.8; max-width: 500px;">A high-fidelity biological model of your health, updated per second via your connected IoT devices.</p>
                        <div style="margin-top: 1.5rem;">
                            <button class="btn-primary" style="padding: 0.75rem 1.5rem; border-radius: 10px;">Connect Wearable</button>
                        </div>
                    </div>
                </div>

                <div class="metric-grid">
                    <div class="metric-card">
                        <p style="font-size: 0.8rem; color: var(--text-muted); text-transform: uppercase; font-weight: 700;">Heart Rate</p>
                        <div style="font-size: 2rem; font-weight: 800;">72 <small style="font-size: 1rem;">BPM</small></div>
                    </div>
                    <div class="metric-card">
                        <p style="font-size: 0.8rem; color: var(--text-muted); text-transform: uppercase; font-weight: 700;">SpO2 Levels</p>
                        <div style="font-size: 2rem; font-weight: 800;">98 <small style="font-size: 1rem;">%</small></div>
                    </div>
                    <div class="metric-card">
                        <p style="font-size: 0.8rem; color: var(--text-muted); text-transform: uppercase; font-weight: 700;">Active Steps</p>
                        <div style="font-size: 2rem; font-weight: 800;">8,432</div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
</html>
