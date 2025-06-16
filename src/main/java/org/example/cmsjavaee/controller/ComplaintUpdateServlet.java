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
        String id = req.getParameter("id");
        String description = req.getParameter("description");
        String date = req.getParameter("date");
        String eid = req.getParameter("eid");

        System.out.println(id+" "+description+" "+date+" "+eid);
        if (ComplaintModel.complaintUpdate(req.getServletContext(),new ComplaintDto(id,description,date))){
            resp.sendRedirect(req.getContextPath()+"/Employee.jsp?id="+eid);
        }
    }
}
