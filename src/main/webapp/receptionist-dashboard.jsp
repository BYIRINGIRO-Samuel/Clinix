<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.pms.model.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reception Dashboard | PMS</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/folder-cards.css">
</head>
<body class="dashboard-body">
    <jsp:include page="components/sidebar.jsp" />
    
    <main class="main-content">
        <header class="content-header">
            <div>
                <h1>Reception Overview</h1>
                <p>Welcome back! You have a busy day ahead.</p>
            </div>
            <div class="header-actions">
                <a href="ReceptionistServlet?action=bookForm" class="btn btn-primary">Book New Appointment</a>
            </div>
        </header>

        <div class="stats-scroll-container">
            <div class="stat-card">
                <div class="stat-icon" style="background: rgba(255,255,255,0.2); color: white;">
                    <svg fill="none" viewBox="0 0 24 24" stroke="currentColor"><path d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"/></svg>
                </div>
                <div class="stat-info">
                    <h3>Total Appts</h3>
                    <p>24</p>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon" style="background: rgba(255,255,255,0.2); color: white;">
                    <svg fill="none" viewBox="0 0 24 24" stroke="currentColor"><path d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"/></svg>
                </div>
                <div class="stat-info">
                    <h3>Checked In</h3>
                    <p>12</p>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon" style="background: rgba(255,255,255,0.2); color: white;">
                    <svg fill="none" viewBox="0 0 24 24" stroke="currentColor"><path d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"/></svg>
                </div>
                <div class="stat-info">
                    <h3>Pending</h3>
                    <p>05</p>
                </div>
            </div>
        </div>

        <section class="appointments-section container-fluid">
            <div class="card shadow-sm border-0">
                <div class="card-header bg-white py-3 d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">Today's Schedule</h5>
                    <a href="ReceptionistServlet?action=appointments" class="btn-link">View All</a>
                </div>
                <div class="card-body p-0">
                    <div class="table-responsive">
                        <table class="table table-hover mb-0">
                            <thead>
                                <tr>
                                    <th>Patient Name</th>
                                    <th>Doctor</th>
                                    <th>Time</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    List<Appointment> upcoming = (List<Appointment>) request.getAttribute("appointments");
                                    if (upcoming != null && !upcoming.isEmpty()) {
                                        for (Appointment app : upcoming) {
                                %>
                                    <tr>
                                        <td><strong><%= app.getPatient().getFullName() %></strong></td>
                                        <td>Dr. <%= app.getDoctor().getFullName() %></td>
                                        <td><%= app.getAppointmentDate() %></td>
                                        <td><span class="status-badge <%= app.getStatus().toLowerCase() %>"><%= app.getStatus() %></span></td>
                                        <td>
                                            <% if ("Scheduled".equals(app.getStatus())) { %>
                                            <form action="ReceptionistServlet" method="POST" style="display:inline;">
                                                <input type="hidden" name="action" value="checkin">
                                                <input type="hidden" name="appointmentId" value="<%= app.getId() %>">
                                                <button type="submit" class="btn btn-sm btn-outline-success">Check-in</button>
                                            </form>
                                            <% } %>
                                            <a href="ReceptionistServlet?action=billingForm&appointmentId=<%= app.getId() %>" class="btn btn-sm btn-outline-primary">Invoice</a>
                                        </td>
                                    </tr>
                                <% } } else { %>
                                    <tr>
                                        <td colspan="5" class="text-center py-4 text-muted">No appointments scheduled for today.</td>
                                    </tr>
                                <% } %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </main>
</body>
</html>
