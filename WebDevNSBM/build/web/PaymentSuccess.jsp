<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Payment Success</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #d9fcd9;
      text-align: center;
    }

    header {
      background-color: #4caf50;
      color: white;
      padding: 1em;
    }

    main {
      padding: 20px;
    }

    h2 {
      color: #4caf50;
    }

    .message {
      margin-top: 20px;
      font-size: 18px;
      color: #007600;
    }
  </style>
</head>
<body>

  <header>
    <h1>Payment Success</h1>
  </header>

  <main>
    <div>
      <h2>Thank you for your purchase!</h2>
      <p class="message">Your payment was successful.</p>

    <!-- Retrieve and display additional information -->
      <%
        String paymentId = request.getParameter("paymentId");
        String status = request.getParameter("status");
        String amount = request.getParameter("amount");

        if (paymentId != null && status != null && amount != null) {
      %>
          <p>Payment ID: <%= paymentId %></p>
          <p>Status: <%= status %></p>
          <p>Amount: <%= amount %></p>
          <!-- Add more information as needed -->
      <%
        }
      %>
    </div>
  </main>

</body>
</html>
