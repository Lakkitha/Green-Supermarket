function updateBorderColor(elementId) {
    let inputElement = document.getElementById(elementId);

    // Resets border color to default
    inputElement.style.borderColor = "";

    // Checks the validation and update border color accordingly if empty.
    switch (elementId) {
        case "firstName":
            if (inputElement.value.trim() === "") {
                inputElement.style.borderColor = "red";
            } else {
                inputElement.style.borderColor = "green";
            }
            break;

        case "lastName":
            if (inputElement.value.trim() === "") {
                inputElement.style.borderColor = "red";
            } else {
                inputElement.style.borderColor = "green";
            }
            break;

        case "address":
            if (inputElement.value.trim() === "") {
                inputElement.style.borderColor = "red";
            } else {
                inputElement.style.borderColor = "green";
            }
            break;

        case "email":
            if (inputElement.value.trim() === "") {
                inputElement.style.borderColor = "red";
            } else {
                inputElement.style.borderColor = "green";
            }
            break;

        case "postalCode":
            if (inputElement.value.trim() === "") {
                inputElement.style.borderColor = "red";
            } else {
                inputElement.style.borderColor = "green";
            }
            break;

        case "mobileNumber":
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

        case "confirmPassword":
            if (inputElement.value.trim() === "") {
                inputElement.style.borderColor = "red";
            } else {
                inputElement.style.borderColor = "green";
            }
            break;
    }
}

function validateForm() {
    let firstName = document.getElementById("firstName").value;
    let lastName = document.getElementById("lastName").value;
    let postalCode = document.getElementById("postalCode").value;
    let mobileNumber = document.getElementById("mobileNumber").value;
    let password = document.getElementById("password").value;
    let confirmPassword = document.getElementById("confirmPassword").value;
    let termsCheck = document.getElementById("formCheck").checked;

    let nameRegex = /^[A-Za-z]{1,30}$/;
    let postalCodeRegex = /^\d{5}$/;
    let mobileNumberRegex = /^\d{10}$/;
    let passwordRegex = /^.{8,}$/;

    let errorMessage = document.getElementById("error-message");

    // Clear any previous error messages and reset input styles
    errorMessage.innerHTML = "";
    resetInputStyles();

    if (!nameRegex.test(firstName) || !nameRegex.test(lastName)) {
        errorMessage.innerHTML = "Enter your name, cannot exceed 15 characters";
        setInvalidStyle(document.getElementById("firstName"));
        setInvalidStyle(document.getElementById("lastName"));
        return;
    }

    if (!postalCodeRegex.test(postalCode)) {
        errorMessage.innerHTML = "Invalid postal code";
        setInvalidStyle(document.getElementById("postalCode"));
        return;
    }

    if (!mobileNumberRegex.test(mobileNumber)) {
        errorMessage.innerHTML = "Invalid mobile number.";
        setInvalidStyle(document.getElementById("mobileNumber"));
        return;
    }

    if (password !== confirmPassword || !passwordRegex.test(password)) {
        errorMessage.innerHTML = "Password should be at least 8 characters long.";
        setInvalidStyle(document.getElementById("password"));
        setInvalidStyle(document.getElementById("confirmPassword"));
        return;
    }

    if (!termsCheck) {
        errorMessage.innerHTML = "Please accept our terms and conditions.";
        return;
    }
    // If all validations pass, you can register successfully.
    errorMessage.innerHTML = "Registration successful!";
}

function resetInputStyles() {
    // Reset styles for all input fields
    let inputFields = document.querySelectorAll("input");
    inputFields.forEach((input) => {
        input.classList.remove("is-invalid");
        input.classList.remove("is-valid");
    });
}

function setInvalidStyle(inputField) {
    inputField.classList.add("is-invalid");
}

function setValidStyle(inputField) {
    inputField.classList.remove("is-invalid");
    inputField.classList.add("is-valid");
}