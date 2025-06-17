package org.example.cmsjavaee.model;

import jakarta.servlet.ServletContext;
import org.apache.commons.dbcp2.BasicDataSource;
import org.example.cmsjavaee.dto.ComplaintDto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class ComplaintModel {
    public static boolean saveComplaints(ServletContext servletContext, ComplaintDto complaintDto) {
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("ds");

        try{
            Connection connection = ds.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO Complaints(e_id,description,date)VALUES (?,?,?)");
            preparedStatement.setInt(1,complaintDto.getE_id());
            preparedStatement.setString(2,complaintDto.getDescription());
            preparedStatement.setString(3,complaintDto.getDate());
            int i = preparedStatement.executeUpdate();

            if(i>0){
                return true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    public static ComplaintDto findById(ServletContext servletContext, String id) {
        System.out.println(id);
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("ds");
        try{
            Connection connection = ds.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM Complaints WHERE c_id=?");
            preparedStatement.setInt(1,Integer.parseInt(id));
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                return new ComplaintDto(resultSet.getInt("c_id"),resultSet.getInt("e_id"),resultSet.getString("description"),resultSet.getString("date"),resultSet.getString("status"),resultSet.getString("comment"));

            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public static boolean complaintDelete(ServletContext servletContext, int id) {
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("ds");
        try{
            Connection connection = ds.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM Complaints WHERE c_id=?");
            preparedStatement.setInt(1,id);
            int i = preparedStatement.executeUpdate();
            if(i>0){
                return true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    public static boolean complaintUpdate(ServletContext servletContext, ComplaintDto complaintDto) {
        System.out.println(complaintDto.toString());
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("ds");
        try{
            Connection connection = ds.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE Complaints SET description=?,date=? WHERE c_id=?");
            preparedStatement.setString(1,complaintDto.getDescription());
            preparedStatement.setString(2,complaintDto.getDate());
            preparedStatement.setInt(3,complaintDto.getE_id());
            int i = preparedStatement.executeUpdate();
            if(i>0){
                return true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    public static boolean adminComplaint(ServletContext servletContext, ComplaintDto complaintDto) {
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("ds");
        try{
            Connection connection = ds.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE Complaints SET description=? , date=?, status=? , comment=?   WHERE c_id=?");
            preparedStatement.setString(1,complaintDto.getDescription());
            preparedStatement.setString(2,complaintDto.getDate());
            preparedStatement.setString(3,complaintDto.getStatus());
            preparedStatement.setString(4,complaintDto.getComment());
            preparedStatement.setInt(5,complaintDto.getId());
            int i = preparedStatement.executeUpdate();
            if(i>0){
                return true;
            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return false;
    }


    //    public List<ComplaintDto> getById(ServletContext servletContext, String id) {
//        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("ds");
//        try{
//            Connection connection = ds.getConnection();
//            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM Complaints WHERE e_id=?");
//            preparedStatement.setInt(1,Integer.parseInt(id));
//            ResultSet resultSet = preparedStatement.executeQuery();
//            List<ComplaintDto> complaintDtos = new ArrayList<>();
//            while(resultSet.next()){
//                complaintDtos.add(new ComplaintDto(
//                        resultSet.getInt("c_id"),
//                        resultSet.getInt("e_id"),
//                        resultSet.getString("description"),
//                        resultSet.getString("date"),
//                        resultSet.getString("status")
//                ));
//            }
//            return complaintDtos;
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }
public List<ComplaintDto> getById(ServletContext servletContext, String id) {
    List<ComplaintDto> complaintDtos = new ArrayList<>();

    if (id == null || id.isEmpty()) {
        return complaintDtos;
    }

    try {
        int eId = Integer.parseInt(id);
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("ds");
        Connection connection = ds.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM Complaints WHERE e_id=?");
        preparedStatement.setInt(1, eId);
        ResultSet resultSet = preparedStatement.executeQuery();

        while (resultSet.next()) {
            complaintDtos.add(new ComplaintDto(
                    resultSet.getInt("c_id"),
                    resultSet.getInt("e_id"),
                    resultSet.getString("description"),
                    resultSet.getString("date"),
                    resultSet.getString("status"),
                    resultSet.getString("comment")
            ));
        }
    } catch (NumberFormatException | SQLException e) {
        e.printStackTrace();
    }

    return complaintDtos;
}


    public List<ComplaintDto> getAllComplaints(ServletContext servletContext) {
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("ds");
        try{
            Connection connection = ds.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM Complaints");
            ResultSet resultSet = preparedStatement.executeQuery();
            List<ComplaintDto> complaintDtos = new ArrayList<>();
            while(resultSet.next()){
                complaintDtos.add(new ComplaintDto(resultSet.getInt(1),resultSet.getInt(2),resultSet.getString(3),resultSet.getString(4),resultSet.getString(5),resultSet.getString(6)));
            }
            return complaintDtos;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


}
