document.addEventListener("DOMContentLoaded", function () {
    let quantityInput = document.getElementById("ex1");
    let incrementButton = document.querySelector(".input-group-append button");
    let decrementButton = document.querySelector(".input-group-prepend button");

    // Initial Quanitity
    let quantity = 1;
    quantityInput.value = quantity;

    // Increment button click event
    incrementButton.addEventListener("click", function () {
        quantity++;
        quantityInput.value = quantity;
    });

    // Reduction happens in here.
    decrementButton.addEventListener("click", function () {
        if (quantity > 1) {
            quantity--;
            quantityInput.value = quantity;
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