package org.example.cmsjavaee.model;

import jakarta.servlet.ServletContext;
import org.apache.commons.dbcp2.BasicDataSource;
import org.example.cmsjavaee.dto.UserDto;

import java.sql.*;

public class UserModel {
    public static UserDto findUserByUsernameAndPassword(ServletContext servletContext, String username, String password) {
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("ds");
        try (Connection connection = ds.getConnection()) {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM User WHERE username = ? AND password = ?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return new UserDto(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5)
                );
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }


    public static UserDto createUser(ServletContext servletContext, UserDto employee) {
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("ds");
        try (Connection connection = ds.getConnection()) {
            PreparedStatement ps = connection.prepareStatement(
                    "INSERT INTO User (username, password, email, userRole) VALUES (?, ?, ?, ?)",
                    Statement.RETURN_GENERATED_KEYS
            );
            ps.setString(1, employee.getUsername());
            ps.setString(2, employee.getPassword());
            ps.setString(3, employee.getEmail());
            ps.setString(4, employee.getUserRole());

            int i = ps.executeUpdate();

            if (i > 0) {
                ResultSet rs = ps.getGeneratedKeys();
                if (rs.next()) {
                    int id = rs.getInt(1);
                    return new UserDto(id, employee.getUsername(), employee.getPassword(), employee.getEmail(), employee.getUserRole());
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }
}


