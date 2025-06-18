package org.example.cmsjavaee.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.cmsjavaee.model.ComplaintModel;

import java.io.IOException;

@WebServlet("/adminDelete")
public class DeleteAdminServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String id = req.getParameter("id");

            if (ComplaintModel.complaintDelete(req.getServletContext(), Integer.parseInt(id))) {
                resp.sendRedirect(req.getContextPath() + "/Admin.jsp");
            }
    }
}


