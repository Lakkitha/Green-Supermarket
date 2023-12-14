// Function made to add the productz.
function addProductsToCart(products) {
  const tbody = document.querySelector(".shopping-cart tbody");
  const template = document.getElementById("product-template").innerHTML;

  // Foreach loop will append the shii to the table.
  console.log("Before replacement:", template);
  products.forEach((product) => {
    const row = template
      .replace(/{{id}}/g, product.id)
      .replace("{{image}}", product.image)
      .replace("{{name}}", product.name)
      .replace("{{category}}", product.category)
      .replace("{{price}}", product.price.toFixed(2));
    console.log("After replacement:", row);
    tbody.innerHTML += row;
  });
}

// Function made to remove products.
function removeProduct(productId) {
  // Remove product with their ID's.
  console.log(`Remove product with ID ${productId}`);
}

// Loading og Data.json file in the project to test.
fetch("Data.json")
  .then((response) => response.json())
  .then((data) => {
    const products = data.products;
    addProductsToCart(products);
  })
  .catch((error) => console.error("Error fetching data:", error));