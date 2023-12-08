function validateForm()
{
    let cname = document.getElementById("name").value;
    let mail = document.getElementById("email").value;
    let password = document.getElementById("password").value;
    let repeatPassword = document.getElementById("rpassword").value;
    let mobile = document.getElementById("contact").value;

    // Check if any field is empty.
    if (cname === "" || mail === "" || password === "" || repeatPassword === "" || mobile === "")
    {
        alert("Please fill in all fields");
        return false;
    }

    if (password !== repeatPassword)
    {
        alert("Passwords do not match, please try again!");
        return false;
    }
    return true;
}

