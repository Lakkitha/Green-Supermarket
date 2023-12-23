<%-- 
    Document   : index
    Created on : Dec 5, 2023, 9:08:18â¯PM
    Author     : OMEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <meta name="author" content="Gagana">
    <meta name="description" content="Home | Green Supermarket">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="Home/homeStyle.css">
    <link rel="stylesheet" href="Home/nav.css"/>
    <title>Home Page</title>
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container">
                <!-- Logo -->
                <a class="navbar-brand" href="#">
                    <img src="Images/joe.png" alt="Supermarket Logo" class="logo" height="20px" width="120px">
                </a>
                <!-- Button to toggle navigation on smaller screens -->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- Centered Page Links -->
                <div class="collapse navbar-collapse" id="navbarNav">
                    <div class="navbar-nav mx-auto">
                        <a class="nav-link active" aria-current="page" href="#"> <b> Home </b> </a>
                        <a class="nav-link" href="#"> <b> Fruits</b></a>
                        <a class="nav-link" href="#"><b> Vegetables </b></a>
                        <a class="nav-link" href="#"> <b>About</b></a>
                    </div>
                </div>
                <!-- Icons and Price on Right Side -->
                <div class="d-flex align-items-center ms-auto">
                    <!-- Price Display -->
                    <span class="price me-3"> <b> $ 1500.00 </b> </span>
                    <!-- Search Icon Dropdown -->
                    <div class="nav-item dropdown me-3" id="searchDropdown">
                        <a class="nav-link" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search"></i>
                        </a>
                        <div class="dropdown-menu rounded-0" id="searchDropdownMenu">
                            <!-- Add search input field and button -->
                            <form class="p-2">
                                <div class="input-group">
                                    <input type="text" class="form-control rounded-0" placeholder="Search..."
                                        aria-label="Search" aria-describedby="button-addon2">
                                    <button class="btn btn-outline-success rounded-0" type="button" id="button-addon2">
                                        <i class="fas fa-search"></i>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- Cart Icon Dropdown -->
                    <a class="nav-link me-3" href="#">
                        <i class="fa-solid fa-cart-shopping"></i>
                    </a>

                    <!-- Account Icon and Username Dropdown -->
                    <div class="nav-item dropdown me-3" id="accountDropdown">
                        <a class="nav-link" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-user"></i>
                            <span class="username-placeholder"> <b> Kusal Videshan </b></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-start rounded-0" id="accountDropdownMenu"
                            style="max-height: 200px; overflow-y: auto;">
                            <!-- Add dropdown menu items for account options -->
                            <div class="dropdown-item">
                                <p class="small-font"> Kusal Videshan</p>
                                <p class="small-font">123 Main Street, Cityville</p>
                            </div>
                            <div class="dropdown-divider"></div>
                            <!-- Convert Profile and Logout links to buttons -->
                            <button class="dropdown-item btn btn-link" type="button">
                                <i class="fa-solid fa-address-card"></i> Profile
                            </button>
                            <button class="dropdown-item btn btn-link" type="button">
                                <i class="fa-solid fa-right-from-bracket"></i> Logout
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </header>

    <main>
        <!-- Banner Section -->
        <div class="banner">
            <img src="Home/images/banner.png" alt="Banner Image" class="banner-image" loading="lazy">
            <div class="banner-text">
                <h2>Welcome to Green Supermarket</h2>
                <p>Discover fresh and sustainable groceries for a healthier lifestyle.</p>
                <a href="#" class="btn btn-primary">Shop Now <i class="fa-solid fa-arrow-right"></i> </a>
            </div>
        </div>

        <!-- Work rest in here -->
    </main>

    <section class="welcome text-center pb-5">
        <div class="container py-4">
            <div class="row">
                <!-- Wrap the cards in a single row -->
                <div class="col-lg-4 fade-in">
                    <div class="card py-3">
                        <div class="card-body">
                            <span><i class="bi bi-shop-window"></i></span>
                            <h2>Always Fresh</h2>
                            <p>Uncover a world of freshness with our handpicked selection of premium produce.</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 fade-in">
                    <div class="card py-3">
                        <div class="card-body">
                            <span><i class="bi bi-flower2"></i></span>
                            <h2>Healthy Food</h2>
                            <p>Nourish your body with our range of wholesome and nutritious food options.</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 fade-in">
                    <div class="card py-3">
                        <div class="card-body">
                            <span><i class="bi bi-gift"></i></span>
                            <h2>100% Organic</h2>
                            <p>Embrace a healthier lifestyle with our collection of pure and organic products.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="product">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-6 py-5 m-auto">
                    <h1>Our Best Products</h1>
                    <div class="line my-4"></div>
                    <p>Indulge in a world of premium quality and freshness with our best products. Each item is
                        carefully curated to bring you a delightful and wholesome shopping experience.</p>
                </div>
            </div>

            <div class="row text-center">
                <div class="col-lg-4 fade-in">
                    <div class="card">
                        <div class="card-body">
                            <div class="star">
                                <span><i class="bi bi-star-fill"></i></span>
                                <span><i class="bi bi-star-fill"></i></span>
                                <span><i class="bi bi-star-fill"></i></span>
                                <span><i class="bi bi-star-fill"></i></span>
                            </div>
                            <img src="Home/images/orange.jpg" alt="orange" class="img-fluid pb-3">
                            <h4 class="head1">Orange</h4>
                            <p class="per1">2 x 454g / 16oz</p>
                            <h4 class="head1">$43.00</h4>
                            <button class="btnc my-4">ADD TO CART</button>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 fade-in">
                    <div class="card">
                        <div class="card-body">
                            <div class="star">
                                <span><i class="bi bi-star-fill"></i></span>
                                <span><i class="bi bi-star-fill"></i></span>
                                <span><i class="bi bi-star-fill"></i></span>
                                <span><i class="bi bi-star-fill"></i></span>
                            </div>
                            <img src="Home/images/orange.jpg" alt="orange" class="img-fluid pb-3">
                            <h4 class="head1">Orange</h4>
                            <p class="per1">2 x 454g / 16oz</p>
                            <h4 class="head1">$43.00</h4>
                            <button class="btnc my-4">ADD TO CART</button>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 fade-in">
                    <div class="card">
                        <div class="card-body">
                            <div class="star">
                                <span><i class="bi bi-star-fill"></i></span>
                                <span><i class="bi bi-star-fill"></i></span>
                                <span><i class="bi bi-star-fill"></i></span>
                                <span><i class="bi bi-star-fill"></i></span>
                            </div>
                            <img src="Home/images/orange.jpg" alt="orange" class="img-fluid pb-3">
                            <h4 class="head1">Orange</h4>
                            <p class="per1">2 x 454g / 16oz</p>
                            <h4 class="head1">$43.00</h4>
                            <button class="btnc my-4">ADD TO CART</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row text-center py-5">
                <div class="col-lg-6 m-auto">
                    <button class="mbtn1">Explore More</button>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-dark text-white pt-5 pb-4 img-fluid">
        <div class="container text-left text-md-left">
            <div class="row text-left text-md-left">
                <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                    <img src="Home/images/joe.png" height="30px" width="150px"> <br> <br>
                    <p>
                        Discover freshness at Green Supermarket? your eco-friendly haven
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
                    <h5 class="mb-4 font-weight-bold text-warning">
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
                    <h5 class="mb-4 font-weight-bold text-warning">
                        Useful Links
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
                    <h5 class="mb-4 font-weight-bold text-warning">
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
                            <strong class="text-warning"> Group A83 </strong>
                        </a>
                    </p>
                </div>

                <div class="col-md-5 col-lg-4">
                    <div class="text-center text-md-right">
                        <ul class="list-unstyled list-inline">
                            <li class="list-inline-item">
                                <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px">
                                    <i class="fab fa-cc-visa"> </i>
                                </a>
                            </li>

                            <li class="list-inline-item">
                                <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px">
                                    <i class="fab fa-cc-mastercard"> </i>
                                </a>
                            </li>

                            <li class="list-inline-item">
                                <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px">
                                    <i class="fab fa-paypal"> </i>
                                </a>
                            </li>

                            <li class="list-inline-item">
                                <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px">
                                    <i class="fa-brands fa-bitcoin"></i>
                                </a>
                            </li>

                            <li class="list-inline-item">
                                <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px">
                                    <i class="fab fa-cc-apple-pay"> </i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    

    <script>
        /* Navbar Script - Didn't work exteranlly :( */
        const searchDropdown = document.getElementById('searchDropdown');
        const searchDropdownMenu = document.getElementById('searchDropdownMenu');

        searchDropdown.addEventListener('mouseover', function () {
            searchDropdownMenu.classList.add('show');
        });

        searchDropdown.addEventListener('mouseout', function () {
            searchDropdownMenu.classList.remove('show');
        });

        searchDropdownMenu.addEventListener('mouseover', function () {
            searchDropdownMenu.classList.add('show');
        });

        searchDropdownMenu.addEventListener('mouseout', function () {
            searchDropdownMenu.classList.remove('show');
        });

        const accountDropdown = document.getElementById('accountDropdown');
        const accountDropdownMenu = document.getElementById('accountDropdownMenu');

        accountDropdown.addEventListener('mouseover', function () {
            accountDropdownMenu.classList.add('show');
        });

        accountDropdown.addEventListener('mouseout', function () {
            accountDropdownMenu.classList.remove('show');
        });

        accountDropdownMenu.addEventListener('mouseover', function () {
            accountDropdownMenu.classList.add('show');
        });

        accountDropdownMenu.addEventListener('mouseout', function () {
            accountDropdownMenu.classList.remove('show');
        });
    </script>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            document.querySelector('.navbar').classList.add('navbar-loaded');
            document.querySelector('.banner').classList.add('banner-loaded');
            document.querySelector('.banner-text').classList.add('fade-in');
            document.querySelector('.welcome').classList.add('welcome-loaded');
            document.querySelectorAll('.product .fade-in').forEach(function (element) {
                element.classList.add('active');
            });
            document.querySelector('.footer').classList.add('footer-loaded');
        });
    </script>
    <script>
        function revealWelcome() {
            var welcomeSection = document.querySelector(".welcome");

            if (!welcomeSection.classList.contains("welcome-loaded")) {
                var windowHeight = window.innerHeight;
                var elementTop = welcomeSection.getBoundingClientRect().top;
                var elementVisible = 150;

                if (elementTop < windowHeight - elementVisible) {
                    welcomeSection.classList.add("welcome-loaded");
                }
            }
        }

        window.addEventListener("scroll", function () {
            revealWelcome();
            reveal(); // Assuming you still want to use the reveal function
        });

        // Call revealWelcome on page load to handle the case when the welcome section is visible without scrolling
        document.addEventListener("DOMContentLoaded", function () {
            revealWelcome();
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>

</html>