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
</head>
<body>
    <div class="dashboard-layout">
        <jsp:include page="components/sidebar.jsp" />
        <main class="main-content">
            <jsp:include page="components/topbar.jsp" />
            <div class="main-inner-content">
                <div class="page-title">
                    <h1>Smart Medical ID</h1>
                    <p class="text-muted">Emergency digital ID card for rapid responder access</p>
                </div>
                
                <div style="background: white; border-radius: 20px; padding: 2.5rem; border: 2px solid #ef4444; max-width: 450px; margin: 2rem auto; position: relative;">
                    <div style="display: flex; align-items: center; gap: 1rem; margin-bottom: 2rem;">
                        <div style="width: 80px; height: 80px; background: #fee2e2; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 2rem; color: #ef4444; font-weight: 800;">
                            <%= String.valueOf(user.getFullName().charAt(0)).toUpperCase() %>
                        </div>
                        <div>
                            <h2 style="margin:0;"><%= user.getFullName() %></h2>
                            <p style="color: #ef4444; font-weight: 700; font-size: 0.85rem;">BLOOD TYPE: O+</p>
                        </div>
                    </div>
                    
                    <div style="display: flex; flex-direction: column; gap: 1rem; font-size: 0.9rem;">
                        <p><strong>Conditions:</strong> Hypertension, Asthma</p>
                        <p><strong>Allergies:</strong> Penicillin</p>
                        <p><strong>Emergency Contact:</strong> +250 788 000 000</p>
                    </div>

                    <div style="margin-top: 2rem; background: #f8fafc; padding: 1.5rem; border-radius: 12px; text-align: center;">
                        <img src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=SMART-ID-<%= user.getId() %>" alt="QR Code" style="width: 150px; height: 150px; border: 4px solid white; box-shadow: 0 4px 6px rgba(0,0,0,0.05);">
                        <p style="font-size: 0.75rem; color: var(--text-muted); margin-top: 1rem;">SCANNABLE BY AUTHORIZED PERSONNEL ONLY</p>
                    </div>
                    
                    <button class="btn-primary" style="background: #ef4444; width: 100%; margin-top: 2rem; border: none; padding: 1rem;">Download Digital ID</button>
                </div>
            </div>
        </main>
    </div>
</body>
</html>
