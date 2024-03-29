<%-- 
    Document   : personal
    Created on : Dec 21, 2023, 1:44:45 PM
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="Home/homeStyle.css">
    <link rel="stylesheet" href="Home/nav.css">
    <title>Green Supermarket</title>
</head>

<body class="vh-100">
    <!-- NavBar -->
    <header>
        <jsp:include page="navbar.jsp"/>
    </header>

    <!-- Main -->
    <section class="main py-5">
        <div class="container">
            <div class="row py-5">
                <div class="col-lg-6 py-5">
                    <p class="m-0">Organic Products</p>
                    <h1>Fresh Organic</h1>
                    <div class="line my-4"></div>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit ut minus quasi, odio
                        officiis, quod quisquam expedita quia possimus illo iste totam! Delectus cum repudiandae
                        repellendus a! Eum, distinctio beatae?
                    </p>
                    <button class="mbtn1 mt -4">Fruits</button>
                    <button class="mbtn2">Vegitables</button>
                </div>
            </div>
        </div>
    </section>

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
                                <img src="Home/Images/orange.jpg" alt="orange" class="img-fluid pb-3">
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
                                <img src="Home/Images/Pomegranate.jpg" alt="orange" class="img-fluid pb-3">
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
                                <img src="Home/Images/papaya.jpg" alt="orange" class="img-fluid pb-3">
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
                                <img src="Home/Images/strawnb.jpg" alt="orange" class="img-fluid pb-3">
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
                                <img src="Home/Images/melon.jpg" alt="orange" class="img-fluid pb-3">
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
                                <img src="Home/Images/manngo.jpg" alt="orange" class="img-fluid pb-3">
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
                            <span><i class="bi bi-patch-check"></i></span>
                            <h5 class="head1 py-3">Organic Certified</h5>
                            <p class="per1">With $100 or more orders.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 mt-2">
                    <div class="card py-3">
                        <div class="card-body">
                            <span><i class="bi bi-wallet"></i></span>
                            <h5 class="head1 py-3">Secure Payment</h5>
                            <p class="per1">With $100 or more orders.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 mt-2">
                    <div class="card py-3">
                        <div class="card-body">
                            <span><i class="bi bi-person-check"></i></span>
                            <h5 class="head1 py-3">Friendly Support</h5>
                            <p class="per1">With $100 or more orders.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-dark text-white pt-5 pb-4">
        <div class="container text-left text-md-left">
            <div class="row text-left text-md-left">
                <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">
                        Green Supermarket
                    </h5>
                    <p>
                        Discover freshness at Green Supermarket ? your eco-friendly haven
                        for quality groceries. Locally sourced produce, organic options,
                        and a curated selection make us your sustainable choice. Shop
                        consciously with us!
                    </p>
                    <ul class="list-unstyled list-inline mb-0">
                        <li class="list-inline-item">
                            <a href="#" class="btn-floating btn-sm text-white">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#" class="btn-floating btn-sm text-white">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#" class="btn-floating btn-sm text-white">
                                <i class="fab fa-x-twitter"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#" class="btn-floating btn-sm text-white">
                                <i class="fa-brands fa-amazon"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#" class="btn-floating btn-sm text-white">
                                <i class="fa-brands fa-youtube"></i>
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">
                        Categories
                    </h5>
                    <p>
                        <a href="#" class="text-white" style="text-decoration: none">
                            Groceries
                        </a>
                    </p>
                    <p>
                        <a href="#" class="text-white" style="text-decoration: none">
                            Beverages
                        </a>
                    </p>
                    <p>
                        <a href="#" class="text-white" style="text-decoration: none">
                            Fruits
                        </a>
                    </p>
                    <p>
                        <a href="#" class="text-white" style="text-decoration: none">
                            Vegetables
                        </a>
                    </p>
                </div>

                <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">
                        Usefull Links
                    </h5>
                    <p>
                        <a href="#" class="text-white" style="text-decoration: none">
                            Your account
                        </a>
                    </p>
                    <p>
                        <a href="#" class="text-white" style="text-decoration: none">
                            FAQ
                        </a>
                    </p>
                    <p>
                        <a href="#" class="text-white" style="text-decoration: none">
                            Privacy Policies
                        </a>
                    </p>
                    <p>
                        <a href="#" class="text-white" style="text-decoration: none">
                            Terms and Conditions
                        </a>
                    </p>
                </div>

                <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">
                        Contact
                    </h5>
                    <p>
                        <i class="fa-solid fa-location-dot"></i> No 10, Galle Road,
                        Colpetty, Colombo - 03
                    </p>
                    <p><i class="fas fa-envelope mr-3"> </i> greensuperhub@gmail.com</p>
                    <p><i class="fas fa-phone mr-3"> </i> +94 112584855</p>
                    <p><i class="fas fa-print mr-3"> </i> +94 112056415</p>
                </div>
            </div>

            <hr class="mb-4" />

            <div class="row align-items-center">
                <div class="col-md-7 col-lg-8">
                    <p>
                        Copyright ©2024 Green Supermarket, All rights reserved,
                        <a href="#" style="text-decoration: none">
                            <strong class="text-warning"> Group A69 </strong>
                        </a>
                    </p>
                </div>

                <div class="col-md-5 col-lg-4">
                    <div class="text-center text-md-right">
                        <ul class="list-unstyled list-inline">
                            <li class="list-inline-item">
                                <a
                                    href="#"
                                    class="btn-floating btn-sm text-white"
                                    style="font-size: 23px"
                                    >
                                    <i class="fab fa-cc-visa"> </i>
                                </a>
                            </li>

                            <li class="list-inline-item">
                                <a
                                    href="#"
                                    class="btn-floating btn-sm text-white"
                                    style="font-size: 23px"
                                    >
                                    <i class="fab fa-cc-mastercard"> </i>
                                </a>
                            </li>

                            <li class="list-inline-item">
                                <a
                                    href="#"
                                    class="btn-floating btn-sm text-white"
                                    style="font-size: 23px"
                                    >
                                    <i class="fab fa-paypal"> </i>
                                </a>
                            </li>

                            <li class="list-inline-item">
                                <a
                                    href="#"
                                    class="btn-floating btn-sm text-white"
                                    style="font-size: 23px"
                                    >
                                    <i class="fa-brands fa-bitcoin"></i>
                                </a>
                            </li>

                            <li class="list-inline-item">
                                <a
                                    href="#"
                                    class="btn-floating btn-sm text-white"
                                    style="font-size: 23px"
                                    >
                                    <i class="fab fa-cc-apple-pay"> </i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    <script>
        let subMenu = document.getElementById("subMenu");

        // Add event listeners for mouseenter and mouseleave
        document.querySelector('.navbar-icons').addEventListener('mouseenter', openMenu);
        document.querySelector('.navbar-icons').addEventListener('mouseleave', closeMenu);

        function openMenu() {
            subMenu.classList.add("open-menu");
        }

        function closeMenu() {
            subMenu.classList.remove("open-menu");
        }
    </script>
</body>

</html>
