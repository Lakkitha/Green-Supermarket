<%@ page import="java.util.UUID" %>
<%@ page import="javax.servlet.http.Cookie" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="Registration.RememberMeUtil" %>

<%
    String rememberMeToken = null;

    // Check if "remember_me_token" cookie exists
    Cookie[] cookies = request.getCookies();
    
    if (cookies != null) 
    {
        for (Cookie cookie : cookies) 
        {
            if (cookie.getName().equals("remember_me_token")) 
            {
                rememberMeToken = cookie.getValue();
                break;
            }
        }
    }

    // If rememberMeToken is not null, validate and log in the user
    if (rememberMeToken != null && RememberMeUtil.ValidateRememberMeToken(rememberMeToken)) 
    {
        RememberMeUtil.LoginWithRememberMeToken(rememberMeToken, request);
        response.sendRedirect("home.jsp");
    } 
    else
    {
        // Redirect to login page if the token is not valid or not present
        response.sendRedirect("login.jsp");
    }
%>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
  <meta charset="UTF-8">
  <meta name="author" content="Gagana Methmal">
  <meta name="description" content="Login">
  <title> Index </title>
</head>
<body>
<main>
    
</main>
</body>
</html>