<%-- 
    Document   : Cart
    Created on : Dec 12, 2023, 7:39:20PM
    Author     : Gagana
--%>

<!DOCTYPE html>
<html lang="en-US">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="author" content="Gagana Methmal">
        <meta name="description" content="Cart | Green Supermarket">
        <title> Cart </title>
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous"
              referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
              crossorigin="anonymous" />
        <link href="NewCSS/Cart.css" rel="stylesheet" type="text/css"/>
        <script src="Script.js"></script>

    </head>
    
    <body>
        
    <br />
    <br />
    
        <main>
            <div class="container">
                <!-- Column 1 - Shopping Cart -->
                <div class="shopping-cart">
                    <h2>Shopping Cart</h2>
                    <br>

                    <table>
                        <thead>
                            <tr>
                                <th class="product-details">Product Details</th>
                                <th class="quantity">Quantity</th>
                                <th class="price">Price</th>
                                <th class="subtotal">Subtotal</th>
                            </tr>
                        </thead>

                        <tbody>
                            <!-- Cart Products -->
                            <tr>
                                <td class="product-details">
                                    <img src="Images/Berries Background.jpg" alt="Cranberries" class="product-image">
                                    <div class="product-description">
                                        <strong>Cranberries</strong><br />
                                        <small>Fruits</small><br />
                                        <button class="remove-button">Remove</button>
                                    </div>
                                </td>
                                <td class="quantity">1</td>
                                <td class="price">$19.99</td>
                                <td class="subtotal">$19.99</td>
                            </tr>

                            <tr>
                                <td class="product-details">
                                    <img src="Images/Bananas.jpg" alt="Banans" class="product-image">
                                    <div class="product-description">
                                        <strong>Bananas</strong><br />
                                        <small>Fruits</small><br />
                                        <button class="remove-button">Remove</button>
                                    </div>
                                </td>
                                <td class="quantity">2</td>
                                <td class="price">$29.99</td>
                                <td class="subtotal">$59.99</td>
                            </tr>

                            <tr>
                                <td class="product-details">
                                    <img src="Images/Eggplant.jpg" alt="Eggplant" class="product-image">
                                    <div class="product-description">
                                        <strong>Eggplant</strong><br />
                                        <small>Vegetables</small><br />
                                        <button class="remove-button">Remove</button>
                                    </div>
                                </td>
                                <td class="quantity">2</td>
                                <td class="price">$29.99</td>
                                <td class="subtotal">$59.99</td>
                            </tr>
                            

                        <!-- Repeat the structure for other products -->

                        </tbody>
                    </table>
                </div>

                <!-- Column 2 - Order Summary -->
                <div class="order-summary">
                    <h2>Order Summary</h2>
                    <!-- Content -->
                    <p><b>3 Items</b></p>
                    <p><b>SHIPPING</b></p>
                    <!-- Dropdown -->
                    <select>
                        <option value="standard">Standard Shipping (3 - 5 Days)</option>
                        <option value="express">Express Shipping (1-2 Days)</option>
                    </select>
                    <!-- Promo Code -->
                    <p><b>PROMO CODE</b></p>
                    <input class="form-control rounded-0" type="text" placeholder="Enter promo code"
                           aria-label="default input example" />
                    <button type="button" class="btn btn-danger rounded-0">Apply</button>
                    <hr />
                    <p>Total Cost: <b>$79.97</b></p>
                    <button type="button" class="btn btn-success rounded-0">Checkout</button>
                </div>
            </div>

            <div class="continue-shopping">
                <br />
                <a href="#"><<< Continue Shopping</a>
            </div>
        </main>

    <footer>
        <!-- Will be placed after the footer creation -->
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous">
    </script>
    
    </body>
</html>