<%
  if (session.getAttribute("name")==null)
  {
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
    <jsp:include page="home.jsp"/>
</main>
</body>
</html>