<!DOCTYPE HTML>
<html lang="en-US">
<head>
  <meta charset="UTF-8">
  <meta name="author" content="Gagana Methmal">
  <meta name="description" content="Login">
  <link rel="stylesheet" href="CSS/Reg.css">
  <title> Login </title>
</head>
<body>

<main>
    <h1> Login </h1>
    <p>Got an account? Login and buy today!</p>
  <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

  <form action="Login" method="POST">
      
    <input type="email" name="useremail" id="email" placeholder="Enter your Email" autocomplete="on">
    <input type="password" name="password" id="password" placeholder="Enter your password" autocomplete="on"> <br> <br> <br>
    
    <div class="remember-forgot-wrapper">
        <div class="remember-me-wrapper">
            <label>
                <input type="checkbox" name="rememberMe" id="rememberMe"> <span>Remember Me</span>
            </label>
        </div>
        <div class="forgot-password-link">
            <a href="#">Forgot password?</a>
        </div>
    </div>

    <button type="submit" formaction="Login" formmethod="POST"> Login </button> <br> <br>

    <p class="login-message">If you don't have an account, register <a href="registration.jsp">here</a>.</p>
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