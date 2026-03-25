<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.pms.model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null || !"Receptionist".equals(user.getRole())) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AI Smart Queue | Receptionist Portal | PMS Health</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/topbar.css">
</head>
<body class="premium-font">
    <div class="dashboard-layout">
        <jsp:include page="components/sidebar.jsp" />
        <main class="main-content">
            <jsp:include page="components/topbar.jsp" />
            <div class="main-inner-content">
                
                <div class="hero-glass" style="margin-bottom: 2.5rem; background: linear-gradient(135deg, rgba(74, 222, 128, 0.9), rgba(13, 148, 136, 0.7));">
                    <div style="max-width: 600px;">
                        <div class="status-indicator" style="margin-bottom: 1rem; color: #ffffff;">
                            <span class="pulse-dot" style="background: white; box-shadow: 0 0 10px white;"></span>
                            Predictive Queue Engine: ACTIVE
                        </div>
                        <h1 style="font-size: 3.5rem; line-height: 1; margin-bottom: 1rem;">Smart Queue</h1>
                        <p style="font-size: 1.1rem; opacity: 0.9;">Optimizing patient flow with real-time wait-time modeling and automated status transparency.</p>
                    </div>
                </div>

                <div class="premium-stat-grid" style="grid-template-columns: 1fr 340px; gap: 2rem;">
                    <div class="glass-container">
                        <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1.5rem;">
                            <h3 style="font-weight: 800;">Real-time Patient Flow</h3>
                            <button class="premium-btn" style="padding: 0.5rem 1rem; font-size: 0.8rem;">Manual Override</button>
                        </div>
                        <style>th, td { padding: 1.25rem 1rem !important; border-bottom: 1px solid rgba(0,0,0,0.05) !important; text-align: left; }</style>
                        <table style="width: 100%; border-collapse: collapse;">
                            <thead>
                                <tr style="color: var(--text-muted); font-size: 0.8rem; text-transform: uppercase; letter-spacing: 1px;">
                                    <th>Patient</th>
                                    <th>Doctor</th>
                                    <th>AI Estimate</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="font-weight: 700;">Samuel B.</td>
                                    <td style="font-size: 0.85rem; color: var(--text-muted);">Dr. Smith</td>
                                    <td style="color: #ef4444; font-weight: 800;">02:18 PM <span style="background: #eff6ff; color: #3b82f6; padding: 0.1rem 0.4rem; border-radius: 4px; font-size: 0.6rem; vertical-align: middle; margin-left: 0.5rem;">SMS SENT</span></td>
                                    <td><span style="background: #fee2e2; color: #ef4444; padding: 0.25rem 0.6rem; border-radius: 6px; font-size: 0.7rem; font-weight: 800;">DELAYED</span></td>
                                </tr>
                                <tr>
                                    <td style="font-weight: 700;">Alice Johnson</td>
                                    <td style="font-size: 0.85rem; color: var(--text-muted);">Dr. Brown</td>
                                    <td style="color: #22c55e; font-weight: 800;">02:15 PM</td>
                                    <td><span style="background: #dcfce7; color: #16a34a; padding: 0.25rem 0.6rem; border-radius: 6px; font-size: 0.7rem; font-weight: 800;">ON-TIME</span></td>
                                </tr>
                                <tr>
                                    <td style="font-weight: 700;">John Doe</td>
                                    <td style="font-size: 0.85rem; color: var(--text-muted);">Dr. Smith</td>
                                    <td style="color: #ef4444; font-weight: 800;">02:45 PM <span style="background: #eff6ff; color: #3b82f6; padding: 0.1rem 0.4rem; border-radius: 4px; font-size: 0.6rem; vertical-align: middle; margin-left: 0.5rem;">SMS SENT</span></td>
                                    <td><span style="background: #fee2e2; color: #ef4444; padding: 0.25rem 0.6rem; border-radius: 6px; font-size: 0.7rem; font-weight: 800;">DELAYED</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div style="display: flex; flex-direction: column; gap: 1.5rem;">
                        <div class="glass-container">
                            <h4 style="font-size: 0.75rem; color: var(--text-muted); font-weight: 800; text-transform: uppercase;">Engine Insights</h4>
                            <div style="margin-top: 1.5rem;">
                                <div style="font-size: 2.5rem; font-weight: 900; line-height: 1;">12 <small style="font-size: 1rem; font-weight: 600; color: var(--text-muted);">MINS</small></div>
                                <p style="font-size: 0.85rem; color: #16a34a; font-weight: 700; margin-top: 0.5rem;">↓ 4% Efficiency Gain</p>
                            </div>
                            <div style="margin-top: 2rem; border-top: 1px solid rgba(0,0,0,0.05); padding-top: 1.5rem;">
                                <div style="display: flex; justify-content: space-between; font-size: 0.8rem; margin-bottom: 0.5rem;">
                                    <span>Engine Confidence</span>
                                    <span style="font-weight: 800; color: var(--premium-accent);">94%</span>
                                </div>
                                <div style="height: 6px; background: #f1f5f9; border-radius: 3px; overflow: hidden;"><div style="width: 94%; height: 100%; background: var(--grad-teal);"></div></div>
                            </div>
                        </div>

                        <div class="glass-container" style="background: var(--grad-teal); color: white; border: none;">
                            <h4 style="font-size: 0.75rem; font-weight: 800; text-transform: uppercase; margin-bottom: 1rem; opacity: 0.8;">Peak Detection</h4>
                            <p style="font-size: 1rem; font-weight: 600;">High load predicted at <strong style="font-size: 1.5rem; display: block; margin-top: 0.5rem;">04:30 PM</strong></p>
                            <button class="premium-btn" style="background: white; color: var(--premium-accent); width: 100%; margin-top: 1.5rem;">Adjust Staffing</button>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
</html>
            </div>
        </main>
    </div>
</body>
</html>
