<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Reviews</title>
    <style>
    	body{
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

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
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
    <h1>Update Reviews</h1>
    <form action="update" method="get">
        <input type="hidden" name="id" value="${service.id}">
    
    <label for="rating">Rating:</label>
    <input type="text" id="rating" name="rating" value="${service.rating}">
    
    <label for="comment">Comment:</label>
    <input type="text" id="comment" name="comment" value="${service.comment}">
    
    <label for="timestamp">Timestamp:</label>
    <input type="text" id="timestamp" name="timestamp" value="${service.timestamp}">
    
    <label for="date">Date:</label>
    <input type="text" id="date" name="date" value="${service.date}">
    
    <input type="submit" value="Submit">
    </form>
    <a class="back-link" href="new">Back to Reviews List</a>
</div>

</body>
</html>
