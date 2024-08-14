<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
</head>
<body>
    <h2>User Registration Form</h2>
    
    <%-- Form to accept user input --%>
    <form action="registerUser.jsp" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        
        <input type="submit" value="Register">
    </form>
    
    <%-- Display registration status messages --%>
    <div>
        <p style="color: red;"><%= request.getAttribute("errorMessage") %></p>
        <p style="color: green;"><%= request.getAttribute("successMessage") %></p>
    </div>
</body>
</html>
