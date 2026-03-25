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
    <title>Smart Medical ID | PMS Health</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/topbar.css">
    <style>
        .id-card-wrapper { display: flex; align-items: center; justify-content: center; padding: 3rem; }
        .medical-id-card { position: relative; width: 450px; height: 280px; background: linear-gradient(135deg, #0d9488, #115e59); color: white; border-radius: 20px; box-shadow: 0 20px 40px rgba(13, 148, 136, 0.3); overflow: hidden; padding: 2rem; display: flex; flex-direction: column; justify-content: space-between; font-family: 'Inter', sans-serif; }
        .medical-id-card::after { content: ''; position: absolute; bottom: -50px; right: -50px; width: 150px; height: 150px; border-radius: 50%; border: 20px solid rgba(255,255,255,0.1); }
        .card-header { display: flex; justify-content: space-between; align-items: flex-start; }
        .brand-label { font-size: 1rem; font-weight: 800; letter-spacing: 1px; display: flex; align-items: center; gap: 0.5rem; text-transform: uppercase; opacity: 0.9; }
        .emergency-btn { background: #ef4444; color: white; padding: 0.4rem 1rem; border-radius: 8px; font-size: 0.75rem; font-weight: 800; text-transform: uppercase; border: none; }
        .qr-section { display: flex; gap: 1.5rem; }
        .qr-placeholder { background: white; width: 100px; height: 100px; border-radius: 12px; display: flex; align-items: center; justify-content: center; padding: 0.5rem; }
        .qr-placeholder img { width: 100%; height: 100%; }
        .patient-details h2 { font-size: 1.5rem; margin-bottom: 0.25rem; font-weight: 700; }
        .patient-details p { font-size: 0.9rem; opacity: 0.8; margin-bottom: 1rem; letter-spacing: 0.5px; }
        .specs-grid { display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 1rem; margin-top: auto; }
        .spec-item div { font-size: 0.65rem; text-transform: uppercase; opacity: 0.7; letter-spacing: 1px; margin-bottom: 0.25rem; }
        .spec-item span { font-size: 0.9rem; font-weight: 700; }
        .print-actions { display: flex; gap: 1rem; justify-content: center; margin-top: 2rem; }
        .print-btn { background: white; border: 1.5px solid var(--border-color); color: var(--text-dark); padding: 0.75rem 1.5rem; border-radius: 12px; font-weight: 700; font-size: 0.9rem; cursor: pointer; transition: all 0.2s; display: flex; align-items: center; gap: 0.75rem; }
        .print-btn:hover { background: #f8fafc; transform: translateY(-2px); }
        .print-btn.primary { background: var(--teal-primary); color: white; border-color: var(--teal-primary); }
    </style>
</head>
<body>
    <div class="dashboard-layout">
        <jsp:include page="components/sidebar.jsp" />
        <main class="main-content">
            <jsp:include page="components/topbar.jsp" />
            <div class="main-inner-content">
                <div class="page-title">
                    <h1>Smart Medical ID Card</h1>
                    <p class="text-muted">Generate your digital emergency medical ID with secure QR access</p>
                </div>

                <div class="id-card-wrapper">
                    <div style="text-align: center;">
                        <div class="medical-id-card">
                            <div class="card-header">
                                <div class="brand-label">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"><path d="M19 14c1.49-1.46 3-3.21 3-5.5A5.5 5.5 0 0 0 16.5 3c-1.76 0-3 .5-4.5 2-1.5-1.5-2.74-2-4.5-2A5.5 5.5 0 0 0 2 8.5c0 2.3 1.5 4.05 3 5.5l7 7Z"/></svg>
                                    PMS HEALTH
                                </div>
                                <button class="emergency-btn">Emergency Use Only</button>
                            </div>

                            <div class="qr-section">
                                <div class="qr-placeholder">
                                    <!-- Simple static QR mock -->
                                    <img src="https://api.qrserver.com/v1/create-qr-code/?size=100x100&data=PatientID:<%= user.getId() %>;Name:<%= user.getFullName() %>;EmergencyContact:911;Allergies:None" alt="Patient QR">
                                </div>
                                <div class="patient-details" style="text-align: left;">
                                    <h2><%= user.getFullName() %></h2>
                                    <p>Patient Reg: #PMS-<%= user.getId() %></p>
                                    <div class="specs-grid">
                                        <div class="spec-item">
                                            <div>Blood</div>
                                            <span>O+</span>
                                        </div>
                                        <div class="spec-item">
                                            <div>Allergies</div>
                                            <span style="color: #fda4af;">None</span>
                                        </div>
                                        <div class="spec-item">
                                            <div>Status</div>
                                            <span style="color: #4ade80;">Active</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="print-actions">
                            <button class="print-btn primary">
                                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M6 9V2h12v7M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2M6 14h12v8H6z"/></svg>
                                Print Physical Card
                            </button>
                            <button class="print-btn">
                                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4M7 10l5 5 5-5M12 15V3"/></svg>
                                Download Digital PDF
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
</html>
