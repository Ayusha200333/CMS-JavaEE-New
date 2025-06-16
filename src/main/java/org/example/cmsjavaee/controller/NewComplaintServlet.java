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
        System.out.println(id+" "+description+" "+date);

        ServletContext servletContext = req.getServletContext();
        if (ComplaintModel.saveComplaints(servletContext,new ComplaintDto(Integer.parseInt(id),description,date))){
            resp.sendRedirect(req.getContextPath()+"/Employee.jsp?id="+id);
        }
    }
}
