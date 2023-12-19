<%-- 
    Document   : verification
    Created on : Dec 18, 2023, 10:33:08 AM
    Author     : OMEN
--%>

<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="Registration.Verification"%>
<%@page import="Registration.Registration"%>
<%@page import="java.net.URLDecoder"%>

<%
    String verificationToken = (String) request.getParameter("token");
    String email = (String) request.getParameter("email");
    
    if (email != null && verificationToken != null)
    {
        // Check if the verification token is valid and update the status in the database
        if (Verification.IsValidToken(Integer.parseInt(Registration.GetUserIdByEmail(email)), verificationToken)) 
        {
            // Update the verification status
            Verification.UpdateVerificationStatus(email);
            
            // Login with the verification instead, so store id in session
            session.setAttribute("user_id", Registration.GetUserIdByEmail(email));

            // If verified, redirect to the home page
            response.sendRedirect("VerificationLogin");
        }
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Go and verify your account foo!</h1>
    </body>
</html>
