<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.pms.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reports & Analytics | Admin Portal</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/folder-cards.css">
    <link rel="stylesheet" href="css/topbar.css">
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
            <jsp:include page="components/topbar.jsp" />

            <div class="main-inner-content">
            <div class="page-title" style="margin-bottom:2rem;">
                <h1>Reports & Analytics</h1>
                <p class="text-muted">System performance and trends</p>
            </div>

            <div class="stats-scroll-container" style="display: flex; flex-wrap: nowrap; overflow-x: auto; -webkit-overflow-scrolling: touch; width: 100%; min-width: 0;">
                <div class="stat-card">
                    <div class="stat-icon" style="background: var(--teal-primary); color: white;">
                        <svg fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"/></svg>
                    </div>
                    <div class="stat-info">
                        <h3>Total Patients</h3>
                        <p><%= request.getAttribute("totalPatients") != null ? request.getAttribute("totalPatients") : "Loading..." %></p>
                    </div>
                </div>
                <div class="stat-card">
                    <div class="stat-icon" style="background: #3b82f6; color: white;">
                        <svg fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 1.343-3 3s1.343 3 3 3 3-1.343 3-3-1.343-3-3-3zM17 16v2a2 2 0 01-2 2H9a2 2 0 01-2-2v-2"/></svg>
                    </div>
                    <div class="stat-info">
                        <h3>Total Revenue</h3>
                        <p>$<%= request.getAttribute("totalRevenue") != null ? String.format("%.2f", (Double)request.getAttribute("totalRevenue")) : "0.00" %></p>
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
                <%
                    java.util.Map<String, Long> growthData = (java.util.Map<String, Long>) request.getAttribute("growthData");
                    java.util.Map<String, Double> revenueByDept = (java.util.Map<String, Double>) request.getAttribute("revenueByDept");
                    
                    StringBuilder growthLabels = new StringBuilder();
                    StringBuilder growthValues = new StringBuilder();
                    if(growthData != null) {
                        for(java.util.Map.Entry<String, Long> entry : growthData.entrySet()) {
                            growthLabels.append("'").append(entry.getKey()).append("',");
                            growthValues.append(entry.getValue()).append(",");
                        }
                    }

                    StringBuilder deptLabels = new StringBuilder();
                    StringBuilder deptValues = new StringBuilder();
                    if(revenueByDept != null) {
                        for(java.util.Map.Entry<String, Double> entry : revenueByDept.entrySet()) {
                            deptLabels.append("'").append(entry.getKey()).append("',");
                            deptValues.append(entry.getValue()).append(",");
                        }
                    }
                %>

                const ctx = document.getElementById('growthChart').getContext('2d');
                new Chart(ctx, {
                    type: 'line',
                    data: {
                        labels: [<%= growthLabels.toString() %>],
                        datasets: [{
                            label: 'New Patients',
                            data: [<%= growthValues.toString() %>],
                            borderColor: '#2ac49e',
                            tension: 0.4
                        }]
                    }
                });

                const ctx2 = document.getElementById('revenueChart').getContext('2d');
                new Chart(ctx2, {
                    type: 'doughnut',
                    data: {
                        labels: [<%= deptLabels.toString() %>],
                        datasets: [{
                            data: [<%= deptValues.toString() %>],
                            backgroundColor: ['#2ac49e', '#0ea5e9', '#a855f7', '#f59e0b', '#ef4444']
                        }]
                    }
                });
            </script>
            </div><!-- /.main-inner-content -->
        </main>
    </div>
</body>
</html>
