<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.pms.model.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medical Records | Doctor Portal</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="dashboard-body">
    <jsp:include page="components/sidebar.jsp" />
    
    <main class="main-content">
        <header class="content-header">
            <div>
                <h1>Medical Records</h1>
                <p>Global history of clinical records created by you.</p>
            </div>
        </header>

        <section class="records-section container-fluid">
            <div class="card shadow-sm border-0">
                <div class="card-body p-0">
                    <div class="table-responsive">
                        <table class="table table-hover mb-0">
                            <thead class="bg-light">
                                <tr>
                                    <th>Date</th>
                                    <th>Patient</th>
                                    <th>Symptoms</th>
                                    <th>Diagnosis</th>
                                    <th>Treatment</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    List<MedicalRecord> records = (List<MedicalRecord>) request.getAttribute("records");
                                    if (records == null) {
                                        response.sendRedirect("DoctorServlet?action=records");
                                        return;
                                    }
                                    if (records.isEmpty()) {
                                %>
                                    <tr>
                                        <td colspan="6" class="text-center py-4 text-muted">No medical records found.</td>
                                    </tr>
                                <% } else { 
                                    for (MedicalRecord record : records) {
                                %>
                                    <tr>
                                        <td><%= record.getRecordDate() %></td>
                                        <td><strong><%= record.getPatient().getFullName() %></strong></td>
                                        <td><%= record.getSymptoms() %></td>
                                        <td><span class="badge bg-soft-info text-info"><%= record.getDiagnosis() %></span></td>
                                        <td><%= record.getTreatment() %></td>
                                        <td>
                                            <a href="DoctorServlet?action=viewHistory&patientId=<%= record.getPatient().getId() %>" class="btn-link">View Full History</a>
                                        </td>
                                    </tr>
                                <% } } %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </main>
</body>
</html>
