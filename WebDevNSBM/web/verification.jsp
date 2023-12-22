<%-- 
    Document   : Email Verification
    Created on : Dec 20, 2023, 12:56:32?PM
    Author     : Gagana
--%>

<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="Registration.Verification"%>
<%@page import="Registration.Registration"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.nio.charset.StandardCharsets"%>

<%
    String verificationToken = request.getParameter("token");
    String email = (String) request.getParameter("email");
    String lemail = (String) request.getAttribute("lemail");
    
    if (email != null && verificationToken != null)
    {
         // Manually replace %20 with a space after decoding
        verificationToken = URLDecoder.decode(verificationToken, StandardCharsets.UTF_8.toString()).replace(" ", "+");
        
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

<!DOCTYPE html>
<html lang="en-US">
    <head>
        <meta charset="UTF-8" />
        <meta name="author" content="Gagana" />
        <meta name="description" content="Email Verification | Green Supermarket" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="RegLog/CSS/verification.css" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
            />
        <title>Email Verification</title>
    </head>
    <body>
        <main>
            <div class="container rounded-0">
                <img src="RegLog/Images/Trader's Joe.png" alt="Logo" class="logo" />

                <h2>Please verify your email</h2>

                <div class="box">
                    <p>
                        You're almost there! We've sent an email to <br />
                        <b><%= lemail%></b>
                    </p>
                </div>

                <div class="box">
                    <p>
                        Just click on the link in that email to complete your registration.
                        If you don't see it, you may need to <br />
                        <b>check your spam</b> folder.
                    </p>
                </div>

                <div class="box">
                    <p>Still can't find the email? Refresh the page to get another email!</p>
                </div>
                
                <!--
                <button type="button" class="btn btn-dark rounded-0">
                    Resend Verification Email
                </button>
                !-->

                <div class="box">
                    <p>Need help? <a href="#">Contact Us</a></p>
                </div>
            </div>
        </main>

        <script>
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"
        </script>
    </body>
</html>