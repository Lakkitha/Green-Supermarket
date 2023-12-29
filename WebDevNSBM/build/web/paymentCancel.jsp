<%-- 
    Document   : PaymentCancel
    Created on : 14 Dec 2023, 15:04:32
    Author     : CHAMATH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Payment Failed</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #ffcccc;
      text-align: center;
    }

    header {
      background-color: #ff3333;
      color: white;
      padding: 1em;
    }

    main {
      padding: 20px;
    }

    h2 {
      color: #ff3333;
    }

    .message {
      margin-top: 20px;
      font-size: 18px;
      color: #b30000;
    }
  </style>
</head>
<body>

  <header>
    <h1>Payment Failed</h1>
  </header>

 <main>
    <div>
      <h2>Oops! Something went wrong.</h2>
      <p class="message">Your payment was not successful. Please try again.</p>

      <!-- Retrieve and display additional information -->
      <%
        String cancelReason = request.getParameter("cancelReason");

        if (cancelReason != null) {
      %>
          <p>Cancel Reason: <%= cancelReason %></p>
          <!-- Add more information as needed -->
      <%
        }
      %>
    </div>
  </main>

</body>
</html>
