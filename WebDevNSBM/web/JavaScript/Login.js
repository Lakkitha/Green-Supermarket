function validateForm() {
    let email = document.getElementById("email").value;
    let password = document.getElementById("password").value;

    // Basic email validation, I've done using HTML too.
    let emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
        alert("Please enter a valid email address!");
        return false;
    }

    // Check if the password field is empty.
    if (password.trim() === "") {
        alert("Password cannot be empty!");
        return false;
    }

    /* Validate the password to be at least 8 characters and a mixture of letters and numbers. 
     * No use of this since it's anyways getting validated by the database.
     
     let passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
     if (!passwordRegex.test(password)) {
     alert(
     "Password must be at least 8 characters and contain a mixture of letters and numbers."
     );
     return false;
     } */

    // If both validation checkpoints pass, then the user can log in.
    return true;
}