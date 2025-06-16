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

        ServletContext servletContext = req.getServletContext();
//        System.out.println(name + " " + password + " " + email);
        if (UserModel.createUser(new UserDto(name,email,password,"employee"),servletContext)){
            resp.sendRedirect(req.getContextPath()+"/Employee.jsp");
        }
    }
}
