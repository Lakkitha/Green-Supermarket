<%-- 
    Document   : Register
    Created on : Dec 16, 2023, 10:04:39PM
    Author     : Gagana
--%>

<!DOCTYPE html>
 <html lang="en-US">
  <head>
    <meta charset="UTF-8" />
    <meta name="author" content="Gagana" />
    <meta name="description" content="Register | Green Supermarket" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="RegLog/CSS/style.css" />
    <link rel="stylesheet" href="Home/nav.css"/>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />

    <title>Register</title>
  </head>

  <body>
    <header>
        <jsp:include page="navbar.jsp"/>
    </header>
      
      <!-- Status being the status of the registration servlet -->
    <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

    <main
      class="container-fluid d-flex justify-content-center align-items-center min-vh-100"
    >
      <div class="row border p-3 bg-white shadow box-area">
        <!-- Left Box -->
        <div
          class="col-md-6 d-flex justify-content-center align-items-center flex-column left-box"
          style="
            background-image: url('RegLog/Images/Sample_2.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 557px;
            margin-left: 5px;
          "
        ></div>

        <!-- Right Box -->
        <div class="col-md-5 right-boxregister">
            
          <div class="row align-items-center">
            <form
              action="Registration"
              method="POST"
              id="registerForm"
              onsubmit="return validateForm()"
              class="row g-1"
              
              
              
            >
              <div class="col-12 mb-2">
                <div class="header-textregister mb-1 text-left">
                  <h2>Register</h2> 
                  <p>Create your account, it's free!</p>
                </div>
              </div>
              <!-- Input fields -->
              <div class="col-md-6 mb-3">
                  
                <input
                  type="text"
                  class="form-control rounded-0 "
                  id="firstName"
                  name = "fname"
                  placeholder="First Name"
                  oninput="updateBorderColor('firstName')"
                  required
                >
              </div>
              <div class="col-md-6 mb-3" > 
                <input
                  type="text"
                  class="form-control rounded-0 "
                  id="lastName"
                  name = "lname"
                  placeholder="Last Name"
                  oninput="updateBorderColor('lastName')"
                  required
                />
              </div>
              <div class="col-12 mb-3">
                <input
                  type="email"
                  class="form-control rounded-0"
                  id="email"
                  name="email"
                  placeholder="E-Mail"
                  oninput="updateBorderColor('email')"
                  required
                />
              </div>
              <div class="col-12 mb-3">
                <input
                  type="text"
                  class="form-control rounded-0 "
                  id="address"
                  name="address"
                  placeholder="Address Line"
                  oninput="updateBorderColor('address')"
                  required
                />
              </div>
              <div class="col-md-6 mb-3">
                <input
                  type="text"
                  class="form-control rounded-0 "
                  id="postalCode"
                  name="postal"
                  placeholder="Postal Code"
                  oninput="updateBorderColor('postalCode')"
                  required
                />
              </div>
              <div class="col-md-6 mb-3">
                <input
                  type="text"
                  class="form-control rounded-0 "
                  id="mobileNumber"
                  name="contact"
                  placeholder="Mobile No."
                  oninput="updateBorderColor('mobileNumber')"
                  required
                />
              </div>
              <div class="col-md-6 mb-3">
                <input
                  type="password"
                  class="form-control rounded-0 "
                  id="password"
                  name="password"
                  placeholder="Password"
                  oninput="updateBorderColor('password')"
                  required
                />
              </div>
              <div class="col-md-6 mb-3">
                <input
                  type="password"
                  class="form-control rounded-0 "
                  id="confirmPassword"
                  name="rpassword"
                  placeholder="Confirm Password"
                  oninput="updateBorderColor('confirmPassword')"
                  required
                />
              </div>

              <!-- Terms and conditions checkbox -->
              <div class="col-12 mb-4 d-flex justify-content-between mt-2">
                <div class="form-check">
                  <input
                    type="checkbox"
                    class="form-check-input rounded-0 "
                    name="formCheck"
                    id="formCheck"
                    oninput="updateBorderColor('formCheck')"
                  />
                  <label
                    for="formCheck"
                    class="form-check-label text-secondary rounded-0 "
                    ><small> I accept terms and conditions </small></label
                  >
                </div>
              </div>

              <!-- Register button -->
              <div class="col-12 mb-3">
                <button
                  type="submit"
                  formmethod="POST"
                  class="btn btn-lg btn-success w-100 fs-6 rounded-0 "
                  onclick="validateForm()"
                >
                  Register
                </button>
              </div>

              <!-- Login link -->
              <div class="col-12">
                <div class="row header-text">
                  <small
                    >Already have an account?
                    <a href="login.jsp">Login</a></small
                  >
                </div>
              </div
          
            </form>

            <div id="error-message" class="col-12 text-danger mb-3"></div>
          </div>
        </div>
      </div>
    </main>
    
    <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
    <input type="hidden" id="error" value="<%= request.getAttribute("error") %>">

    <script type="text/javascript">
        let status = document.getElementById("status").value;
        let error = document.getElementById("error").value;

        if (status === "success") {
            alert("Account created successfully", "success");
            // window.location.href = "verification.jsp";
        } else if (status === "failed") {
            alert("Registration failed. " + error);
            // Remove the line below to prevent the automatic redirection
            // window.location.href = "registration.jsp";
        }
    </script>
    <script>
         /* Navbar Script - Didn't work exteranlly :( */
        const searchDropdown = document.getElementById('searchDropdown');
        const searchDropdownMenu = document.getElementById('searchDropdownMenu');

        searchDropdown.addEventListener('mouseover', function () {
            searchDropdownMenu.classList.add('show');
        });

        searchDropdown.addEventListener('mouseout', function () {
            searchDropdownMenu.classList.remove('show');
        });

        searchDropdownMenu.addEventListener('mouseover', function () {
            searchDropdownMenu.classList.add('show');
        });

        searchDropdownMenu.addEventListener('mouseout', function () {
            searchDropdownMenu.classList.remove('show');
        });

        const accountDropdown = document.getElementById('accountDropdown');
        const accountDropdownMenu = document.getElementById('accountDropdownMenu');

        accountDropdown.addEventListener('mouseover', function () {
            accountDropdownMenu.classList.add('show');
        });

        accountDropdown.addEventListener('mouseout', function () {
            accountDropdownMenu.classList.remove('show');
        });

        accountDropdownMenu.addEventListener('mouseover', function () {
            accountDropdownMenu.classList.add('show');
        });

        accountDropdownMenu.addEventListener('mouseout', function () {
            accountDropdownMenu.classList.remove('show');
        });

        document.addEventListener('DOMContentLoaded', function () {
            document.querySelector('.navbar').classList.add('navbar-loaded');
        });
    </script>

    <footer></footer>

    <script src="JavaScript/Register.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
