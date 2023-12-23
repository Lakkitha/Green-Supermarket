<%-- 
    Document   : vegetables
    Created on : Dec 23, 2023, 9:16:22?PM
    Author     : Gagana
--%>

<!DOCTYPE HTML>
<html lang="en-US">

    <head>
        <meta charset="UTF-8">
        <meta name="author" content="Gagana">
        <meta name="description" content="Vegetables | Green Supermarket">
        <link rel="stylesheet" href="RegLog/CSS/productpages.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
        <title> Vegetables </title>
    </head>

    <body>
        <jsp:include page="navbar.jsp"/>
        <header>
            <!-- Banner -->
            <div class="banner-container fade-in">
                <img src="Home/images/vegebanner.jpg" alt="Banner Image" class="banner-image">
                <div class="overlay"></div>
                <div class="banner-text">
                    <h1>Vegetables</h1>
                    <p> Harvesting Fresh Delights: Your Online Haven for Crisp Vegetables! </p>
                </div>
            </div>
        </header>

        <section class="product">
            <div class="container">
                <div class="text-end mt-3">
                    <label for="sortBy" class="form-label" style="display: inline-block; margin-right: 10px;">Sort By:
                    </label>
                    <select class="form-select" id="sortBy" style="display: inline-block; width: auto;">
                        <option value="popularity">Popularity</option>
                        <option value="price">Price</option>
                        <option value="name">Name</option>
                    </select>
                </div>

                <!-- Row 1 -->
                <div class="row text-center">
                    <!-- Card 1 -->
                    <div class="col-lg-4 fade-in">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <div class="star">
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star"></i></span>
                                </div>
                                <img src="Home/images/broco.png" alt="orange" class="img-fluid pb-3"
                                     style="height: 200px; width: 400px;">
                                <h4 class="head1">Broccoli </h4>
                                <p class="per1"> <small> 2 x 45g / 16oz </small> </p>
                                <h4 class="head1">$0.75</h4>
                                <button class="btnc my-4"> <i class="fa-solid fa-cart-shopping"></i> Add to Cart </button>
                            </div>
                        </div>
                    </div>

                    <!-- Card 2 -->
                    <div class="col-lg-4 fade-in">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <div class="star">
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star"></i></span>

                                </div>
                                <img src="Home/images/carrots.png" alt="orange" class="img-fluid pb-3 rounded"
                                     style="height: 200px; width: 200px;">
                                <h4 class="head1">Carrots</h4>
                                <p class="per1"> <small> 2 x 45g / 16oz </small> </p>
                                <h4 class="head1">$1.99</h4>
                                <button class="btnc my-4"> <i class="fa-solid fa-cart-shopping"></i> Add to Cart </button>
                            </div>
                        </div>
                    </div>

                    <!-- Card 3 -->
                    <div class="col-lg-4 fade-in">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <div class="star">
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                </div>
                                <img src="Home/images/spinach.jpg" alt="orange" class="img-fluid pb-3"
                                     style="height: 200px; width: 200px;">
                                <h4 class="head1">Spinach</h4>
                                <p class="per1"> <small> 2 x 45g / 16oz </small> </p>
                                <h4 class="head1">$2.99</h4>
                                <button class="btnc my-4"> <i class="fa-solid fa-cart-shopping"></i> Add to Cart </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Row 2 -->
                <div class="row text-center">
                    <!-- Card 4 -->
                    <div class="col-lg-4 fade-in">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <div class="star">
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star"></i></span>
                                </div>
                                <img src="Home/images/bell.jpg" alt="orange" class="img-fluid pb-3"
                                     style="height: 200px; width: 200px;">
                                <h4 class="head1">Bell Peppers</h4>
                                <p class="per1"> <small> 2 x 45g / 16oz </small> </p>
                                <h4 class="head1">$3.99</h4>
                                <button class="btnc my-4"> <i class="fa-solid fa-cart-shopping"></i> Add to Cart </button>
                            </div>
                        </div>
                    </div>

                    <!-- Card 5 -->
                    <div class="col-lg-4 fade-in">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <div class="star">
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>

                                </div>
                                <img src="Home/images/tomatoes.jpeg" alt="orange" class="img-fluid pb-3 rounded"
                                     style="height: 200px; width: 200px;">
                                <h4 class="head1">Tomatoes</h4>
                                <p class="per1"> <small> 2 x 45g / 16oz </small> </p>
                                <h4 class="head1">$4.99</h4>
                                <button class="btnc my-4"> <i class="fa-solid fa-cart-shopping"></i> Add to Cart </button>
                            </div>
                        </div>
                    </div>

                    <!-- Card 6 -->
                    <div class="col-lg-4 fade-in">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <div class="star">
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                </div>
                                <img src="Home/images/potato.jpg" alt="orange" class="img-fluid pb-3"
                                     style="height: 200px; width: 200px;">
                                <h4 class="head1">Sweet Potato </h4>
                                <p class="per1"> <small> 2 x 45g / 16oz </small> </p>
                                <h4 class="head1">$4.50</h4>
                                <button class="btnc my-4"> <i class="fa-solid fa-cart-shopping"></i> Add to Cart </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Card 7 -->
                <div class="row text-center">
                    <div class="col-lg-4 fade-in">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <div class="star">
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star"></i></span>
                                </div>
                                <img src="Home/images/cucum.jpg" alt="orange" class="img-fluid pb-3"
                                     style="height: 200px; width: 400px;">
                                <h4 class="head1">Zucchini</h4>
                                <p class="per1"> <small> 2 x 45g / 16oz </small> </p>
                                <h4 class="head1">$1.75</h4>
                                <button class="btnc my-4"> <i class="fa-solid fa-cart-shopping"></i> Add to Cart </button>
                            </div>
                        </div>
                    </div>

                    <!-- Card 8 -->
                    <div class="col-lg-4 fade-in">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <div class="star">
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star"></i></span>
                                </div>
                                <img src="Home/images/kale.jpeg" alt="orange" class="img-fluid pb-3 rounded"
                                     style="height: 200px; width: 200px;">
                                <h4 class="head1">Kale</h4>
                                <p class="per1"> <small> 2 x 45g / 16oz </small> </p>
                                <h4 class="head1">$0.99</h4>
                                <button class="btnc my-4"> <i class="fa-solid fa-cart-shopping"></i> Add to Cart </button>
                            </div>
                        </div>
                    </div>

                    <!-- Card 9 -->
                    <div class="col-lg-4 fade-in">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <div class="star">
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star-fill"></i></span>
                                    <span class="star-item"><i class="bi bi-star"></i></span>
                                </div>
                                <img src="Home/images/cauli.jpg" alt="orange" class="img-fluid pb-3"
                                     style="height: 200px; width: 200px;">
                                <h4 class="head1">Cauliflower</h4>
                                <p class="per1"> <small> 2 x 45g / 16oz </small> </p>
                                <h4 class="head1">$2.49</h4>
                                <button class="btnc my-4"> <i class="fa-solid fa-cart-shopping"></i> Add to Cart </button>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <footer>
        <jsp:include page="footer.jsp"/>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>
</body>

</html>
