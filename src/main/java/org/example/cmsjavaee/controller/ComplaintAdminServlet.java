package org.example.cmsjavaee.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.cmsjavaee.dto.ComplaintDto;
import org.example.cmsjavaee.model.ComplaintModel;

import java.io.IOException;

@WebServlet("/admin")
public class ComplaintAdminServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String id = req.getParameter("id");
            String description = req.getParameter("description");
            String date = req.getParameter("date");
            String eid = req.getParameter("eid");
            String status = req.getParameter("status");
            String comment = req.getParameter("comment");

            System.out.println(id + " " + description + " " + date + " " + eid + " " + status + " " + comment);

            if (ComplaintModel.adminComplaint(req.getServletContext(), new ComplaintDto(id, description, date, status,comment))) {
                resp.sendRedirect(req.getContextPath() + "/Admin.jsp");
            }

        } catch (Exception e) {
            resp.sendRedirect("error.jsp");
        }
    }

}