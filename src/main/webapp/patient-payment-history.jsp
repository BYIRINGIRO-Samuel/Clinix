<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.pms.model.User, com.pms.model.Billing, java.util.List" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null || !"Patient".equals(user.getRole())) {
        response.sendRedirect("login.jsp");
        return;
    }
    List<Billing> billings = (List<Billing>) request.getAttribute("billings");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment History | PMS</title>
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
                <h1>Payment History</h1>
                <p style="color: var(--text-muted);">Track your billing and payments</p>
            </div>

            <div class="data-card">
                <div class="table-responsive">
                    <table>
                        <thead>
                            <tr>
                                <th>Date</th>
                                <th>Description</th>
                                <th>Amount</th>
                                <th>Method</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                if (billings != null && !billings.isEmpty()) {
                                    for (Billing b : billings) {
                            %>
                            <tr>
                                <td><%= b.getBillingDate() %></td>
                                <td>Consultation with Dr. <%= b.getAppointment().getDoctor().getFullName() %></td>
                                <td>$<%= String.format("%.2f", b.getAmount()) %></td>
                                <td><%= b.getPaymentMethod() != null ? b.getPaymentMethod() : "N/A" %></td>
                                <td>
                                    <% if ("Pending".equals(b.getStatus())) { %>
                                        <div style="display: flex; align-items: center; gap: 10px;">
                                            <span class="role-badge badge-Pending"><%= b.getStatus() %></span>
                                            <a href="PatientServlet?action=payForm&billingId=<%= b.getId() %>" class="btn-sm btn-solid-teal" style="text-decoration: none;">Pay Now</a>
                                        </div>
                                    <% } else { %>
                                        <span class="role-badge badge-<%= b.getStatus() %>"><%= b.getStatus() %></span>
                                    <% } %>
                                </td>
                            </tr>
                            <%
                                    }
                                } else {
                            %>
                            <tr>
                                <td colspan="5" style="text-align: center; padding: 4rem; color: var(--text-muted);">
                                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" style="width: 48px; opacity: 0.3; margin-bottom: 1rem;"><line x1="12" y1="1" x2="12" y2="23"></line><path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"></path></svg>
                                    <p>No payment records found.</p>
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
