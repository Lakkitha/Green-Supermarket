<%--
    Document   : Checkout
    Created on : 13 Dec 2023, 16:30:22
    Author     : CHAMATH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Supermarket Checkout</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4;
    }

    header {
      background-color: #333;
      color: white;
      text-align: center;
      padding: 1em;
    }

    main {
      display: flex;
      justify-content: space-between;
      padding: 20px;
    }

    .items {
      width: 60%;
    }

    .summary {
      width: 30%;
      background-color: #fff;
      padding: 15px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .summary h2 {
      border-bottom: 2px solid #333;
      padding-bottom: 10px;
      margin-bottom: 15px;
    }

    .summary ul {
      list-style-type: none;
      padding: 0;
    }

    .summary li {
      display: flex;
      justify-content: space-between;
      margin-bottom: 10px;
    }

    .summary .address {
      display: flex;
      justify-content: space-between;
      margin-bottom: 10px;
      align-items: center;
    }

    .address-edit {
      background-color: #4CAF50;
      color: white;
      border: none;
      padding: 8px 12px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 14px;
      margin-left: 10px;
      cursor: pointer;
    }

    .delivery-date {
      margin-top: 10px;
    }

    .paypal-button {
      margin-top: 20px;
    }
  </style>
</head>
<body>

  <header>
    <h1>Supermarket Checkout</h1>
  </header>

  <main>
    <%
      // Get attribute values from the request
      String address = (String) request.getAttribute("uaddress");
      double subtotal = 25.0; // Replace with the value from DB

      // Calculate tax (3% of the subtotal)
      double taxRate = 0.03;
      double tax = subtotal * taxRate;

      // Calculate total
      double total = subtotal + tax + 5; // shipping fee

      // Format currency values
      String subtotalFormatted = String.format("%.2f", subtotal);
      String taxFormatted = String.format("%.2f", tax);
      String totalFormatted = String.format("%.2f", total);
    %>

    <div class="items">
      <h2>Selected Items</h2>
      <ul>
        <li>Item 1 - $10</li>
        <li>Item 2 - $15</li>
        <!-- Add more items as needed -->
      </ul>
    </div>

    <div class="summary">
      <h2>Order Summary</h2>
      <div class="address">
        <span>Delivery Address:</span>
        <span><%= address %></span>
        <button class="address-edit">Edit</button>
      </div>
      <div class="delivery-date">
        <span>Delivery Date:</span>
        <span id="nextDeliveryDate">MM/DD/YYYY</span>
      </div>
      <ul>
        <li>
          <span>Subtotal:</span>
          <span>$<%= subtotalFormatted %></span>
        </li>
        <li>
          <span>Tax (3%):</span>
          <span>$<%= taxFormatted %></span>
        </li>
        <li>
          <span>Shipping Fee:</span>
          <span>$5.00</span>
        </li>
        <li>
          <span>Total:</span>
          <span>$<%= totalFormatted %></span>
        </li>
      </ul>
      <div id="paypal-button"></div>
    </div>
  </main>
        
  <script src="https://www.paypal.com/sdk/js?client-id=Acuw8QnOeBseazDciSd34fj-2z7Jp1MQKU7fX3YzBftQfYqGvTo74rt5AQ6M2Pb7OIXvAPD1B2xd2Q2Y"></script>
  <script src="payment.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', function () {
        // Function to get the next day's date
        function getNextDay() {
            var today = new Date();
            var nextDay = new Date(today);
            nextDay.setDate(today.getDate() + 1);

            var dd = nextDay.getDate();
            var mm = nextDay.getMonth() + 1; // January is 0!
            var yyyy = nextDay.getFullYear();

            // Add leading zeros if needed
            dd = (dd < 10) ? '0' + dd : dd;
            mm = (mm < 10) ? '0' + mm : mm;

            return mm + '/' + dd + '/' + yyyy;
        }

        // Set the next day's date in the delivery date span
        var deliveryDateSpan = document.getElementById('nextDeliveryDate');
        if (deliveryDateSpan) {
            deliveryDateSpan.textContent = getNextDay();
        }
    });
</script>

</body>
</html>
