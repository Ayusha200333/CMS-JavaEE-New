package org.example.cmsjavaee.db;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import org.apache.commons.dbcp2.BasicDataSource;

import java.sql.SQLException;

@WebListener
public class DBCPServlet implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
      BasicDataSource ds = new BasicDataSource();
      ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
      ds.setUrl("jdbc:mysql://localhost:3306/CMS");
      ds.setUsername("root");
      ds.setPassword("Ijse@1234");
      ds.setInitialSize(50);
      ds.setMaxTotal(100);

      ServletContext servletContext = sce.getServletContext();
      servletContext.setAttribute("ds", ds);
    }

    public void contextDestroyed(ServletContextEvent sce) {
        try {
            BasicDataSource ds = (BasicDataSource) sce.getServletContext().getAttribute("ds");
            ds.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
