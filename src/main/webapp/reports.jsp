<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.pms.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reports & Analytics | Admin Portal</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <%
        User currentUser = (User) session.getAttribute("user");
        if (currentUser == null || !"Admin".equals(currentUser.getRole())) {
            response.sendRedirect("login.jsp");
            return;
        }
    %>
    <div class="dashboard-layout">
        <jsp:include page="components/sidebar.jsp" />
        <main class="main-content">
            <header class="top-bar">
                <div class="page-title">
                    <h1>Reports & Analytics</h1>
                    <p class="text-muted">System performance and trends</p>
                </div>
            </header>

            <div class="stats-scroll-container" style="display: flex; flex-wrap: nowrap; overflow-x: auto; -webkit-overflow-scrolling: touch; width: 100%; min-width: 0;">
                <div class="stat-card">
                    <div class="stat-info">
                        <h3>Total Patients</h3>
                        <p><%= request.getAttribute("totalPatients") != null ? request.getAttribute("totalPatients") : "Loading..." %></p>
                    </div>
                </div>
                <div class="stat-card">
                    <div class="stat-info">
                        <h3>Total Revenue</h3>
                        <p>$<%= request.getAttribute("totalRevenue") != null ? request.getAttribute("totalRevenue") : "0.00" %></p>
                    </div>
                </div>
            </div>

            <div class="stats-grid">
                <div class="data-card" style="padding: 1.5rem;">
                    <h3 style="margin-bottom: 1.5rem;">Patient Growth</h3>
                    <canvas id="growthChart" height="200"></canvas>
                </div>
                <div class="data-card" style="padding: 1.5rem;">
                    <h3 style="margin-bottom: 1.5rem;">Revenue by Dept</h3>
                    <canvas id="revenueChart" height="200"></canvas>
                </div>
            </div>
            
            <script>
                const ctx = document.getElementById('growthChart').getContext('2d');
                new Chart(ctx, {
                    type: 'line',
                    data: {
                        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May'],
                        datasets: [{
                            label: 'New Patients',
                            data: [65, 59, 80, 81, 95],
                            borderColor: '#2ac49e',
                            tension: 0.4
                        }]
                    }
                });

                const ctx2 = document.getElementById('revenueChart').getContext('2d');
                new Chart(ctx2, {
                    type: 'doughnut',
                    data: {
                        labels: ['Cardiology', 'Dental', 'Pediatrics'],
                        datasets: [{
                            data: [300, 50, 100],
                            backgroundColor: ['#2ac49e', '#0ea5e9', '#a855f7']
                        }]
                    }
                });
            </script>
        </main>
    </div>
</body>
</html>
