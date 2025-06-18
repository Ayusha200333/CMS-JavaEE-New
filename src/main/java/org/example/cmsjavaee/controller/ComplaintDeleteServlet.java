package org.example.cmsjavaee.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.cmsjavaee.model.ComplaintModel;

import java.io.IOException;

@WebServlet("/delete")
public class ComplaintDeleteServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            String eid = req.getParameter("eid");

            if (ComplaintModel.complaintDelete(req.getServletContext(), id)) {
                resp.sendRedirect(req.getContextPath() + "/Employee.jsp?id=" + eid);
            } else {
                resp.sendRedirect("error.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("error.jsp");
        }
    }

}


