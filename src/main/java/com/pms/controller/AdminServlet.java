package com.pms.controller;

import com.pms.dao.UserDAO;
import com.pms.dao.UserDAOImpl;
import com.pms.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import com.pms.dao.DepartmentDAO;
import com.pms.dao.DepartmentDAOImpl;
import com.pms.model.Department;
import java.util.stream.Collectors;

@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {

    private UserDAO userDAO = new UserDAOImpl();
    private DepartmentDAO departmentDAO = new DepartmentDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) action = "listUsers";

        switch (action) {
            case "listUsers": listUsers(request, response); break;
            case "deleteUser": deleteUser(request, response); break;
            case "listDoctors": listUsersByRole(request, response, "Doctor", "manage-doctors.jsp"); break;
            case "listPatients": listUsersByRole(request, response, "Patient", "manage-patients.jsp"); break;
            case "listDepartments": listDepartments(request, response); break;
            case "deleteDept": deleteDepartment(request, response); break;
            default: listUsers(request, response); break;
        }
    }

    private void listUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("users", userDAO.getAllUsers());
        request.getRequestDispatcher("manage-users.jsp").forward(request, response);
    }

    private void listUsersByRole(HttpServletRequest request, HttpServletResponse response, String role, String jsp) throws ServletException, IOException {
        List<User> list = userDAO.getAllUsers().stream()
                .filter(u -> role.equals(u.getRole()))
                .collect(Collectors.toList());
        request.setAttribute("users", list);
        request.getRequestDispatcher(jsp).forward(request, response);
    }

    private void listDepartments(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("depts", departmentDAO.getAllDepartments());
        request.getRequestDispatcher("manage-departments.jsp").forward(request, response);
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        userDAO.deleteUser(Long.parseLong(request.getParameter("id")));
        response.sendRedirect("AdminServlet?action=listUsers");
    }

    private void deleteDepartment(HttpServletRequest request, HttpServletResponse response) throws IOException {
        departmentDAO.deleteDepartment(Long.parseLong(request.getParameter("id")));
        response.sendRedirect("AdminServlet?action=listDepartments");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("updateUser".equals(action)) {
            updateUser(request, response);
        } else if ("addDept".equals(action)) {
            addDepartment(request, response);
        }
    }

    private void addDepartment(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String desc = request.getParameter("description");
        String head = request.getParameter("headOfDept");
        departmentDAO.addDepartment(new Department(name, desc, head));
        response.sendRedirect("AdminServlet?action=listDepartments");
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        User user = userDAO.getUserById(id);
        if (user != null) {
            user.setFullName(request.getParameter("fullName"));
            user.setEmail(request.getParameter("email"));
            user.setRole(request.getParameter("role"));
            userDAO.updateUser(user);
        }
        response.sendRedirect("AdminServlet?action=listUsers");
    }
}
