package com.bidify.servlet;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieving email and password from the login form
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Creating session for the user
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;


        try {
            // Loading the MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establishing the connection with the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Bidify?useSSL=false", "root", "password123");

            // Preparing the SQL query to check user credentials
            String query = "SELECT * FROM users WHERE email = ? AND password = ?";
            PreparedStatement pst = con.prepareStatement(query);

            // Setting email and password parameters in the query
            pst.setString(1, email);
            pst.setString(2, password);

            // Executing the query
            ResultSet rs = pst.executeQuery();

            // Checking if any result is returned, i.e., valid user credentials
            if (rs.next()) {
                // If login is successful, store the user's name in the session
                session.setAttribute("name", rs.getString("firstName"));
                
                // Redirect to home page (index.jsp)
                dispatcher = request.getRequestDispatcher("index.jsp");
                
                
            } else {
                // If login fails, set an attribute "status" to "failed"
                request.setAttribute("status", "failed");
                
                // Redirect back to the login page with failure message
                dispatcher = request.getRequestDispatcher("login.jsp");
            }

            // Forwarding the request and response
            dispatcher.forward(request, response);

            // Closing the connection after query execution
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

