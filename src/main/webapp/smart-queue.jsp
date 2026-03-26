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
    <style>
        .queue-grid { display: grid; grid-template-columns: 1fr 350px; gap: 2rem; }
        .queue-table { background: white; border-radius: 20px; padding: 1.5rem; border: 1.5px solid var(--border-color); }
        .status-pill { padding: 0.3rem 0.75rem; border-radius: 20px; font-size: 0.75rem; font-weight: 700; text-transform: uppercase; }
        .status-delayed { background: #fee2e2; color: #ef4444; }
        .status-ontime { background: #dcfce7; color: #22c55e; }
        .ai-metrics { display: flex; flex-direction: column; gap: 1.5rem; }
        .metric-mini-card { background: white; border-radius: 16px; padding: 1.25rem; border: 1px solid var(--border-color); }
        .metric-mini-card h4 { font-size: 0.8rem; color: var(--text-muted); text-transform: uppercase; letter-spacing: 0.5px; margin-bottom: 0.5rem; }
        .metric-mini-card p { font-size: 1.75rem; font-weight: 800; color: var(--text-dark); }
        .sms-badge { background: #eff6ff; color: #3b82f6; padding: 0.1rem 0.5rem; border-radius: 4px; font-size: 0.65rem; font-weight: 700; margin-left: 0.5rem; }
    </style>
</head>
<body>
    <div class="dashboard-layout">
        <jsp:include page="components/sidebar.jsp" />
        <main class="main-content">
            <jsp:include page="components/topbar.jsp" />
            <div class="main-inner-content">
                <div class="page-title">
                    <div style="display: flex; align-items: center; gap: 1rem;">
                        <h1 style="margin:0;">AI Smart Queue Management</h1>
                        <span style="background: var(--teal-soft); color: var(--teal-primary); padding: 0.3rem 0.8rem; border-radius: 20px; font-size: 0.7rem; font-weight: 800;">LIVE PREDICTIVE ENGINE</span>
                    </div>
                </div>

                <div class="queue-grid">
                    <div class="queue-table">
                        <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1.5rem;">
                            <h3>Active Patient Queue</h3>
                            <button class="btn-primary" style="padding: 0.5rem 1rem; font-size: 0.85rem;">Optimize Wait Times</button>
                        </div>
                        <style>th, td { padding: 1rem !important; border-bottom: 1px solid var(--border-color) !important; text-align: left; }</style>
                        <table style="width: 100%; border-collapse: collapse;">
                            <thead>
                                <tr>
                                    <th>Patient</th>
                                    <th>Doctor</th>
                                    <th>Scheduled</th>
                                    <th>AI Prediction</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="font-weight: 600;">Samuel B.</td>
                                    <td style="font-size: 0.85rem;">Dr. Smith</td>
                                    <td style="font-size: 0.85rem;">02:00 PM</td>
                                    <td style="color: #ef4444; font-weight: 700;">02:18 PM <span class="sms-badge">SMS SENT</span></td>
                                    <td><span class="status-pill status-delayed">Delayed</span></td>
                                </tr>
                                <tr>
                                    <td style="font-weight: 600;">Alice Johnson</td>
                                    <td style="font-size: 0.85rem;">Dr. Brown</td>
                                    <td style="font-size: 0.85rem;">02:15 PM</td>
                                    <td style="color: #22c55e; font-weight: 700;">02:15 PM</td>
                                    <td><span class="status-pill status-ontime">On-Time</span></td>
                                </tr>
                                <tr>
                                    <td style="font-weight: 600;">John Doe</td>
                                    <td style="font-size: 0.85rem;">Dr. Smith</td>
                                    <td style="font-size: 0.85rem;">02:30 PM</td>
                                    <td style="color: #ef4444; font-weight: 700;">02:45 PM <span class="sms-badge">SMS SENT</span></td>
                                    <td><span class="status-pill status-delayed">Delayed</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="ai-metrics">
                        <div class="metric-mini-card">
                            <h4>Avg. Wait Today</h4>
                            <p>12 Mins</p>
                            <span style="font-size: 0.75rem; color: #22c55e;">↓ 4% from yesterday</span>
                        </div>
                        <div class="metric-mini-card">
                            <h4>AI Confidence Score</h4>
                            <p>94%</p>
                            <div style="height:4px; width:100%; background:#e2e8f0; border-radius:2px; margin-top:0.5rem;"><div style="width:94%; height:100%; background:var(--teal-primary); border-radius:2px;"></div></div>
                        </div>
                        <div class="metric-mini-card">
                            <h4>Predictive Peak Load</h4>
                            <p>04:30 PM</p>
                            <span style="font-size: 0.75rem; color: #f59e0b;">Staff adjustment recommended</span>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
</html>
