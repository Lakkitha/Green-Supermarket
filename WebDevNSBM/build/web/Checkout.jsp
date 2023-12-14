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
      <ul>
        <li>
          <span>Subtotal:</span>
          <span>$25</span>
        </li>
        <li>
          <span>Tax (3%):</span>
          <span>$0.75</span>
        </li>
        <li>
          <span>Shipping Fee:</span>
          <span>$5</span>
        </li>
        <li>
          <span>Total:</span>
          <span>$225.75</span>
        </li>
      </ul>
      <div id="paypal-button">
          
      </div>
    </div>
  </main>

    <script src="https://www.paypal.com/sdk/js?client-id=AXYcCsU9LgYLE699uYxdowqvQqdxxoMLDNKsDwAw5LeTpeNTnf5PjcbIi1WxoaVXFpf00GTR7p7gDgvj"></script>
    <script src="payment.js"></script>
    
</body>
</html>
