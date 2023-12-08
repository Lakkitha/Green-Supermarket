<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="Gagana Methmal">
    <meta name="description" content="Registration">
    <title> Registration </title>
    <script src="JavaScript/Signup%20Validation.js"></script>
</head>
<body>
<header>
    <h1> This is the signup form! </h1>
</header>
<main>
    <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

    <form action="Registration" method="POST" onsubmit="validateForm()">
        <label for="name"> <h3> Name </h3> </label>
        <input type="text" name="name" id="name" placeholder="your name" autocomplete="on" required>

        <label for="email"> <h3> Email </h3> </label>
        <input type="email" name="email" id="email" placeholder="batman@gmail.com" autocomplete="on" required>

        <label for="password"> <h3> Password </h3> </label>
        <input type="password" name="password" id="password" placeholder="pass" autocomplete="on" required>

        <label for="rpassword"> <h3> Repeat Password </h3> </label>
        <input type="password" name="rpassword" id="rpassword" placeholder="repeat pass" autocomplete="on" required>

        <label for="contact"> <h3> Contact No: </h3> </label>
        <input type="text" name="contact" id="contact" placeholder="911" autocomplete="on" required> <br> <br> <br>

        <button type="submit" formmethod="POST" value="Register"> Registration </button>
    </form>
</main>

<script type="text/javascript">
    let status = document.getElementById("status").value;
    if(status === "success")
    {
        alert("Account created successfully", "success");
    }
</script>
</body>
</html>