<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delivery List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        h1 {
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        a {
            text-decoration: none;
            color: #007bff;
            margin-right: 10px;
        }

        a:hover {
            text-decoration: underline;
        }

        .add-new-link {
            display: block;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h1>Customers</h1>
    <table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Username</th>
        <th>Password</th>
        <th>Phone</th>
        <th>Email</th>
        <th>Sex</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="service" items="${listview}">
        <tr>
            <td>${service.id}</td>
            <td>${service.name}</td>
            <td>${service.uname}</td>
            <td>${service.password}</td>
            <td>${service.phone}</td>
            <td>${service.email}</td>
            <td>${service.sex}</td>
            <td>
                <a href="edit?id=${service.id}">Edit</a>
                <a href="delete?id=${service.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>

    <a class="add-new-link" href="new">Add New Customers</a>
</body>
</html>
