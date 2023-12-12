<%-- 
    Document   : Fruits
    Created on : Dec 12, 2023, 7:39:15PM
    Author     : Gagana
--%>

<!DOCTYPE HTML>
<html lang="en-US">
    <head>

        <meta charset="UTF-8">
        <meta name="author" content="Gagana Methmal">
        <meta name="description" content="Fruits | Green Supermarket">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/Style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title> Fruits </title>

    </head>    
    <body>
        <header>

            <!-- Sample Navbar - Replace It! -->
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Green Supermarket</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>

            <!-- Breadcrumb -->
            <div class="container mt-4">
                <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Fruits</li>
                    </ol>
                </nav>
            </div>

            <!-- Banner -->
            <div class="banner-container">
                <img src="Images/Berries Background.jpg" alt="Banner Image" class="banner-image">
                <div class="overlay"></div>
                <div class="banner-text">
                    <h1>Fruits</h1>
                    <p><i> Nature's Bounty Unleashed: Fruits That Nourish, Delight, and Inspire! </i></p>
                </div>
            </div>

        </header>

        <main>

            <!-- Dropdown -->
            <div class="container">
                <div class="sort-by-container">
                    <label for="price-sort">Sort by Price:</label>
                    <select id="price-sort">
                        <option value="low-to-high">Low to High</option>
                        <option value="high-to-low">High to Low</option>
                    </select>
                </div>
            </div>

            <div class="col-md-10 mt-5">
                <div class="row"> </div>
            </div>

            <!-- Body -->
            <div class="container mt-5">
                <div class="container-fluid">
                    <div class="row">

                        <!-- Directory -->
                        <div class="col-md-3">
                            <h4>What's New</h4> <br>

                            <!-- 1 -->
                            <div class="directory my-links">
                                <h6>Categories</h6>
                                <ul>
                                    <li><a href="#">Fresh Fruits</a></li>
                                    <li><a href="#">Organic Fruits</a></li>
                                    <li><a href="#">Tropical Fruits</a></li>
                                    <li><a href="#">Berries</a></li>
                                </ul>
                            </div>

                            <!-- 2 -->
                            <div class="directory my-links">
                                <h6>Popular Fruits</h6>
                                <ul>
                                    <li><a href="#">Apples</a></li>
                                    <li><a href="#">Bananas</a></li>
                                    <li><a href="#">Oranges</a></li>
                                    <li><a href="#">Grapes</a></li>
                                </ul>
                            </div>

                            <!-- 3 -->
                            <div class="directory my-links">
                                <h6>Specialty Fruits</h6>
                                <ul>
                                    <li><a href="#">Dragonfruit</a></li>
                                    <li><a href="#">Passion Fruit</a></li>
                                    <li><a href="#">Kiwi</a></li>
                                    <li><a href="#">Pomegranate</a></li>
                                </ul>
                            </div>

                            <!-- Advertisement Banner -->
                            <div class="col-md-9 mb-2">
                                <div class="advertisement-banner">
                                    <img src="Images/Advertisment 1.jpg" alt="Advertisement Banner" width="100%" height="300px">
                                </div>
                            </div>
                            <div class="col-md-9 mb-2">
                                <div class="advertisement-banner">
                                    <img src="Images/Advertisment 2.jpg" alt="Advertisement Banner" width="100%" height="300px">
                                </div>
                            </div>

                        </div>

                        <!-- Cards -->
                        <div class="col-md-9">
                            <div class="row">

                                <!-- Card 1 - Cranberries -->
                                <div class="col-md-4 mb-4">
                                    <div class="card rounded-0">
                                        <img src="Images/Cranberries.jpg" height="159px" class="card-img-top rounded-0" alt="Cranberries">
                                        <div class="card-body ">
                                            <h5 class="card-title">Cranberries</h5>
                                            <p class="card-text grey-description">Fresh and tangy, cranberries are a burst of flavor in every bite.</p>
                                            <p class="price-tag">$1.99</p>
                                            <div class="text-right">
                                                <button type="button" class="btn btn-outline-success rounded-0">
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                    Add to Cart
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Card 2 - Mango -->
                                <div class="col-md-4 mb-4">
                                    <div class="card rounded-0">
                                        <img src="Images/Mango.jpg" height="159px" class="card-img-top rounded-0" alt="Mango">
                                        <div class="card-body">
                                            <h5 class="card-title">Mango</h5>
                                            <p class="card-text grey-description">Indulge in the exotic sweetness of Tropical Paradise Mangoes in every bite.</p>
                                            <p class="price-tag">$1.49</p>
                                            <div class="text-right">
                                                <button type="button" class="btn btn-outline-success rounded-0">
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                    Add to Cart
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Card 3 - Watermelon -->
                                <div class="col-md-4 mb-4">
                                    <div class="card rounded-0">
                                        <img src="Images/Watermelon.jpg" height="159px" class="card-img-top rounded-0" alt="Watermelon">
                                        <div class="card-body">
                                            <h5 class="card-title">Watermelon</h5>
                                            <p class="card-text grey-description">Savor the refreshing essence of our succulent watermelon, a juicy and hydrating delight.</p>
                                            <p class="price-tag">$2.79</p>
                                            <div class="text-right">
                                                <button type="button" class="btn btn-outline-success rounded-0">
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                    Add to Cart
                                                </button>
                                            </div>
                                        </div>
                                    </div> 
                                </div>

                                <!-- Card 4 - Dragonfruit -->
                                <div class="col-md-4 mb-4">
                                    <div class="card rounded-0">
                                        <img src="Images/Dragonfruit.jpg" height="159px" class="card-img-top rounded-0" alt="Dragonfruit">
                                        <div class="card-body">
                                            <h5 class="card-title">Dragonfruit</h5>
                                            <p class="card-text grey-description">Discover the magic of this unique fruit, that brings a burst of color, flavor, and nutrition.</p>
                                            <p class="price-tag">$4.99</p>
                                            <div class="text-right">
                                                <button type="button" class="btn btn-outline-success rounded-0">
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                    Add to Cart
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Card 5 - Pomegranate -->
                                <div class="col-md-4 mb-4">
                                    <!-- Add another card here -->
                                    <div class="card rounded-0">
                                        <img src="Images/Pomegranate.jpg" height="159px" class="card-img-top rounded-0" alt="Pomegranate">
                                        <div class="card-body">
                                            <h5 class="card-title">Pomegranate</h5>
                                            <p class="card-text grey-description">Uncover the jewel-like allure, a fruit that combines sweetness with a hint of tartness.</p>
                                            <p class="price-tag">$1.99</p>
                                            <div class="text-right">
                                                <button type="button" class="btn btn-outline-success rounded-0">
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                    Add to Cart
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Card 6 - Kiwi -->
                                <div class="col-md-4 mb-4">
                                    <div class="card rounded-0">
                                        <img src="Images/Kiwi.jpg" height="159px" class="card-img-top rounded-0" alt="Kiwi">
                                        <div class="card-body">
                                            <h5 class="card-title">Kiwi </h5>
                                            <p class="card-text grey-description"> Experience the unique combination of tartness and sweetness.</p>
                                            <p class="price-tag">$0.79</p>
                                            <div class="text-right">
                                                <button type="button" class="btn btn-outline-success rounded-0">
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                    Add to Cart
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Card 7 - Apples -->
                                <div class="col-md-4 mb-4">
                                    <div class="card rounded-0">
                                        <img src="Images/Apple.jpg" class="card-img-top rounded-0" alt="Apples">
                                        <div class="card-body">
                                            <h5 class="card-title">Apples</h5>
                                            <p class="card-text grey-description">Experience the perfect balance of sweetness and tartness with these crisp Apples</p>
                                            <p class="price-tag">$2.99</p>
                                            <div class="text-right">
                                                <button type="button" class="btn btn-outline-success rounded-0">
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                    Add to Cart
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Card 8 - Grapes -->
                                <div class="col-md-4 mb-4">
                                    <div class="card rounded-0">
                                        <img src="Images/Grapes.jpg" height="159px" class="card-img-top rounded-0" alt="Grapes">
                                        <div class="card-body">
                                            <h5 class="card-title">Grapes</h5>
                                            <p class="card-text grey-description">Enjoy the burst of sweetness in every bite with Ruby Red Grapes. .</p>
                                            <p class="price-tag">$4.99</p>
                                            <div class="text-right">
                                                <button type="button" class="btn btn-outline-success rounded-0">
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                    Add to Cart
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Card 9 - Bananas -->
                                <div class="col-md-4 mb-4">
                                    <div class="card rounded-0">
                                        <img src="Images/Bananas.jpg" height="159px" class="card-img-top rounded-0" alt="Bananas">
                                        <div class="card-body">
                                            <h5 class="card-title">Bananas</h5>
                                            <p class="card-text grey-description"> Unleash the sunshine with our Golden Harvest Bananas, nature's perfect snack.</p>
                                            <p class="price-tag">$0.69</p>
                                            <div class="text-right">
                                                <button type="button" class="btn btn-outline-success rounded-0">
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                    Add to Cart
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pagination -->
            <div class="d-flex justify-content-center">
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                    </ul>
                </nav>
            </div>
            
        </main>

        <footer>

            <!-- Footer Column 1 -->
            <div class="column container">
                <p>Follow us</p>
                <a href="#">Facebook</a><br>
                <a href="#">Instagram</a><br>
                <a href="#">Youtube</a><br>
            </div>

            <!-- Footer Column 2 -->
            <div class="column container">
                <p>Copyright © Green Supermarket 2024. All rights reserved.</p>
                <a href="#">Terms of Use</a><br>
                <a href="#">Privacy Policy</a><br>
                <a href="#">Accessibility</a><br>
                <a href="#">Transparency in Supply Chains Act</a><br>
                <a href="#">Contact Us</a>
            </div>

            <!-- Footer Column 3 -->
            <div class="logo container">
                <img src="" alt="Green Supermarket Logo">
            </div>

        </footer>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>

</html>