<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.pms.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>System Logs | Admin Portal</title>
    <link rel="stylesheet" href="css/style.css">
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
                    <h1>System Logs</h1>
                    <p class="text-muted">Security and activity audit trails</p>
                </div>
                <div>
                   <button class="btn-primary" style="padding: 0.5rem 1rem; font-size: 0.8rem; background: #fee2e2; color: #991b1b; border: none;">Clear All Logs</button>
                </div>
            </header>

            <div class="data-card">
                <div class="table-responsive">
                    <table>
                        <thead>
                            <tr>
                                <th>Timestamp</th>
                                <th>User</th>
                                <th>Event</th>
                                <th>IP Address</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<Object[]> logs = (List<Object[]>) request.getAttribute("logs");
                                if (logs != null && !logs.isEmpty()) {
                                    for (Object[] log : logs) {
                            %>
                            <tr>
                                <td><%= log[2] %></td>
                                <td><%= log[1] %></td>
                                <td><%= log[0] %></td>
                                <td><span class="role-badge badge-Patient"><%= log[3] %></span></td>
                            </tr>
                            <%
                                    }
                                } else {
                            %>
                            <tr>
                                <td colspan="4" style="text-align: center; color: var(--text-muted); padding: 2rem;">No recent system logs found.</td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </div>
</body>
</html>
