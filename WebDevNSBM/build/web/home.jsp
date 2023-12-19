<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="Gagana Methmal">
    <meta name="description" content="Home">
    <title>Home Page</title>
</head>
<body>
<main>
    <h4>Home Page</h4>
    
    <div>
        <% 
            // Retrieve session attributes
            String userId = (String) session.getAttribute("uid");
            String username = (String) session.getAttribute("uname");

            // Check if attributes are not null
            if (userId != null && username != null) {
        %>
            <p>Welcome, <%= username %>, your id is <%= userId %></p>
            <form action="Logout" method="POST">
                <button type="submit">Logout</button>
            </form>
        <%
            } else {
        %>
            <p>Welcome, Guest</p>
            <a href="login.jsp">Login</a>
        <%
            }
        %>
    </div>
</main>
</body>
</html>
