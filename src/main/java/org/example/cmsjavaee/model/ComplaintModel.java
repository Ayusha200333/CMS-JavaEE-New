package org.example.cmsjavaee.model;

import jakarta.servlet.ServletContext;
import org.apache.commons.dbcp2.BasicDataSource;
import org.example.cmsjavaee.dto.ComplaintDto;

import java.sql.Connection;
import java.sql.PreparedStatement;


public class ComplaintModel {
    public static boolean saveComplaints(ServletContext servletContext, ComplaintDto complaintDto) {
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("ds");

        try{
            Connection connection = ds.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO Complaints(e_id,description,date)VALUES (?,?,?)");
            PreparedStatement.setInt(1).complaintDto.
        }
    }
}
