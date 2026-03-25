<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.pms.model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null || !"Doctor".equals(user.getRole())) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AI Clinical Intelligence | PMS Health</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/topbar.css">
      <style>
        .scribe-visual { background: rgba(0,0,0,0.03); border-radius: 12px; padding: 1rem; border: 1px dashed rgba(13, 148, 136, 0.3); min-height: 120px; margin: 1.5rem 0; }
        .risk-meter { height: 10px; width: 100%; background: #e2e8f0; border-radius: 6px; margin: 1.25rem 0; overflow: hidden; }
        .risk-fill { height: 100%; border-radius: 6px; transition: width 1s ease-in-out; }
        .suggest-pill { display: inline-block; padding: 0.5rem 1rem; background: rgba(13, 148, 136, 0.05); border: 1.5px solid rgba(13, 148, 136, 0.2); border-radius: 12px; font-size: 0.85rem; margin: 0.3rem; cursor: pointer; transition: all 0.2s; font-weight: 500; }
        .suggest-pill:hover { background: var(--grad-teal); color: white; border-color: transparent; transform: scale(1.05); }
      </style>
</head>
<body class="premium-font">
    <div class="dashboard-layout">
        <jsp:include page="components/sidebar.jsp" />
        <main class="main-content">
            <jsp:include page="components/topbar.jsp" />
            <div class="main-inner-content">
                
                <div class="hero-glass" style="margin-bottom: 2.5rem;">
                    <div style="max-width: 600px;">
                        <div class="status-indicator" style="margin-bottom: 1rem; color: #4ade80;">
                            <span class="pulse-dot"></span>
                            Medical AI Engine: v4.2 Online
                        </div>
                        <h1 style="font-size: 3.5rem; line-height: 1; margin-bottom: 1rem;">Clinical Intelligence</h1>
                        <p style="font-size: 1.1rem; opacity: 0.9;">Harnessing generative AI and predictive analytics to enhance diagnostic precision and clinical outcomes.</p>
                    </div>
                </div>

                <div class="premium-stat-grid" style="grid-template-columns: 1.2fr 1fr; gap: 2rem;">
                    <!-- AI Scribe -->
                    <div class="glass-container">
                        <div style="display:flex; justify-content: space-between; align-items: flex-start; margin-bottom: 1.5rem;">
                            <div>
                                <h3 style="font-size: 1.25rem; font-weight: 800;">Intelligent Scribe</h3>
                                <p style="font-size: 0.85rem; color: var(--text-muted);">Ambient clinical documentation</p>
                            </div>
                            <span style="background: var(--grad-teal); color: white; padding: 0.2rem 0.6rem; border-radius: 6px; font-size: 0.65rem; font-weight: 900;">REAL-TIME</span>
                        </div>
                        <div class="scribe-visual">
                            <p id="scribeText" style="font-size: 0.9rem; color: #475569; line-height: 1.6;">[System Listening...] "Patient reports intermittent chest pain radiating to the left shoulder. Onset approximately 48 hours ago after physical exertion..."</p>
                        </div>
                        <div style="display: flex; gap: 1rem;">
                            <button class="premium-btn">Start Intelligent Scribe</button>
                            <button class="premium-btn" style="background: #f1f5f9; color: var(--text-dark);">Manual Edit</button>
                        </div>
                    </div>

                    <!-- Risk Prediction -->
                    <div class="glass-container">
                         <h3 style="font-size: 1.25rem; font-weight: 800; margin-bottom: 1.5rem;">Biometric Risk Matrix</h3>
                         <div style="display: flex; flex-direction: column; gap: 1rem;">
                            <div>
                                <div style="display: flex; justify-content: space-between; font-size: 0.85rem; margin-bottom: 0.5rem;">
                                    <span style="font-weight: 600;">Cardiovascular Events</span>
                                    <span style="color: #ef4444; font-weight: 800;">High (78%)</span>
                                </div>
                                <div class="risk-meter"><div class="risk-fill" style="width: 78%; background: linear-gradient(to right, #f87171, #ef4444);"></div></div>
                            </div>
                            <div>
                                <div style="display: flex; justify-content: space-between; font-size: 0.85rem; margin-bottom: 0.5rem;">
                                    <span style="font-weight: 600;">Glycemic Stability</span>
                                    <span style="color: #22c55e; font-weight: 800;">Stable</span>
                                </div>
                                <div class="risk-meter"><div class="risk-fill" style="width: 22%; background: linear-gradient(to right, #4ade80, #22c55e);"></div></div>
                            </div>
                         </div>
                    </div>

                    <!-- CDSS Suggestions -->
                    <div class="glass-container" style="grid-column: span 2;">
                        <h3 style="font-size: 1.25rem; font-weight: 800; margin-bottom: 1.5rem;">Smart Treatment Pathways</h3>
                        <div style="display: flex; flex-wrap: wrap;">
                            <div class="suggest-pill">Adjust Lisinopril Dosage</div>
                            <div class="suggest-pill">Schedule Echocardiogram</div>
                            <div class="suggest-pill">DASH Diet Integration</div>
                            <div class="suggest-pill">Refer to Cardiology Specialist</div>
                            <div class="suggest-pill">Review Lipid Profile Labs</div>
                        </div>
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
