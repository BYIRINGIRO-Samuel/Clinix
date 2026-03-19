package com.pms.controller;

import com.pms.dao.AdminDAO;
import com.pms.dao.AdminDAOImpl;
import com.pms.model.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
    private AdminDAO adminDAO;

    @Override
    public void init() throws ServletException {
        adminDAO = new AdminDAOImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null || !"Admin".equals(user.getRole())) {
            response.sendRedirect("login.jsp");
            return;
        }

        String action = request.getParameter("action");
        if (action == null) action = "dashboard";

        switch (action) {
            case "dashboard":
                showDashboard(request, response);
                break;
            case "manageUsers":
                manageUsers(request, response);
                break;
            case "managePatients":
                managePatients(request, response);
                break;
            case "manageDoctors":
                manageDoctors(request, response);
                break;
            case "payments":
                showPayments(request, response);
                break;
            case "reports":
                showReports(request, response);
                break;
            case "logs":
                showLogs(request, response);
                break;
            default:
                showDashboard(request, response);
        }
    }

    private void showDashboard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("totalPatients", adminDAO.getTotalPatients());
        request.setAttribute("totalDoctors", adminDAO.getTotalDoctors());
        request.setAttribute("totalAppointments", adminDAO.getTotalAppointments());
        request.setAttribute("totalRevenue", adminDAO.getTotalRevenue());
        request.setAttribute("recentActivity", adminDAO.getRecentActivity());
        
        request.getRequestDispatcher("admin-dashboard.jsp").forward(request, response);
    }

    private void manageUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("users", adminDAO.getAllUsers());
        request.getRequestDispatcher("manage-users.jsp").forward(request, response);
    }

    private void managePatients(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("users", adminDAO.getAllPatients());
        request.getRequestDispatcher("manage-patients.jsp").forward(request, response);
    }

    private void manageDoctors(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("users", adminDAO.getAllDoctors());
        request.getRequestDispatcher("manage-doctors.jsp").forward(request, response);
    }

    private void showPayments(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("billings", adminDAO.getAllBillings());
        request.setAttribute("totalRevenue", adminDAO.getTotalRevenue());
        request.getRequestDispatcher("payments.jsp").forward(request, response);
    }

    private void showReports(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Here we could add stats for charts
        request.getRequestDispatcher("reports.jsp").forward(request, response);
    }

    private void showLogs(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("logs", adminDAO.getRecentActivity());
        request.getRequestDispatcher("system-logs.jsp").forward(request, response);
    }
}
