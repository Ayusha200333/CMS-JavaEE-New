package org.example.cmsjavaee.controller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.cmsjavaee.dto.UserDto;
import org.example.cmsjavaee.model.UserModel;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        String userRole = req.getParameter("userRole");

        System.out.println(name + " " + password);

        ServletContext servletContext = getServletContext();
        UserDto user = UserModel.findUser(servletContext, new UserDto(name, password,userRole));

        if (user == null) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
        } else if (user.getUserRole().equals("admin")) {
            resp.sendRedirect(req.getContextPath()+"/Admin.jsp"+"?id="+user.getId());
        } else if (user.getUserRole().equals("employee")) {
            resp.sendRedirect(req.getContextPath()+"/Employee.jsp"+"?id="+user.getId());
        }

    }
}