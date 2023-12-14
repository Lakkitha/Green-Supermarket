<%-- 
    Document   : Login
    Created on : Dec 14, 2023, 2:29:43 AM
    Author     : waths
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="LoginStyles.css">
        <title>Login Page</title>
    </head>
    <body>
        <div class="login-container">
            <h2>Login</h2>
            <img src="images/logogreenbig.jpg" alt="logo" class="logo">
            <form id="LoginForm">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
                
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                
                <button type="button" onclick=" validateLogin()">Login</button>
            </form>
            
        </div>
            
            
                
        
    </body>
</html>
