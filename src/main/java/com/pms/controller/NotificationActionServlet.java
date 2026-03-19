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
import java.util.Date;

@WebServlet("/NotificationActionServlet")
public class NotificationActionServlet extends HttpServlet {
    private UserDAO userDAO = new UserDAOImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("markAllRead".equals(action)) {
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");
            if (user != null) {
                user.setLastNotifCheck(new Date());
                userDAO.updateUser(user);
                session.setAttribute("user", user);
            }
            response.getWriter().write("success");
        }
    }
}
