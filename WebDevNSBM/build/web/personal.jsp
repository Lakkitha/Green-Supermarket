<%-- 
    Document   : personal
    Created on : Dec 20, 2023, 9:26:44 AM
    Author     : lakki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="temp.css">
    <title>Green Supermarket</title>
</head>

<body class="vh-100">
    <!-- NavBar -->
    <nav class="navbar navbar-expand-lg" style="background-color: rgba(255, 255, 255, 0.466);">
        <div class="container">

            <!-- Logo -->
            <a class="navbar-brand fs-4" href="/index.html">Logo</a>

            <!-- Toggle Menu Button -->
            <button class="navbar-toggler shadow-none border-0" type="button" data-bs-toggle="offcanvas"
                data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- SideBar -->
            <div class="sidebar offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar"
                aria-labelledby="offcanvasNavbarLabel">

                <!-- Sidebar Header -->
                <div class="offcanvas-header text-white border-bottom">
                    <h5 class="offcanvas-title text-black" id="offcanvasNavbarLabel">Logo</h5>
                    <button type="button" class="btn-close btn-close-white shadow-none" data-bs-dismiss="offcanvas"
                        aria-label="Close"></button>
                </div>

                <!-- Sidebar Body -->
                <div class="offcanvas-body d-flex flex-column flex-lg-row p-4 p-lg-0">
                    <ul class="navbar-nav justify-content-center align-items-center flex-grow-1 pe-3">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="#" style="font-size: 18px; font-weight: bold;">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" style="font-size: 18px; font-weight: bold;">Fruits</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" style="font-size: 18px; font-weight: bold;">Vegetables</a>
                        </li>
                    </ul>

                    <!-- Icons and Total Price on the right side -->
                    <div class="ms-auto navbar-icons">
                        <i class="bi bi-person"></i> <!-- Person icon -->
                        <i class="bi bi-cart"></i> <!-- Cart icon -->
                        <span class="cart-total">Rs. 0.00</span> <!-- Cart total price -->
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <!-- About Section -->
    <section class="about py-5">
        <div class="container py-5">
            <div class="row py-5">
                <div class="col-lg-5 offset-lg-7 col-md-6 col-sm-12 col-12"> <!-- Fix: remove the extra dash -->
                    <p class="m-0">Organic Products</p>
                    <h1>About Our Organ</h1>
                    <div class="line my-4"></div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti sequi, officia ducimus
                        quisquam ratione rerum consectetur nobis eaque mollitia iusto dolorum magnam itaque quae est
                        explicabo, at voluptas accusamus cumque.
                    </p>
                    <!-- Fix: Add appropriate content inside the button or remove it -->
                    <button class="mbtn1 m-4">Random</button>
                </div>
            </div>
        </div>
    </section>

    <!-- Welcome to GS -->
    <section class="welcome text-center pb-5">
        <div class="container py-5">
            <div class="row py-5 text-white">
                <div class="col-lg-6 m-auto">
                    <!-- Your existing content here -->
                </div>
            </div>
            <div class="row">
                <!-- Wrap the cards in a single row -->
                <div class="col-lg-4">
                    <div class="card py-3">
                        <div class="card-body">
                            <span><i class="bi bi-shop-window"></i></span>
                            <h2>Always Fresh</h2>
                            <p>Something Random Here</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="card py-3">
                        <div class="card-body">
                            <span><i class="bi bi-flower2"></i></span>
                            <h2>Healthy Food</h2>
                            <p>Something Random Here</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="card py-3">
                        <div class="card-body">
                            <span><i class="bi bi-gift"></i></span>
                            <h2>100% Organic</h2>
                            <p>Something Random Here</p>
                        </div>
                    </div>
                </div>

            </div>
    </section>

    <!-- Products Section -->
    <section class="product bg-light">
        <div class="container">
            <div class="row py-5 text-center">
                <div class="col-lg-6 m-auto">
                    <p class="m-0">Green Agriculture</p>
                    <h1>Our Best Products</h1>
                    <div class="line my-4"></div>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam sequi totam iste placeat aliquam
                        id cupiditate facere suscipit, beatae distinctio et ducimus amet repellendus earum debitis
                        repudiandae, aliquid fugiat magni.</p>
                </div>
                <div class="row py-3">
                    <div class="col-lg-4">
                        <div class="card p-2">
                            <div class="card-body">
                                <div class="star">
                                    <span><i class="bi bi-star-fill"></i></span>
                                    <span><i class="bi bi-star-fill"></i></span>
                                    <span><i class="bi bi-star-fill"></i></span>
                                    <span><i class="bi bi-star-fill"></i></span>
                                </div>
                                <img src="images/orange.jpg" alt="orange" class="img-fluid pb-3">
                                <h4 class="head1">Orange</h4>
                                <p class="per1">2 x 454g / 16oz</p>
                                <h4 class="head1">$43.00</h4>
                                <button class="btnc my-4">ADD TO CART</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card p-2">
                            <div class="card-body">
                                <div class="star">
                                    <span><i class="bi bi-star-fill"></i></span>
                                    <span><i class="bi bi-star"></i></span>
                                    <span><i class="bi bi-star"></i></span>
                                    <span><i class="bi bi-star"></i></span>
                                </div>
                                <img src="images/Pom.jpg" alt="orange" class="img-fluid pb-3">
                                <h4 class="head1">Orange</h4>
                                <p class="per1">2 x 454g / 16oz</p>
                                <h4 class="head1">$43.00</h4>
                                <button class="btnc my-4">ADD TO CART</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card p-2">
                            <div class="card-body">
                                <div class="star">
                                    <span><i class="bi bi-star-fill"></i></span>
                                    <span><i class="bi bi-star-fill"></i></span>
                                    <span><i class="bi bi-star-half"></i></span>
                                    <span><i class="bi bi-star"></i></span>
                                </div>
                                <img src="images/papaya.jpg" alt="orange" class="img-fluid pb-3">
                                <h4 class="head1">Orange</h4>
                                <p class="per1">2 x 454g / 16oz</p>
                                <h4 class="head1">$43.00</h4>
                                <button class="btnc my-4">ADD TO CART</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row py-3">
                    <div class="col-lg-4">
                        <div class="card p-2">
                            <div class="card-body">
                                <div class="star">
                                    <span><i class="bi bi-star-fill"></i></span>
                                    <span><i class="bi bi-star-fill"></i></span>
                                    <span><i class="bi bi-star-fill"></i></span>
                                    <span><i class="bi bi-star-fill"></i></span>
                                </div>
                                <img src="images/strawnb.jpg" alt="orange" class="img-fluid pb-3">
                                <h4 class="head1">Strawberry</h4>
                                <p class="per1">2 x 454g / 16oz</p>
                                <h4 class="head1">$43.00</h4>
                                <button class="btnc my-4">ADD TO CART</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card p-2">
                            <div class="card-body">
                                <div class="star">
                                    <span><i class="bi bi-star-fill"></i></span>
                                    <span><i class="bi bi-star"></i></span>
                                    <span><i class="bi bi-star"></i></span>
                                    <span><i class="bi bi-star"></i></span>
                                </div>
                                <img src="images/melon.jpg" alt="orange" class="img-fluid pb-3">
                                <h4 class="head1">Water Melon</h4>
                                <p class="per1">2 x 454g / 16oz</p>
                                <h4 class="head1">$43.00</h4>
                                <button class="btnc my-4">ADD TO CART</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card p-2">
                            <div class="card-body">
                                <div class="star">
                                    <span><i class="bi bi-star-fill"></i></span>
                                    <span><i class="bi bi-star-fill"></i></span>
                                    <span><i class="bi bi-star-half"></i></span>
                                    <span><i class="bi bi-star"></i></span>
                                </div>
                                <img src="images/manngo.jpg" alt="orange" class="img-fluid pb-3">
                                <h4 class="head1">Mango</h4>
                                <p class="per1">2 x 454g / 16oz</p>
                                <h4 class="head1">$43.00</h4>
                                <button class="btnc my-4">ADD TO CART</button>
                            </div>
                        </div>
                    </div>
                    <div class="row text-center py-5">
                        <div class="col-lg-6 m-auto">
                            <button class="mbtn1">Explore More</button>
                        </div>
                    </div>
                </div>
            </div>
    </section>

    <!-- Store Section -->
    <section class="store py-5 bg-light text-center">
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-6 m-auto">
                    <p class="m-0">Green Agriculture</p>
                    <h1>Our Best Products</h1>
                    <div class="line my-4"></div>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam sequi totam iste placeat aliquam
                        id cupiditate facere suscipit, beatae distinctio et ducimus amet repellendus earum debitis
                        repudiandae, aliquid fugiat magni.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 mt-2">
                    <div class="card py-3">
                        <div class="card-body">
                            <span><i class="bi bi-truck"></i></span>
                            <h5 class="head1 py-3">Free Shipping</h5>
                            <p class="per1">With $100 or more orders.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 mt-2">
                    <div class="card py-3">
                        <div class="card-body">
                            <span><i class="bi bi-truck"></i></span>
                            <h5 class="head1 py-3">Organic Certified</h5>
                            <p class="per1">With $100 or more orders.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 mt-2">
                    <div class="card py-3">
                        <div class="card-body">
                            <span><i class="bi bi-truck"></i></span>
                            <h5 class="head1 py-3">Secure Payment</h5>
                            <p class="per1">With $100 or more orders.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 mt-2">
                    <div class="card py-3">
                        <div class="card-body">
                            <span><i class="bi bi-truck"></i></span>
                            <h5 class="head1 py-3">Friendly Support</h5>
                            <p class="per1">With $100 or more orders.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <section class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 pt-3">
                    <p>Copyrights 2024 @ Green Supermarket</p>
                </div>
                <div class="col-lg-3">
                </div>
            </div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>

