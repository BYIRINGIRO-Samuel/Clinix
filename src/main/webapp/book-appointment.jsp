<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.pms.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Appointment | PMS</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="dashboard-body">
    <jsp:include page="components/sidebar.jsp" />
    
    <main class="main-content">
        <header class="content-header">
            <div>
                <h1>Schedule Appointment</h1>
                <p>Connect patients with their preferred medical specialists.</p>
            </div>
        </header>

        <section class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card shadow-sm border-0">
                        <div class="card-body p-4">
                            <form action="ReceptionistServlet" method="POST">
                                <input type="hidden" name="action" value="bookAppointment">
                                <div class="mb-3">
                                    <label class="form-label">Select Patient</label>
                                    <select name="patientId" class="form-select" required>
                                        <option value="">Choose a patient...</option>
                                        <%
                                            List<User> patients = (List<User>) request.getAttribute("patients");
                                            String preSelectedPid = request.getParameter("patientId");
                                            if (patients != null) {
                                                for (User p : patients) {
                                                    String selectedAttr = (preSelectedPid != null && preSelectedPid.equals(String.valueOf(p.getId()))) ? "selected" : "";
                                        %>
                                            <option value="<%= p.getId() %>" <%= selectedAttr %>><%= p.getFullName() %> (<%= p.getEmail() %>)</option>
                                        <% } } %>
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Select Doctor</label>
                                    <select name="doctorId" class="form-select" required>
                                        <option value="">Choose a doctor/specialist...</option>
                                        <%
                                            List<User> doctors = (List<User>) request.getAttribute("doctors");
                                            if (doctors != null) {
                                                for (User d : doctors) {
                                        %>
                                            <option value="<%= d.getId() %>">Dr. <%= d.getFullName() %></option>
                                        <% } } %>
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Preferred Date & Time</label>
                                    <input type="datetime-local" name="appointmentDate" class="form-control" required>
                                </div>
                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary w-100 py-3 font-weight-bold">Confirm Appointment</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</body>
</html>
