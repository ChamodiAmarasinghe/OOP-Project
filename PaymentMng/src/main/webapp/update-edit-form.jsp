<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Payment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 800px;
            margin: 50px auto;
        }

        h1 {
            color: #333;
            text-align: center;
        }

        form {
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

        input[type="text"],
        input[type="password"],
        input[type="tel"],
        input[type="email"],
        select {
            width: calc(100% - 16px); /* Adjusted width to accommodate padding */
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .form-group {
            width: 47%; /* Adjusted width to accommodate two side-by-side */
            float: left;
            margin-right: 3%; /* Margin between two divs */
        }

        .form-group:last-child {
            margin-right: 0; /* Remove margin for the last div */
        }

        .submit-btn {
            clear: both; /* Clear floating */
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }

        .submit-btn:hover {
            background-color: #0056b3;
        }

        .back-link {
            display: block;
            margin-top: 20px;
            text-align: center;
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
    <h1>Update Payment Details</h1>
    <form action="update" method="get" onsubmit="return validateForm()">
        <input type="hidden" name="id" value="${service.id}">
        
        <div class="form-group">
            <h2>User Details</h2>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${service.name}" required>
            
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" value="${service.address}" required>
            
            <label for="phone">Phone:</label>
            <input type="tel" id="phone" name="phone" value="${service.phone}" required pattern="[0-9]{10}">
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="${service.email}" required>
        </div>
        
        <div class="form-group">
            <h2>Payment Details</h2>
            <label for="holder">Card Holder Name:</label>
            <input type="text" id="holder" name="holder" value="${service.holder}" required>
            
            <label for="cardnumber">Card Number:</label>
            <input type="text" id="cardnumber" name="cardnumber" value="${service.cardnumber}" required pattern="[0-9]{16}">
            
            <label for="expdate">Expiration Date:</label>
            <input type="text" id="expdate" name="expdate" value="${service.expdate}" required>
            
            <label for="cvv">CVV:</label>
            <input type="password" id="cvv" name="cvv" value="${service.cvv}" required pattern="[0-9]{3}">
        </div>

        <input type="submit" class="submit-btn" value="Submit">
    </form>

    <a class="back-link" href="new">Back to Payments List</a>
</div>

<script>
    function validateForm() {
        var phone = document.getElementById("phone").value;
        var cardNumber = document.getElementById("cardnumber").value;
        var cvv = document.getElementById("cvv").value;

        // Phone number validation
        var phoneRegex = /^[0-9]{10}$/;
        if (!phoneRegex.test(phone)) {
            alert("Please enter a valid phone number starting with 0 and containing 10 digits.");
            return false;
        }

        // Card number validation
        var cardNumberRegex = /^[0-9]{16}$/;
        if (!cardNumberRegex.test(cardNumber)) {
            alert("Please enter a valid 16-digit card number.");
            return false;
        }

        // CVV validation
        var cvvRegex = /^[0-9]{3}$/;
        if (!cvvRegex.test(cvv)) {
            alert("Please enter a valid 3-digit CVV.");
            return false;
        }

        return true;
    }
</script>

</body>
</html>
