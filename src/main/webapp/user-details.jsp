<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ page import="com.bidify.classes.User" %>
<% 
    User user = (User) request.getAttribute("user"); 
    String status = (String) request.getAttribute("status"); 
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        .status-message {
            color: red;
            text-align: center;
            margin-bottom: 20px;
            font-weight: bold;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
            color: #333;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .back-link {
            display: block;
            margin: 20px 0;
            text-align: center;
            text-decoration: none;
            color: #007bff;
            font-size: 16px;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>User Details</h2>

    <% if (status != null) { %>
        <p class="status-message"><%= status %></p>
    <% } %>

    <table>
        <tr>
            <th>ID</th>
            <td><%= request.getAttribute("id") %></td>
        </tr>
        <tr>
            <th>First Name</th>
            <td><%= request.getAttribute("firstName") %></td>
        </tr>
        <tr>
            <th>Last Name</th>
            <td><%= request.getAttribute("lastName") %></td>
        </tr>
        <tr>
            <th>Email</th>
            <td><%= request.getAttribute("email") %></td>
        </tr>
        <tr>
            <th>Gender</th>
            <td><%= request.getAttribute("gender") %></td>
        </tr>
        <tr>
            <th>Street Address 1</th>
            <td><%= request.getAttribute("streetAddress1") %></td>
        </tr>
        <tr>
            <th>Street Address 2</th>
            <td><%= request.getAttribute("streetAddress2") %></td>
        </tr>
        <tr>
            <th>City</th>
            <td><%= request.getAttribute("city") %></td>
        </tr>
        <tr>
            <th>Region</th>
            <td><%= request.getAttribute("region") %></td>
        </tr>
        <tr>
            <th>Country</th>
            <td><%= request.getAttribute("country") %></td>
        </tr>
        <tr>
            <th>Postal Code</th>
            <td><%= request.getAttribute("postalCode") %></td>
        </tr>
    </table>
    
    <a href="user-list.jsp" class="back-link">Back to User List</a>
</div>

</body>
</html>
    