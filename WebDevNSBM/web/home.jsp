<%-- 
    Document   : index
    Created on : Dec 5, 2023, 9:08:18?PM
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
        <link rel="stylesheet" href="RegLog/CSS/homeStyle.css">
        <link rel="stylesheet" href="Home/blog.css">
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

            <section class="welcome text-center pb-5" style="color: green;">
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
                    <div class="col-lg-6 py-3 m-auto"> <!-- Adjusted py-5 to py-3 -->
                        <h1>Our Best Products</h1>
                        <div class="line my-2"></div> <!-- Adjusted my-4 to my-2 -->
                        <p>Indulge in a world of premium quality and freshness with our best products. Each item is
                            carefully curated to bring you a delightful and wholesome shopping experience.</p>
                    </div>
                </div>

                <div class="row text-center">
                    <!-- Card 1 -->
                    <div class="col-lg-4 fade-in">
                        <div class="card shadow-sm">
                            <div class="card-body">

                                <img src="Home/images/orange.jpg" alt="orange" class="img-fluid pb-3"
                                     style="height: 200px; width: 400px;">
                                <h4 class="head1">Orange</h4>
                                <p class="per1"> <small> 2 x 45g / 16oz </small> </p>
                                <h4 class="head1">$0.75</h4>
                                <button class="btnc my-4"> <i class="fa-solid fa-cart-shopping"></i> Add to Cart </button>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 fade-in">
                        <div class="card shadow-sm">
                            <div class="card-body">

                                <img src="Home/images/spinach.jpg" alt="orange" class="img-fluid pb-3"
                                     style="height: 200px; width: 200px;">
                                <h4 class="head1">Spinach</h4>
                                <p class="per1"> <small> 2 x 45g / 16oz </small> </p>
                                <h4 class="head1">$2.99</h4>
                                <button class="btnc my-4"> <i class="fa-solid fa-cart-shopping"></i> Add to Cart </button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 fade-in">
                        <div class="card shadow-sm">
                            <div class="card-body">

                                <img src="Home/images/dragon.jpg" alt="orange" class="img-fluid pb-3"
                                     style="height: 200px; width: 200px;">
                                <h4 class="head1">Dragonfruit</h4>
                                <p class="per1"> <small> 2 x 45g / 16oz </small> </p>
                                <h4 class="head1">$6.99</h4>
                                <button class="btnc my-4"> <i class="fa-solid fa-cart-shopping"></i> Add to Cart </button>
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

        <!-- Blog Section -->
        <section class="from-blog spad">
            <div class="container">
                <div class="row text-center">
                    <div class="col-lg-6 py-3 m-auto"> <!-- Adjusted py-5 to py-3 -->
                        <h1>From The Blog</h1>
                        <p>Explore the latest insights, tips, and exciting updates from our world of fresh produce, grocery delights, and culinary inspiration.</p>
                        <div class="line my-2"></div> <!-- Adjusted my-4 to my-2 -->
                    </div>
                </div>


                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="blog__item rounded-0">
                            <div class="blog__item__pic">
                                <img src="Home/images/fresh.jpg" alt="" class="rounded-0">
                            </div> <br>
                            <div class="blog__item__text">
                                <ul class="blog__item__info">
                                    <li><i class="fa-regular fa-calendar"></i> December 25, 2023</li>
                                    <li><i class="fa-regular fa-comment"></i> 12 comments</li>
                                </ul> <br>
                                <h5><a href="#">Fresh Picks of the Week!</a></h5>
                                <p>Welcome to our weekly roundup of the freshest and most delicious items available at our
                                    supermarket. This week, we're excited to highlight some incredible picks that you won't want to
                                    miss. </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="blog__item rounded-0">
                            <div class="blog__item__pic">
                                <img src="Home/images/tips.jpg" alt="" class="rounded-0">
                            </div> <br>
                            <div class="blog__item__text">
                                <ul>
                                    <li><i class="fa-regular fa-calendar"></i> December 12, 2023</li>
                                    <li><i class="fa-regular fa-comment"></i> 6 comments</li>
                                </ul> <br>
                                <h5><a href="#">Shopping Tips for a Healthier You</a></h5>
                                <p>At green supermarket, we believe in empowering our customers to make informed and healthy
                                    choices. Checkout to enhance your next grocery shopping experience.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="blog__item rounded-0">
                            <div class="blog__item__pic">
                                <img src="Home/images/global.jpg" alt="" class="rounded-0">
                            </div> <br>
                            <div class="blog__item__text">
                                <ul>
                                    <li><i class="fa-regular fa-calendar"></i> November 30, 2023</li>
                                    <li><i class="fa-regular fa-comment"></i> 8 comments</li>
                                </ul> <br>
                                <h5><a href="#">Exploring Global Flavors at Green</a></h5>
                                <p>Embark on a culinary journey with Green Supermarket as we take you on a tour of global
                                    flavors right in your neighborhood. Our supermarket is a treasure trove of international
                                    delights. </p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- Blog End -->

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