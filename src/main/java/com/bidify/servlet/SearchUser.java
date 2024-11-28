package com.bidify.servlet;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class SearchUserServlet
 */
@WebServlet("/searchUser")
public class SearchUser extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the search parameter (email)
        String email = request.getParameter("email");

        RequestDispatcher dispatcher = null;
        Connection con = null;

        try {
            // Establish database connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Bidify?useSSL=false", "root", "password123");

            // Prepare an SQL query to search for the user by email
            String sql = "SELECT id, firstName, lastName, email, gender, streetAddress1, streetAddress2, city, region, country, postalCode FROM Users WHERE email = ?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, email);
            
            ResultSet rs = pst.executeQuery();

            // Check if a user is found
            if (rs.next()) {
                // Set user details as request attributes
                request.setAttribute("id", rs.getInt("id"));
                request.setAttribute("firstName", rs.getString("firstName"));
                request.setAttribute("lastName", rs.getString("lastName"));
                request.setAttribute("email", rs.getString("email"));
                request.setAttribute("gender", rs.getString("gender"));
                request.setAttribute("streetAddress1", rs.getString("streetAddress1"));
                request.setAttribute("streetAddress2", rs.getString("streetAddress2"));
                request.setAttribute("city", rs.getString("city"));
                request.setAttribute("region", rs.getString("region"));
                request.setAttribute("country", rs.getString("country"));
                request.setAttribute("postalCode", rs.getString("postalCode"));

                // Forward to user details JSP page
                dispatcher = request.getRequestDispatcher("user-details.jsp");
            } else {
                // If no user found, forward to search page with an error message
                request.setAttribute("status", "User not found");
                dispatcher = request.getRequestDispatcher("user-details.jsp");
            }

            // Forward the request and response
            dispatcher.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                // Close the database connection
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
