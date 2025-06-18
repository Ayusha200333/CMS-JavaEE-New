package org.example.cmsjavaee.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.cmsjavaee.dto.ComplaintDto;
import org.example.cmsjavaee.model.ComplaintModel;

import java.io.IOException;

@WebServlet("/update")
public class ComplaintUpdateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String id = req.getParameter("id");
            String description = req.getParameter("description");
            String date = req.getParameter("date");
            String eid = req.getParameter("eid");

            ComplaintDto dto = new ComplaintDto(id, description, date);
            if (ComplaintModel.complaintUpdate(req.getServletContext(), dto)) {
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


