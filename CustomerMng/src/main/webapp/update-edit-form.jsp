<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Delivery</title>
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
    width: 400px;
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

input[type="submit"] {
    width: 100%;
    padding: 10px;
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
    <h1>Update Profile</h1>
    <form action="update" method="get" onsubmit="return validateForm()">
    <input type="hidden" name="id" value="${service.id}">
    
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${service.name}" required>
    
    <label for="uname">Username:</label>
    <input type="text" id="uname" name="uname" value="${service.uname}" required>
    
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" value="${service.password}" pattern="^(?=.*\d)(?=.*[a-zA-Z])(?=.*\W).{8,}$" title="Password must contain at least 8 characters, one number, one letter, and one symbol." required>
    
    <label for="phone">Phone:</label>
    <input type="tel" id="phone" name="phone" value="${service.phone}" pattern="0\d{9}" title="Phone number must start with 0 and have 10 digits." required>
    
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" value="${service.email}" required>
    
    <label for="sex">Sex:</label>
    <select id="sex" name="sex" required>
        <option value="">Select</option>
        <option value="male" ${service.sex == 'male' ? 'selected' : ''}>Male</option>
        <option value="female" ${service.sex == 'female' ? 'selected' : ''}>Female</option>
        <option value="other" ${service.sex == 'other' ? 'selected' : ''}>Other</option>
    </select>
    
    <input type="submit" value="Submit">
</form>

<script>
function validateForm() {
    var passwordInput = document.getElementById("password");
    var password = passwordInput.value;
    var passwordPattern = /^(?=.*\d)(?=.*[a-zA-Z])(?=.*\W).{8,}$/;
    
    if (!passwordPattern.test(password)) {
        alert("Password must contain at least 8 characters, one number, one letter, and one symbol.");
        passwordInput.focus();
        return false;
    }
    
    var phoneInput = document.getElementById("phone");
    var phone = phoneInput.value;
    var phonePattern = /^0\d{9}$/;

    if (!phonePattern.test(phone)) {
        alert("Phone number must start with 0 and have 10 digits.");
        phoneInput.focus();
        return false;
    }
    
    return true;
}
</script>


    <a class="back-link" href="new">Back to Delivery List</a>
</div>


</body>
</html>
