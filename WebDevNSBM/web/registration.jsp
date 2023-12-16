<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="Gagana Methmal">
    <meta name="description" content="Registration">
    <title>Registration</title>
    <script src="JavaScript/Signup%20Validation.js"></script>
    <link rel="stylesheet" href="CSS/Reg.css">
</head>
<body>

<main>
    <h1>Register</h1>
    <p>Create your account, only takes a minute!</p>
    <br>

    <!-- Status being the status of the registration servlet -->
    <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

    <form action="Registration" method="POST" onsubmit="validateForm()">
        
        <div style="display: flex; gap: 10px;">
            <div style="flex: 1;">
                <input type="text" name="fname" id="fname" placeholder="First name" autocomplete="on" required>
            </div>
            <div style="flex: 1;">
                <input type="text" name="lname" id="lname" placeholder="Last name" autocomplete="on" required>
            </div>
        </div>

        <input type="email" name="email" id="email" placeholder="Email" autocomplete="on" required>

        <input type="text" name="address" id="address" placeholder="Address Line" autocomplete="on" required>

        <div style="display: flex; gap: 10px;">
            <div style="flex: 1;">
                <input type="text" name="postal" id="postal" placeholder="Postal Code" autocomplete="on" required>
            </div>
            <div style="flex: 1;">
                <input type="text" name="contact" id="contact" placeholder="Mobile No." autocomplete="on" required>
            </div>
        </div>
        
        <div style="display: flex; gap: 10px;">
            <div style="flex: 1;">
                <input type="password" name="password" id="password" placeholder="Password" autocomplete="off" required>
            </div>
            <div style="flex: 1;">
                <input type="password" name="rpassword" id="rpassword" placeholder="Confirm Password" autocomplete="off" required>
            </div>
        </div>
        <br>
        <button type="submit" formmethod="POST" value="Register">Register</button>
    </form>
    
    <p class="login-message">If you already have an account, login <a href="login.jsp">here</a>.</p>
</main>

<script type="text/javascript">
    let status = document.getElementById("status").value;
    if (status === "success") {
        alert("Account created successfully", "success");
        window.location.href = "login.jsp";
    }
</script>

</body>
</html>
