<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.pms.model.User, com.pms.model.Appointment, com.pms.model.Prescription, com.pms.model.Billing, java.util.List" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null || !"Patient".equals(user.getRole())) {
        response.sendRedirect("login.jsp");
        return;
    }
    List<Appointment> appointments = (List<Appointment>) request.getAttribute("appointments");
    List<Prescription> prescriptions = (List<Prescription>) request.getAttribute("prescriptions");
    List<Billing> billings = (List<Billing>) request.getAttribute("billings");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Dashboard | PMS</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/folder-cards.css">
    <link rel="stylesheet" href="css/topbar.css">
</head>
<body>
    <div class="dashboard-layout">
        <!-- Sidebar -->
        <jsp:include page="components/sidebar.jsp" />

        <!-- Main Content -->
        <main class="main-content">
            <jsp:include page="components/topbar.jsp" />

            <div class="main-inner-content">
            <div class="page-title" style="margin-bottom:2rem;">
                <h1>Patient Dashboard</h1>
                <p style="color: var(--text-muted);">Welcome back, <%= user.getFullName() %></p>
            </div>

            <div class="stats-grid">
                <div class="stat-card">
                    <div class="stat-icon">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                    </div>
                    <div class="stat-info">
                        <h3>Upcoming Appointments</h3>
                        <p><%= appointments != null ? appointments.stream().filter(a -> "Scheduled".equals(a.getStatus()) || "Pending".equals(a.getStatus())).count() : 0 %></p>
                    </div>
                </div>
                <div class="stat-card">
                    <div class="stat-icon">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2L2 7l10 5 10-5-10-5z"></path><path d="M2 17l10 5 10-5"></path><path d="M2 12l10 5 10-5"></path></svg>
                    </div>
                    <div class="stat-info">
                        <h3>Prescriptions</h3>
                        <p><%= prescriptions != null ? prescriptions.size() : 0 %></p>
                    </div>
                </div>
                <div class="stat-card">
                    <div class="stat-icon">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="12" y1="1" x2="12" y2="23"></line><path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"></path></svg>
                    </div>
                    <div class="stat-info">
                        <h3>Unpaid Bills</h3>
                        <p><%= billings != null ? billings.stream().filter(b -> "Pending".equals(b.getStatus())).count() : 0 %></p>
                    </div>
                </div>
            </div>

            <div class="data-card" style="margin-bottom: 2rem;">
                <div class="data-header">
                    <h2>Recent Appointments</h2>
                    <a href="PatientServlet?action=myAppointments" style="color: var(--teal-primary); font-weight: 600; text-decoration: none;">View All</a>
                </div>
                <div class="table-responsive">
                    <table>
                        <thead>
                            <tr>
                                <th>Doctor</th>
                                <th>Date</th>
                                <th>Reason</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                if (appointments != null && !appointments.isEmpty()) {
                                    int count = 0;
                                    for (Appointment a : appointments) {
                                        if (count >= 5) break;
                            %>
                            <tr>
                                <td><%= a.getDoctor().getFullName() %></td>
                                <td><%= a.getAppointmentDate() %></td>
                                <td><%= a.getReason() %></td>
                                <td><span class="role-badge badge-<%= a.getStatus() %>"><%= a.getStatus() %></span></td>
                            </tr>
                            <%
                                        count++;
                                    }
                                } else {
                            %>
                            <tr>
                                <td colspan="4" style="text-align: center; padding: 2rem; color: var(--text-muted);">No recent appointments</td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="data-card">
                <div class="data-header">
                    <h2>Recent Prescriptions</h2>
                    <a href="PatientServlet?action=prescriptions" style="color: var(--teal-primary); font-weight: 600; text-decoration: none;">View All</a>
                </div>
                <div class="table-responsive">
                    <table>
                        <thead>
                            <tr>
                                <th>Doctor</th>
                                <th>Date</th>
                                <th>Medications</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                if (prescriptions != null && !prescriptions.isEmpty()) {
                                    int count = 0;
                                    for (Prescription p : prescriptions) {
                                        if (count >= 5) break;
                            %>
                            <tr>
                                <td><%= p.getDoctor().getFullName() %></td>
                                <td><%= p.getDatePrescribed() %></td>
                                <td><%= p.getMedications() %></td>
                            </tr>
                            <%
                                        count++;
                                    }
                                } else {
                            %>
                            <tr>
                                <td colspan="3" style="text-align: center; padding: 2rem; color: var(--text-muted);">No recent prescriptions</td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
            </div><!-- /.main-inner-content -->
        </main>
    </div>
</body>
</html>
