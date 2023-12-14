/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


document.addEventListener

("DOMContentLoaded", function () 

    {
        var emailinput = document.getElementById("email");
        var passwordinput = document.getElementById("password");

        // dynamically update field colors
        emailinput.addEventListener
    
        ("input", function () 
    
            {
                validateAndUpdateField(emailinput, isValidEmail(emailinput.value));
            }
              
        );

        passwordinput.addEventListener
    
        ("input", function ()
    
            {
                validateAndUpdateField(passwordinput, isValidPassword(passwordinput.value));
            }
            
        );
    }
);

function validateAndUpdateField(field, isValid) 
{
    // Update the border color based on validity
    field.style.border = isValid ? '2px solid green' : '2px solid red';
}

function isValidEmail(email)

{
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

function isValidPassword(password) 

{
    // Password must be at least 6 characters
    return password.length >= 6;
}

