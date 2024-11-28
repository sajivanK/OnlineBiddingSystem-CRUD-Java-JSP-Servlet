<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>
    <!--  <link rel="stylesheet" href="css/user-list.css"> -->
    
    <style>
    
    	@charset "UTF-8";

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    padding: 20px;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
    background-color: white;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

.btn {
    display: inline-block;
    padding: 10px 20px;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
}

.btn-add {
    background-color: #28a745;
    color: white;
    margin-bottom: 20px;
}

.btn-edit {
    background-color: #007bff;
    color: white;
    margin-right: 10px;
}

.btn-delete {
    background-color: #dc3545;
    color: white;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

.user-table th, .user-table td {
    padding: 12px 15px;
    text-align: left;
    border: 1px solid #ddd;
}

.user-table th {
    background-color: #007bff;
    color: white;
}

.user-table tr:nth-child(even) {
    background-color: #f9f9f9;
}

.user-table tr:hover {
    background-color: #f1f1f1;
}

a {
    text-decoration: none;
    color: white;
}

a:hover {
    opacity: 0.8;
}

@media (max-width: 768px) {
    .container {
        padding: 10px;
    }

    .btn {
        display: block;
        margin-bottom: 10px;
    }

    .user-table th, .user-table td {
        padding: 10px 8px;
    }
}
    	
    
    </style>
</head>
<body>
    <div class="container">
        <h2>User List</h2>
        <a href="<%=request.getContextPath() %>/list" class="btn btn-add">UserList</a>
        <a href="<%=request.getContextPath() %>/new" class="btn btn-add">Add New User</a>
        <table class="user-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>DOB</th>
                    <th>Gender</th>
                    <th>Address</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${listUser}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.email}</td>
                        <td>${user.phoneNumber}</td>
                        <td>${user.dob}</td>
                        <td>${user.gender}</td>
                        <td>
                            ${user.streetAddress1}<br>
                            ${user.streetAddress2}<br>
                            ${user.city}, ${user.region}, ${user.country}<br>
                            Postal Code: ${user.postalCode}
                        </td>
                        <td>
                            <a href="edit?id=<c:out value='${user.id }' />" class="btn btn-edit">Edit</a>
                            <a href="delete?id=<c:out value='${user.id }' />" class="btn btn-delete" 
                               onclick="return confirm('Are you sure you want to delete this user?');">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>
