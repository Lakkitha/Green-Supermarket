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
        <div class="login_container">
            <h2>Login</h2>
            <img src="images/logogreenbig.jpg" alt="logo" class="logo">
            <form id="LoginForm">
                
                <label for="email">Email</label>
                <input type="email" placeholder="Enter your email" id="email" name="email" required>
                
                <label for="password">Password</label>
                <input type="password" placeholder="Enter your password" id="password" name="password" required>
                
                <button class="login_button" onclick=" validateLogin()">Login</button>
            </form>
            
            <a href="" class="forgot_password">Forgot Password?</a>
            
            <p>or</p>
            <button class="register_button" onclick="location.href='Registration.jsp'">Register</button>
            
        </div>
        <script src="LoginScript.js"></script>
            
            
                
        
    </body>
</html>
