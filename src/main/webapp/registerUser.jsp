<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Result</title>
</head>
<body>
    <%
        // Retrieve user input
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        
        // Simulate a simple check (e.g., username and password must not be empty)
        if (username != null && !username.isEmpty() && password != null && !password.isEmpty()) {
            // Registration successful
            // In a real application, you would typically store this information in a database
            // Here, we just simulate success
            String successMessage = "Registration successful for user: " + username;
            request.setAttribute("successMessage", successMessage);
        } else {
            // Registration failed
            String errorMessage = "Registration failed. Please fill all the fields.";
            request.setAttribute("errorMessage", errorMessage);
        }
        
        // Forward back to the registration form
        request.getRequestDispatcher("register.jsp").forward(request, response);
    %>
</body>
</html>
