<%-- 
    Document   : index
    Created on : Dec 5, 2023, 9:08:18 PM
    Author     : OMEN
--%>

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
        <title>Home Page</title>
    </head>

    <body>
        <header>
            <jsp:include page="navbar.jsp"/>

        </header>

        <main>
            <jsp:include page="feedback.jsp"/>
            <!-- Banner Section -->
            <div class="banner">
                <img src="Home/images/banner.png" alt="Banner Image" class="banner-image" loading="lazy">
                <div class="banner-text">
                    <h2>Welcome to Green Supermarket</h2>
                    <p>Discover fresh and sustainable groceries for a healthier lifestyle.</p>
                    <a href="#" class="btn btn-success ">Shop Now <i class="fa-solid fa-arrow-right"></i> </a>
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
        <footer>
            <jsp:include page="footer.jsp"/>
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