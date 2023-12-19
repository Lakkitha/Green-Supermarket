<!DOCTYPE html>
<html lang="en-US">
    <head>
        <meta charset="UTF-8" />
        <meta name="author" content="Gagana" />
        <meta name="description" content="Product Details | Green Supermarket" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="CSS/ProductDetails.css" />
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
        <title>Product Details</title>
    </head>
    <body>
        <main>
            <div class="container mt-4">
                <div class="row">
                    <!-- Left Column - Image -->
                    <div class="col-md-6 d-flex align-items-center">
                        <img
                            src="Images/Melon.jpg"
                            alt="Product Image"
                            class="product-image img-fluid"
                            />
                    </div>

                    <!-- Right Column - Product Details -->
                    <div class="col-md-6">
                        <div class="product-details">
                            <small class="gray-text"> Home / Products / Fruits </small>
                            <h2 class="mt-1">Melon</h2>
                            <p class="lead">Rs: 23.00 / G</p>
                            <p class="text-justify">
                                Introducing our exquisite Melon ? a refreshing delight for your
                                taste buds. Grown under the warmth of the sun, our melons are a
                                symbol of sweetness and juiciness. With a vibrant green exterior
                                and succulent, juicy flesh, each bite is a burst of natural
                                flavor. Whether enjoyed on its own or added to fruit salads, our
                                melon promises a hydrating and delicious experience. Savor the
                                essence of summer with our premium melons, a perfect choice for
                                a healthy and refreshing treat.
                            </p>

                            <!-- Quantity -->
                            <div class="input-group mb-3 form-group">
                                <div class="input-group-prepend">
                                    <button
                                        class="btn btn-outline-success rounded-0"
                                        type="button"
                                        >
                                        -
                                    </button>
                                </div>
                                <div class="col-xs-1">
                                    <input
                                        class="form-control rounded-0 text-center small-input"
                                        id="ex1"
                                        type="text"
                                        />
                                </div>
                                <div class="input-group-append">
                                    <button
                                        class="btn btn-outline-success rounded-0"
                                        type="button"
                                        >
                                        +
                                    </button>
                                </div>
                            </div>

                            <!-- Add to Cart Button -->
                            <button type="button" class="btn btn-outline-success rounded-0">
                                <i class="fa-solid fa-cart-shopping"></i> Add to cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <script src="JavaScript/ProductDet.js"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
