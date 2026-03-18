<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.pms.model.Department" %>
<%@ page import="com.pms.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Departments | Admin Portal</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <%
        User currentUser = (User) session.getAttribute("user");
        if (currentUser == null || !"Admin".equals(currentUser.getRole())) {
            response.sendRedirect("login.jsp");
            return;
        }

        List<Department> depts = (List<Department>) request.getAttribute("depts");
        if (depts == null) {
            response.sendRedirect("AdminServlet?action=listDepartments");
            return;
        }
    %>

    <div class="dashboard-layout">
        <jsp:include page="components/sidebar.jsp" />

        <main class="main-content">
            <header class="top-bar">
                <div class="page-title">
                    <h1>Manage Departments</h1>
                    <p class="text-muted">Configure hospital organizational structure</p>
                </div>
            </header>

            <%-- Action Area: Add Department --%>
            <div class="data-card" style="margin-bottom: 2rem; padding: 1.5rem;">
                <h2 style="font-weight: 700; margin-bottom: 1.5rem;">Add New Department</h2>
                <form action="AdminServlet" method="POST" style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1rem; align-items: end;">
                    <input type="hidden" name="action" value="addDept">
                    <div class="input-group">
                        <label style="font-size: 0.8rem; font-weight: 600;">Dept Name</label>
                        <input type="text" name="name" placeholder="e.g. Cardiology" required 
                               style="width: 100%; padding: 0.5rem; border: 1px solid var(--border-color); border-radius: 8px;">
                    </div>
                    <div class="input-group">
                        <label style="font-size: 0.8rem; font-weight: 600;">Description</label>
                        <input type="text" name="description" placeholder="Short description"
                               style="width: 100%; padding: 0.5rem; border: 1px solid var(--border-color); border-radius: 8px;">
                    </div>
                    <div class="input-group">
                        <label style="font-size: 0.8rem; font-weight: 600;">Head of Dept</label>
                        <input type="text" name="headOfDept" placeholder="Dr. Name"
                               style="width: 100%; padding: 0.5rem; border: 1px solid var(--border-color); border-radius: 8px;">
                    </div>
                    <button type="submit" class="btn-primary" style="padding: 0.6rem 1.5rem; border: none; height: 38px;">Add Dept</button>
                </form>
            </div>

            <div class="data-card">
                <div class="data-header">
                    <h2 style="font-weight: 700; margin: 0;">Existing Departments</h2>
                </div>
                <div class="table-responsive">
                    <table>
                        <thead>
                            <tr>
                                <th>#ID</th>
                                <th>Department Name</th>
                                <th>Description</th>
                                <th>Head of Dept</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% if (depts.isEmpty()) { %>
                                <tr>
                                    <td colspan="5" style="text-align: center; padding: 3rem;">No departments configured.</td>
                                </tr>
                            <% } else { %>
                                <% for (Department d : depts) { %>
                                    <tr>
                                        <td>#<%= d.getId() %></td>
                                        <td style="font-weight: 600;"><%= d.getName() %></td>
                                        <td><%= d.getDescription() %></td>
                                        <td>Dr. <%= d.getHeadOfDept() %></td>
                                        <td>
                                            <a href="AdminServlet?action=deleteDept&id=<%= d.getId() %>" 
                                               onclick="return confirm('Delete this department?')"
                                               class="btn-primary" 
                                               style="padding: 0.25rem 0.5rem; background: #fee2e2; color: #991b1b; font-size: 0.75rem; text-decoration: none; border: none;">Remove</a>
                                        </td>
                                    </tr>
                                <% } %>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </div>
</body>
</html>
