package org.example.cmsjavaee.controller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.cmsjavaee.dto.ComplaintDto;
import org.example.cmsjavaee.model.ComplaintModel;

import java.io.IOException;

@WebServlet("/new")
public class NewComplaintServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String id = req.getParameter("id");
            String description = req.getParameter("description");
            String date = req.getParameter("date");

            System.out.println(id + " " + description + " " + date);

            if (id == null || id.equals("null") || id.trim().isEmpty()) {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid employee ID");
                return;
            }

            ServletContext servletContext = req.getServletContext();
            try {
                int eId = Integer.parseInt(id);
                ComplaintDto dto = new ComplaintDto(eId, description, date);
                if (ComplaintModel.saveComplaints(servletContext, dto)) {
                    resp.sendRedirect(req.getContextPath() + "/Employee.jsp"+"?id=" + id);
                } else {
                    resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to save complaint");
                }
            } catch (NumberFormatException e) {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID must be a valid number");
            }
        }

    }

