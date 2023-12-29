/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function AddAllProducts(productJson)
{
    var products = JSON.parse(JSON.stringify(productJson)); // Grab products and convert to object from JSON data
    const productLength = Object.keys(products).length;

    console.log(products);

    var productContainer = document.querySelector('.js-product-container'); // Grab the product container

    for (let x in products)
    {
        const productCardHTML = `
            <div class="col-lg-4 fade-in">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <img src="Images/${products[x].type}_Images/${products[x].name}.jpg" alt="${products[x].name}" class="img-fluid pb-3"
                             style="height: 200px; width: 200px;">
                        <h4 class="head1">${products[x].name}</h4>
                        <p class="per1"> <small>${products[x].quantity} in stock</small> </p>
                        <h4 class="head1">$${products[x].price}</h4>
                        <form action="InsertProductDetails" method="GET">
                            <input type="hidden" name="productId" value=${products[x].id}>
                            <button class="btnc my-4" type="submit"> <i class="fa-solid fa-cart-shopping"></i> Add to Cart </button>
                        </form>
                    </div>
                </div>
            </div>
        `;
        
        productContainer.innerHTML += productCardHTML;
    }
}

function AddProduct(productJson)
{
    var product = JSON.parse(JSON.stringify(productJson));
    var productImageSection = document.querySelector('.js-product-image');
    var productContainer = document.querySelector('.js-product-container'); // Grab the product container
    
    const productImageHTML = `
            <img
                src="Images/${product.type}_Images/${product.name}.jpg"
                alt="Product Image"
                class="product-image img-fluid"
                height ="300px"
                width ="300px"
            />
        `
    
    const productCardHTML = `
            <small class="gray-text"> ${product.type}s </small>
                <h2 class="mt-1">${product.name}</h2>
                <p class="lead product-price">$${product.price} / kg</p>
                <p class="text-justify">
                    ${product.description}
            </p>
        `;
    
    productImageSection.innerHTML += productImageHTML;
    productContainer.innerHTML += productCardHTML;
}