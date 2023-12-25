<!DOCTYPE html>
<html lang="en-US">
    <head>
        <meta charset="UTF-8" />
        <meta name="author" content="Gagana" />
        <meta name="description" content="Product Details | Green Supermarket" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="Product/CSS/ProductDetails.css" />
        <script src="JS/fruits.js"></script>
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
        <header>
            <jsp:include page="navbar.jsp"/>
        </header>
        
        <main>
            <div class="container product mt-4">
                <div class="row">
                    <!-- Left Column - Image -->
                    <div class="col-md-6 d-flex align-items-center js-product-image">
                        
                    </div>

                    <!-- Right Column - Product Details -->
                    <div class="col-md-6">
                        <div class="product-details">
                            <div class="js-product-container">
                                
                            </div>

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

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"
        ></script>
        
        <script>
            var productJson = <%=request.getAttribute("product")%>;
            var price = productJson.price;
            
            AddProduct(productJson);
            
            document.addEventListener("DOMContentLoaded", function () 
            {
                let quantityInput = document.getElementById("ex1");
                let incrementButton = document.querySelector(".input-group-append button");
                let decrementButton = document.querySelector(".input-group-prepend button");

                // Initial Quanitity
                let quantity = 1;
                
                quantityInput.value = quantity;

                // Increment button click event
                incrementButton.addEventListener("click", function () {

                    if (quantity < productJson.quantity)
                    {
                        quantity++;
                        quantityInput.value = quantity;
                        
                        let priceTag = document.querySelector(".product-price");
                        price = productJson.price * quantity;

                        priceTag.innerText = "$" + price + " / kg";
                    }
                });

                // Reduction happens in here.
                decrementButton.addEventListener("click", function () {
                    if (quantity > 1) {
                        quantity--;
                        quantityInput.value = quantity;
                        
                        let priceTag = document.querySelector(".product-price");
                        price = productJson.price * quantity;

                        priceTag.innerText = "$" + price + " / kg";
                    }
                });

                // Only numeric values can be entered, validation.
                quantityInput.addEventListener("input", function () {
                    let value = parseInt(quantityInput.value);
                    if (isNaN(value) || value < 1) {
                        quantityInput.value = 1;
                        quantity = 1;
                    } else {
                        quantity = value;
                    }
                });
            });
        </script>
    </body>
</html>
