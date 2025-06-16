package org.example.cmsjavaee.model;

import jakarta.servlet.ServletContext;
import org.apache.commons.dbcp2.BasicDataSource;
import org.example.cmsjavaee.dto.UserDto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserModel {
    public static UserDto findUser(ServletContext servletContext, UserDto userDto) {
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("ds");
        try{
            Connection connection= ds.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("select * from User where username = ? and password = ? and userRole = ?");
            PreparedStatement.setString(1,userDto.getUsername());
            preparedStatement.setString(2,userDto.getPassword());
            preparedStatement.setString(3,userDto.getUserRole());
            ResultSet resultSet = preparedStatement.executeQuery();

            if(resultSet.next()){
                return new UserDto(resultSet.getInt(1),resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5) );
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public static boolean createUser(ServletContext servletContext, UserDto employee) {
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("ds");
        try{
            Connection connection = ds.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("insert into User (username,password,email,userRole)values(?,?,?,?)");
            preparedStatement.setString(1,employee.getUsername());
            preparedStatement.setString(2,employee.getPassword());
            preparedStatement.setString(3,employee.getEmail());
            preparedStatement.setString(4,employee.getUserRole());
            int i = preparedStatement.executeUpdate();

            if(i>0){
                return true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }
}
