function updateBorderColor(elementId) {
    let inputElement = document.getElementById(elementId);

    // Resets border color to default
    inputElement.style.borderColor = "";

    // Checks the validation and update border color accordingly if empty.
    switch (elementId) {
        case "email":
            if (inputElement.value.trim() === "") {
                inputElement.style.borderColor = "red";
            } else {
                inputElement.style.borderColor = "green";
            }
            break;

        case "password":
            if (inputElement.value.trim() === "") {
                inputElement.style.borderColor = "red";
            } else {
                inputElement.style.borderColor = "green";
            }
            break;
    }
}

function validateForm() {
    let email = document.getElementById("email").value;
    let password = document.getElementById("password").value;
    let errorDisplay = document.getElementById("errorDisplay");
    let errorBox = document.getElementById("errorBox");

    // Basic email validation, I've done using HTML "required" too.
    if (email.trim() === "") {
        errorDisplay.innerHTML = "E-Mail cannot be empty!";
        errorDisplay.classList.remove("d-none");
        return false;
    }

    // Check if the password field is empty.
    if (password.trim() === "") {
        errorDisplay.innerHTML = "Password cannot be empty!";
        errorDisplay.classList.remove("d-none");
        return false;
    }

    // If there are no errors, hide the error displays and return true.
    errorDisplay.classList.add("d-none");
    errorBox.classList.add("d-none");
    return true;
}