<%-- 
    Document   : Cart
    Created on : Dec 14, 2023, 7:01:14?PM
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
            referrerpolicy="no-referrer"
            />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
            />
        <link rel="stylesheet" href="CSS/Cart.css" />
        <script src="Script.js"></script>
    </head>
    <body>
        <header>
            <!-- Sample Navbar - Replace It! -->
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Green Supermarket</a>
                    <button
                        class="navbar-toggler"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                        >
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Fruits</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Vegetables</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Contact Us</a>
                            </li>
                        </ul>
                        <form class="d-flex" role="search">
                            <input
                                class="form-control me-2"
                                type="search"
                                placeholder="Search"
                                aria-label="Search"
                                />
                            <button class="btn btn-outline-success" type="submit">
                                Search
                            </button>
                        </form>
                    </div>
                </div>
            </nav>
            <br />
        </header>

        <main>
            <div class="container">
                <!-- Column 1 - Shopping Cart -->
                <div class="shopping-cart">
                    <h2>Shopping Cart</h2>

                    <table>
                        <thead>
                            <tr>
                        <br />
                        <th class="product-details">Product Details</th>
                        <th class="quantity">Quantity</th>
                        <th class="price">Price</th>
                        <th class="subtotal">Subtotal</th>
                        </tr>
                        </thead>

                        <tbody>
                            <!-- Cart Products 1 -->
                            <tr>
                                <td class="product-details">
                                    <table>
                                        <tr>
                                            <td class="product-info">
                                                <img
                                                    src="Images/Berries Background.jpg"
                                                    alt="Sample Product"
                                                    />
                                            </td>
                                            <td class="product-info">
                                                <strong>Cranberries</strong> <br />
                                                <small>Fruits</small><br />
                                                <small> <a href="#">Remove</a> </small>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="quantity">1</td>
                                <td class="price">$19.99</td>
                                <td class="subtotal">$19.99</td>
                            </tr>

                            <!-- Cart Product 2 -->
                            <tr>
                                <td class="product-details">
                                    <table>
                                        <tr>
                                            <td class="product-info">
                                                <img src="Images/Bananas.jpg" alt="Another Product" />
                                            </td>
                                            <td class="product-info">
                                                <strong>Bananas</strong> <br />
                                                <small>Fruits</small><br />
                                                <small> <a href="#">Remove</a> </small>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="quantity">2</td>
                                <td class="price">$29.99</td>
                                <td class="subtotal">$59.98</td>
                            </tr>

                            <!-- Cart Product 3 -->
                            <tr>
                                <td class="product-details">
                                    <table>
                                        <tr>
                                            <td class="product-info">
                                                <img src="Images/Eggplant.jpg" alt="Another Product" />
                                            </td>
                                            <td class="product-info">
                                                <strong>Eggplant</strong> <br />
                                                <small> Vegetables</small><br />
                                                <small> <a href="#">Remove</a> </small>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="quantity">2</td>
                                <td class="price">$29.99</td>
                                <td class="subtotal">$59.98</td>
                            </tr>

                            <!-- 
                              I tried to add this dynamically to the table loading a sample json to javascript but only category of it work not name and others. :( . I'll figure it out.
                            <script id="product-template" type="text/template">
                              <tr>
                                <td class="product-details">
                                  <table>
                                    <tr>
                                      <td class="product-info">
                                        <img src="{{image}}" alt="{{name}}" />
                                      </td>
                                      <td class="product-info">
                                        <strong>{{name}}</strong> <br />
                                        <small>{{category}}</small><br />
                                        <small> <a href="#" onclick="removeProduct({{id}})">Remove</a> </small>
                                      </td>
                                    </tr>
                                  </table>
                                </td>
                                <td class="quantity">1</td>
                                <td class="price">${{price.toFixed(2)}}</td>
                                <td class="subtotal">${{price.toFixed(2)}}</td>
                              </tr>
                            </script>
                            -->

                        </tbody>
                    </table>
                </div>

                <!-- Column 2 - Order Summary -->
                <div class="order-summary">
                    <h2>Order Summary</h2>
                    <!-- Content -->
                    <p><b> 3 Items </b></p>
                    <p><b> SHIPPING </b></p>
                    <!-- Dropdown -->
                    <select>
                        <option value="standard">Standard Shipping (3 - 5 Days)</option>
                        <option value="express">Express Shipping (1-2 Days)</option>
                    </select>
                    <!-- Promo Code -->
                    <p><b> PROMO CODE </b></p>
                    <input
                        class="form-control rounded-0"
                        type="text"
                        placeholder="Enter promo code"
                        aria-label="default input example"
                        />
                    <button type="button" class="btn btn-danger rounded-0">Apply</button>
                    <hr />
                    <p>Total Cost: <b> $79.97 </b></p>
                    <button type="button" class="btn btn-success rounded-0">
                        Checkout
                    </button>
                </div>
            </div>

            <div class="continue-shopping">
                <br />
                <a href="#"> <<< Continue Shopping </a>
            </div>
        </main>

        <footer>
            <!-- Will be placed after the footer creation -->
        </footer>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"
        ></script>
    </body>
</html>