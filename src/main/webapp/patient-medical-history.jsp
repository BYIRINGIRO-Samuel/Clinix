<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.pms.model.User, com.pms.model.MedicalRecord, java.util.List" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null || !"Patient".equals(user.getRole())) {
        response.sendRedirect("login.jsp");
        return;
    }
    List<MedicalRecord> records = (List<MedicalRecord>) request.getAttribute("records");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medical History | PMS</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/topbar.css">
</head>
<body>
    <div class="dashboard-layout">
        <jsp:include page="components/sidebar.jsp" />

        <main class="main-content">
            <jsp:include page="components/topbar.jsp" />

            <div class="main-inner-content">
            <div class="page-title" style="margin-bottom:2rem;">
                <h1>Medical History</h1>
                <p style="color: var(--text-muted);">Access your previous medical records</p>
            </div>

            <div class="data-card">
                <div class="table-responsive">
                    <table>
                        <thead>
                            <tr>
                                <th>Doctor</th>
                                <th>Date</th>
                                <th>Symptoms</th>
                                <th>Diagnosis</th>
                                <th>Treatment</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                if (records != null && !records.isEmpty()) {
                                    for (MedicalRecord r : records) {
                            %>
                            <tr>
                                <td><%= r.getDoctor().getFullName() %></td>
                                <td><%= r.getRecordDate() %></td>
                                <td><%= r.getSymptoms() %></td>
                                <td><%= r.getDiagnosis() %></td>
                                <td><%= r.getTreatment() %></td>
                            </tr>
                            <%
                                    }
                                } else {
                            %>
                            <tr>
                                <td colspan="5" style="text-align: center; padding: 4rem; color: var(--text-muted);">
                                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" style="width: 48px; opacity: 0.3; margin-bottom: 1rem;"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path><polyline points="22 4 12 14.01 9 11.01"></polyline></svg>
                                    <p>No medical records found.</p>
                                </td>
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
