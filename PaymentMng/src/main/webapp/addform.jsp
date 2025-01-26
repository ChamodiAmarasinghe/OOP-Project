<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Insert</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
		
		/* Medium-sized submit button */
        input[type="submit"] {
            width: 200px;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            display: block;
            margin: 20px auto; /* Centering the button */
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
		
		.container {
            width: 800px;
            margin: 50px auto;
        }

        .form-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .form-container h2 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        .form-container .form-group {
            margin-bottom: 20px;
        }

        .form-container .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
        }

        .form-container .form-group input {
            width: calc(100% - 16px); /* Adjusted width to accommodate padding */
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
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
    <div class="form-container">
        <h2>User Details</h2>
        <form action="insert" method="post" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="${service.name}" required>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" value="${service.address}" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone (0xxxxxxxxx):</label>
                <input type="tel" id="phone" name="phone" value="${service.phone}" required pattern="[0-9]{10}">
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="${service.email}" required>
            </div>
    </div>
    
    <div class="form-container">
        <h2>Payment Details</h2>
        <div class="form-group">
            <label for="holder">Card Holder Name:</label>
            <input type="text" id="holder" name="holder" value="${service.holder}" required>
        </div>
        <div class="form-group">
            <label for="cardnumber">Card Number (xxxx xxxx xxxx xxxx):</label>
            <input type="text" id="cardnumber" name="cardnumber" value="${service.cardnumber}" required pattern="[0-9]{16}">
        </div>
        <div class="form-group">
            <label for="expdate">Expiration Month Year:</label>
            <input type="month" id="expdate" name="expdate" value="${service.expdate}" required>
        </div>
        <div class="form-group">
            <label for="cvv">CVV (xxx):</label>
            <input type="password" id="cvv" name="cvv" value="${service.cvv}" required pattern="[0-9]{3}">
        </div>
    </div>
    <input type="submit" value="Submit">
    </form>
    <a class="back-link" href="http://localhost:8090/PaymentMng/">Back to Payments List</a>
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
