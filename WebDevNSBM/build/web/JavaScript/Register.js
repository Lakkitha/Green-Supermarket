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
    let passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;

    // 15 Letters each of first name and last name.
    if (!nameRegex.test(firstName) || !nameRegex.test(lastName)) {
        alert("First name and last name should only contain 15 letters each.");
        return;
    }

    // Checks for a five-digit postal code.
    if (!postalCodeRegex.test(postalCode)) {
        alert("Postal code incorrect");
        return;
    }

    // Checks for a 10-digit mobile number.
    if (!mobileNumberRegex.test(mobileNumber)) {
        alert("Enter a valid mobile number.");
        return;
    }

    // Checks if passwords match and meet the my criteria.
    if (password !== confirmPassword || !passwordRegex.test(password)) {
        alert(
                "Passwords should match or contain at least 8 characters, combination of letters and numbers."
                );
        return;
    }

    // Checks the terms and conditions.
    if (!termsCheck) {
        alert("Please accept our terms and conditions.");
        return;
    }

    // If all validations pass, you can register successfully.
    // Have made validations a bit strict cause payments involved.
    alert("Registration successful!");
}