<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reviews Form</title>
    <style>
    	body {
    	    width: 100vw;
    	    height: 100vh;
    	    display: flex;
    	    justify-content: center;
    	    align-items: center;
    	}
        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        h1 {
            color: #333;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
        }

        input[type="text"], input[type="time"], select {
            width: calc(100% - 16px); /* Adjusted width to accommodate padding */
            padding: 8px;
            margin-bottom: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .back-link {
            display: block;
            margin-top: 20px;
            color: #007bff;
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Add Request</h1>
    <form action="insert" method="post">
    
    <input type="hidden" name="id" value="${service.id}">
    
    <label for="cate">Category:</label>
    <select id="cate" name="cate" required>
        <option value="car">Car</option>
        <option value="army">Army </option>
        <option value="role">Role-Playing</option>
        <option value="adv">Adventure </option>
        <option value="sor">Sports </option>
    </select>
    
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${service.name}" required>
    
    <label for="quan">Quantity:</label>
    <input type="text" id="quan" name="quan" value="${service.quan}" required pattern="[0-9]+" title="Please enter a number." min="1">
    
    
    <label for="date">Date:</label>
    <input type="text" id="date" name="date" value="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>" required >
    
    <input type="submit" value="Submit">
</form>

    <a class="back-link" href="http://localhost:8090/RequestGameMng/">Back to Requests List</a>
    </div>
    
    
</body>
</html>
