<%-- 
    Document   : Cart
    Created on : Dec 12, 2023, 7:39:20PM
    Author     : Gagana
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en-US">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="author" content="Gagana Methmal">
        <meta name="description" content="Cart | Green Supermarket">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">  </script>  
        <title> Cart </title>
        
        <header>
            <jsp:include page="navbar.jsp"/>
        </header>
        
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous"
              referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
              crossorigin="anonymous" />

        <link href="Cart/NewCSS/Cart.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="JS/cart.js"></script>

    </head>
    
    <body>
 
    <br>
    <br>
    <br>
    <br>
    
        <main>
            <div class="shopping-container">
                <!-- Column 1 - Shopping Cart -->
                <div class="shopping-cart">
                    <h2>Shopping Cart</h2>
                    <br>

                    <table>
                        <thead>
                            <tr>
                                <th class="product-details">Product Details</th>
                                <th class="quantity">Quantity</th>
                                <th class="shopping-price">Price</th>
                                <th class="subtotal">Subtotal</th>
                            </tr>
                        </thead>

                        <tbody class="cart-items">
                            <!-- Cart Products -->                            

                        <!-- Repeat the structure for other products -->

                        </tbody>
                    </table>
                </div>

                <!-- Column 2 - Order Summary -->
                <div class="order-summary">
                    <h2>Order Summary</h2>
                    
                    <!-- Content -->
                    <p><b class="js-noOfItems"></b></p>
                    <p><b class="js-address"></b><c:out value="${address}" /></p>
                    <p><b>SHIPPING</b></p>
                    
                    <!-- Dropdown -->
                    <select>
                        <option value="standard">Standard Shipping (3 - 5 Days)</option>
                        <option value="express">Express Shipping (1-2 Days)</option>
                    </select>
                    
                    <p>Total Cost: <b class="js-total-cost">$</b></p>
                    <c:choose>
                        <c:when test="${empty userid}">
                            <button type="button" class="btn btn-success rounded-0" 
                                    onclick="window.location.href='login.jsp';">
                                Login to Checkout
                            </button>
                        </c:when>
                        <c:otherwise>
                            <div id="paypal-button"></div>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
            

            <!--
            <div class="continue-shopping">
                <br />
                <a href="home.jsp"><<< Continue Shopping</a>
            </div>
            -->
        </main>

    <footer>
        <!-- Will be placed after the footer creation -->
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous">
    </script>
    
    <script>
        addCartItems();
        
        var itemTag = document.querySelector('.js-noOfItems');
        itemTag.innerText = noOfCartItems() + " items";
        
        var totalTag = document.querySelector('.js-total-cost');
        totalTag.innerText += cartTotal();
        
        // Add event listener for each remove button
        let currentCartItems = localStorage.getItem("cart");
    
        // Check if cart isn't null
        if (currentCartItems !== null)
        {
            currentCartItems = JSON.parse(currentCartItems); // Convert cart to object
            
            for (let i in currentCartItems)
            {
                let removeBtn = document.querySelector('.remove-button-' + i);
            
                if (removeBtn !== null)
                {
                    removeBtn.addEventListener("click", function () {
                        removeItemFromCart(currentCartItems[i].itemID);
                    });
                }
            }
            
        }
    </script>
    
    <script src="https://www.paypal.com/sdk/js?client-id=Acuw8QnOeBseazDciSd34fj-2z7Jp1MQKU7fX3YzBftQfYqGvTo74rt5AQ6M2Pb7OIXvAPD1B2xd2Q2Y"></script>
    <script src="JS/payment.js"></script>
    
    </body>
</html>