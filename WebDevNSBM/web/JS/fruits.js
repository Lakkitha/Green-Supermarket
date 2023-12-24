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
        console.log(products[x].name);

        const productCardHTML = `
            <div class="col-md-3 mb-4 product-card">
                <div class="card rounded-0 h-100">
                    <img src="Images/${products[x].name}.jpg" height="180px"
                        class="card-img-top rounded-0 lazy img-responsive" 
                        alt="${products[x].name}">
                    <div class="card-body ">
                        <h5 class="card-title">${products[x].name}</h5>
                        <p class="card-text grey-description">${products[x].description}</p>
                        <p class="price-tag">${products[x].price}</p>
                        <p class="quantity">${products[x].quantity} in
                            stock</p>
                        <div class="text-right">
                            <button type="button"
                                class="btn btn-outline-success rounded-0">
                                <i class="fa-solid fa-cart-shopping"></i>
                                Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        `;

        productContainer.innerHTML += productCardHTML;
    }

    console.log(productContainer.innerHTML);
}