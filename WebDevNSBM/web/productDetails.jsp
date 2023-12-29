<!DOCTYPE html>

<html lang="en-US">
    <head>
        <meta charset="UTF-8" />
        <meta name="author" content="Gagana" />
        <meta name="description" content="Product Details | Green Supermarket" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="Product/CSS/ProductDetails.css" />
        <script src="JS/products.js"></script>
        <script src="JS/cart.js"/></script>
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
                                        name="product-quantity"
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
                            <form>
                                <input type="hidden" class="input-price" name="product-price" value=""/>
                                <button type="button" class="btn btn-outline-success rounded-0 js-add-product-cart">
                                    <i class="fa-solid fa-cart-shopping"></i> Add to cart
                                </button>
                            </form>
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
            var variedQuantity = getLocalProductQuantity(productJson, productJson.quantity);
            
            console.log(variedQuantity);
            
            inputPriceToField(price);
            AddProduct(productJson);
            
            document.addEventListener("DOMContentLoaded", function () 
            {
                let quantityInput = document.getElementById("ex1");
                let incrementButton = document.querySelector(".input-group-append button");
                let decrementButton = document.querySelector(".input-group-prepend button");

                // Initial Quantity
                let quantity = 1;
                let priceTag = document.querySelector(".product-price");
                
                quantityInput.value = quantity;

                // Increment button click event
                incrementButton.addEventListener("click", function () {

                    if (quantity < variedQuantity)
                    {
                        quantity++;
                        quantityInput.value = quantity;

                        price = productJson.price * quantity;
                        priceTag.innerText = "$" + price + " / kg";
                        inputPriceToField(price);
                    }
                });

                // Reduction happens in here.
                decrementButton.addEventListener("click", function () {
                    if (quantity > 1) {
                        quantity--;
                        quantityInput.value = quantity;

                        price = productJson.price * quantity;
                        priceTag.innerText = "$" + price + " / kg";
                        inputPriceToField(price);
                    }
                });

                // Only numeric values can be entered, validation.
                quantityInput.addEventListener("input", function () {
                    let value = parseInt(quantityInput.value);
                    if (isNaN(value) || value < 1) 
                    {
                        quantityInput.value = 1;
                        quantity = 1;
                    } 
                    else if (value >= parseInt(variedQuantity))
                    {
                        quantity = variedQuantity;
                        quantityInput.value = parseInt(quantity);
                    }
                    else
                    {
                        quantity = value;
                    }
                    
                    price = productJson.price * quantity;
                    priceTag.innerText = "$" + price + " / kg";
                    
                    inputPriceToField(price);
                });
                
                let cartBtn = document.querySelector(".js-add-product-cart");
            
                if (cartBtn !== null)
                {
                    cartBtn.addEventListener('click', () => {
                        if (quantity > variedQuantity)
                        {
                            quantity = variedQuantity;
                            quantityInput.value = parseInt(quantity);
                        }
                        
                        if (variedQuantity > 0)
                        {
                            console.log("Added to cart: " + productJson.name);
                            setCartItem(productJson.id, productJson.name, productJson.type, quantity, productJson.price, price);
                        }
                        else
                        {
                            window.alert("No stock available");
                        }
                        
                        variedQuantity = getLocalProductQuantity(productJson, productJson.quantity);
                        console.log(variedQuantity);
                    });
                }
                
            });
            
            // function that just inserts the price into an input field 
            function inputPriceToField(price)
            {
                let inputPrice = document.querySelector(".input-price");
                
                inputPrice.value = price;
                console.log(inputPrice.value);
            }
    
        </script>
    </body>
</html>
