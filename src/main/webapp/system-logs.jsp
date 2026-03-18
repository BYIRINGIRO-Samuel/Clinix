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
                        <tbody style="font-family: monospace; font-size: 0.85rem;">
                            <tr>
                                <td>2024-03-21 14:22:45</td>
                                <td>admin@pms.com</td>
                                <td>Logged in from Chrome/Win10</td>
                                <td>192.168.1.45</td>
                            </tr>
                            <tr>
                                <td>2024-03-21 13:10:12</td>
                                <td>system</td>
                                <td>Automated backup completed</td>
                                <td>127.0.0.1</td>
                            </tr>
                            <tr>
                                <td>2024-03-21 12:05:01</td>
                                <td>dr.house@pms.com</td>
                                <td>Updated patient medical record</td>
                                <td>192.168.1.102</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </div>
</body>
</html>
