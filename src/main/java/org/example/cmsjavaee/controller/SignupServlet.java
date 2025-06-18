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

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String userRole = req.getParameter("userRole");

        ServletContext servletContext = req.getServletContext();

        try {
            if (name == null || password == null || email == null || userRole == null ||
                    name.trim().isEmpty() || password.trim().isEmpty() || email.trim().isEmpty() || userRole.trim().isEmpty()) {
                resp.sendRedirect(req.getContextPath() + "/signup.jsp?error=empty");
                return;
            }

            UserDto user = new UserDto(name, password, email, userRole);
            UserDto savedUser = UserModel.createUser(servletContext, user);

            if (savedUser != null) {
                resp.sendRedirect(req.getContextPath() + "/index.jsp?success=1");
            } else {
                resp.sendRedirect(req.getContextPath() + "/signup.jsp?error=exists");
            }

        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect(req.getContextPath() + "/signup.jsp?error=server");
        }
    }
}
