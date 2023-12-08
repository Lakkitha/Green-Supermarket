<!DOCTYPE HTML>
<html lang="en-US">
<head>
  <meta charset="UTF-8">
  <meta name="author" content="Gagana Methmal">
  <meta name="description" content="Login">
  <title> Login </title>
</head>
<body>
<header>
  <h1> This is a login form! </h1>
</header>
<main>
  <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

  <form action="Login" method="POST">
    <label for="email"> <h3> Email </h3> </label>
    <input type="email" name="useremail" id="email" placeholder="yourmom@gmail.com" autocomplete="on">

    <label for="password"> <h3> Password </h3> </label>
    <input type="password" name="password" id="password" placeholder="pass" autocomplete="on"> <br> <br> <br>

    <button type="submit" formaction="Login" formmethod="POST"> Login </button> <br> <br>

    <a href="registration.jsp"> Create a account! </a>
  </form>

  <script type="text/javascript">
    var status = document.getElementById("status").value;
    if(status === "failed")
    {
      alert("Sorry", "wrong username or password", "failed");
    }
  </script>
</main>
</body>
</html>