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
        .ai-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(350px, 1fr)); gap: 1.5rem; }
        .ai-card { background: white; border-radius: 16px; padding: 1.5rem; border: 1px solid var(--border-color); position: relative; overflow: hidden; }
        .ai-card::before { content: ''; position: absolute; top: 0; left: 0; width: 4px; height: 100%; background: var(--teal-primary); }
        .ai-badge { background: var(--teal-soft); color: var(--teal-primary); padding: 0.25rem 0.75rem; border-radius: 20px; font-size: 0.75rem; font-weight: 700; margin-bottom: 1rem; display: inline-block; }
        .scribe-visual { background: #f8fafc; border-radius: 12px; padding: 1rem; border: 1px dashed var(--border-color); min-height: 100px; margin: 1rem 0; }
        .risk-meter { height: 8px; width: 100%; background: #e2e8f0; border-radius: 4px; margin: 1rem 0; overflow: hidden; }
        .risk-fill { height: 100%; border-radius: 4px; transition: width 0.5s ease; }
        .suggest-pill { display: inline-block; padding: 0.4rem 0.8rem; background: var(--teal-soft); border: 1px solid var(--teal-primary); border-radius: 8px; font-size: 0.8rem; margin: 0.2rem; cursor: pointer; }
        .pulse { animation: pulse-animation 2s infinite; }
        @keyframes pulse-animation { 0% { transform: scale(0.95); opacity: 0.5; } 70% { transform: scale(1.05); opacity: 1; } 100% { transform: scale(0.95); opacity: 0.5; } }
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
                        <h1 style="margin:0;">AI Clinical Intelligence</h1>
                        <span class="ai-badge pulse">CORE AI ACTIVE</span>
                    </div>
                    <p class="text-muted">Proactive diagnostics and intelligent scribe powered by MedicalGPT</p>
                </div>

                <div class="ai-grid">
                    <div class="ai-card">
                        <div class="ai-badge">VIRTUAL SCRIBE</div>
                        <h3>Real-time Consultation Assistant</h3>
                        <p class="text-muted" style="font-size: 0.85rem;">Listening and auto-summarizing consultation notes...</p>
                        <div class="scribe-visual">
                            <p id="scribeText" style="font-size: 0.9rem; color: #475569;">[Consultation starting... Ensure microphone access is granted for real-time transcription]</p>
                        </div>
                        <div style="display: flex; gap: 0.5rem;">
                            <button class="btn-primary" style="padding: 0.5rem 1rem;">Start Scribe</button>
                            <button class="btn-secondary" style="padding: 0.5rem 1rem;">Import Labs</button>
                        </div>
                    </div>

                    <div class="ai-card">
                        <div class="ai-badge">PREDICTIVE DIAGNOSTICS</div>
                        <h3>Patient Risk Stratification</h3>
                        <p class="text-muted" style="font-size: 0.85rem;">Analyzing longitudinal record for potential health triggers</p>
                        
                        <div style="margin-top: 1.5rem;">
                            <div style="display: flex; justify-content: space-between; font-size: 0.85rem; margin-bottom: 0.25rem;">
                                <span>Cardiovascular Risk</span>
                                <span style="color: #ef4444; font-weight: 700;">82% (High)</span>
                            </div>
                            <div class="risk-meter"><div class="risk-fill" style="width: 82%; background: #ef4444;"></div></div>
                            
                            <div style="display: flex; justify-content: space-between; font-size: 0.85rem; margin-bottom: 0.25rem; margin-top: 1rem;">
                                <span>Metabolic Stability</span>
                                <span style="color: #22c55e; font-weight: 700;">Stable</span>
                            </div>
                            <div class="risk-meter"><div class="risk-fill" style="width: 15%; background: #22c55e;"></div></div>
                        </div>
                    </div>

                    <div class="ai-card" style="grid-column: 1 / -1;">
                        <div class="ai-badge">SMART SUGGESTIONS</div>
                        <h3>AI Treatment Pathways</h3>
                        <p class="text-muted">Based on latest clinical guidelines and patient profile</p>
                        <div style="margin-top: 1rem;">
                            <div class="suggest-pill">Adjust Lisinopril Dosage</div>
                            <div class="suggest-pill">Schedule HbA1c screening</div>
                            <div class="suggest-pill">Recommend Low-Sodium Diet Plan</div>
                            <div class="suggest-pill">Review drug interaction: Warfarin</div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
</html>
