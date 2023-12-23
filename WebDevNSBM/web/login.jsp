<%-- 
    Document   : Login
    Created on : Dec 16, 2023, 9:35:56PM
    Author     : Gagana
--%>

<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta charset="UTF-8" />
    <meta name="author" content="Gagana" />
    <meta name="description" content="Login | Green Supermarket" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="RegLog/CSS/style.css" />
    <link rel="stylesheet" href="Home/images/nav.css"/>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <title>Login</title>
  </head>

  <body>
   <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container">
                <!-- Logo -->
                <a class="navbar-brand" href="#">
                    <img src="Images/joe.png" alt="Supermarket Logo" class="logo" height="20px" width="120px">
                </a>
                <!-- Button to toggle navigation on smaller screens -->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- Centered Page Links -->
                <div class="collapse navbar-collapse" id="navbarNav">
                    <div class="navbar-nav mx-auto">
                        <a class="nav-link active" aria-current="page" href="#"> <b> Home </b> </a>
                        <a class="nav-link" href="#"> <b> Fruits</b></a>
                        <a class="nav-link" href="#"><b> Vegetables </b></a>
                        <a class="nav-link" href="#"> <b>About</b></a>
                    </div>
                </div>
                <!-- Icons and Price on Right Side -->
                <div class="d-flex align-items-center ms-auto">
                    <!-- Price Display -->
                    <span class="price me-3"> <b> $ 1500.00 </b> </span>
                    <!-- Search Icon Dropdown -->
                    <div class="nav-item dropdown me-3" id="searchDropdown">
                        <a class="nav-link" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search"></i>
                        </a>
                        <div class="dropdown-menu rounded-0" id="searchDropdownMenu">
                            <!-- Add search input field and button -->
                            <form class="p-2">
                                <div class="input-group">
                                    <input type="text" class="form-control rounded-0" placeholder="Search..."
                                        aria-label="Search" aria-describedby="button-addon2">
                                    <button class="btn btn-outline-success rounded-0" type="button" id="button-addon2">
                                        <i class="fas fa-search"></i>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- Cart Icon Dropdown -->
                    <a class="nav-link me-3" href="#">
                        <i class="fa-solid fa-cart-shopping"></i>
                    </a>

                    <!-- Account Icon and Username Dropdown -->
                    <div class="nav-item dropdown me-3" id="accountDropdown">
                        <a class="nav-link" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-user"></i>
                            <span class="username-placeholder"> <b> Kusal Videshan </b></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-start rounded-0" id="accountDropdownMenu"
                            style="max-height: 200px; overflow-y: auto;">
                            <!-- Add dropdown menu items for account options -->
                            <div class="dropdown-item">
                                <p class="small-font"> Kusal Videshan</p>
                                <p class="small-font">123 Main Street, Cityville</p>
                            </div>
                            <div class="dropdown-divider"></div>
                            <!-- Convert Profile and Logout links to buttons -->
                            <button class="dropdown-item btn btn-link" type="button">
                                <i class="fa-solid fa-address-card"></i> Profile
                            </button>
                            <button class="dropdown-item btn btn-link" type="button">
                                <i class="fa-solid fa-right-from-bracket"></i> Logout
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </header>
    
    <main
      class="container-fluid d-flex justify-content-center align-items-center min-vh-100"
    >
        
      <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
      <div class="row border p-3 bg-white shadow box-area">
        <!-- Left Box-->
        <div
          class="col-md-6 d-flex justify-content-center align-items-center flex-column left-box"
          style="
            background-image: url('RegLog/Images/Sample.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 550px;
          "
        ></div>

        <!-- Right Box-->
        <div class="col-md-5 right-boxlogin mt-5">
          <div class="row align-items-center">
            <form
              action="Login"
              method="POST"
              id="loginForm"
              onsubmit="return validateForm()"
            >
              <div class="col-12 mb-3">
                <div class="header-text mb-4 text-left">
                  <h2>Login</h2>
                  <p>We are happy to have you back!</p>
                </div>
              </div>
              <div class="col-12 mb-3">
                <input
                  type="email"
                  class="form-control form-control-lg bg-light fs-6 rounded-0"
                  placeholder="E-Mail Address"
                  name="useremail"
                  id="email"
                  required
                  oninput="updateBorderColor('email')"
                />
              </div>
              <div class="col-12 mb-1">
                <input
                  type="password"
                  class="form-control form-control-lg bg-light fs-6 rounded-0"
                  placeholder="Password"
                  name="password"
                  id="password"
                  required
                  oninput="updateBorderColor('password')"
                />
              </div>
              <div class="col-12 mb-4 d-flex justify-content-between mt-2">
                <div class="form-check">
                  <input
                    type="checkbox"
                    class="form-check-input rounded-0"
                    id="formCheck"
                    name="rememberMe"
                  />
                  <label
                    for="formCheck"
                    class="form-check-label text-secondary rounded-0"
                    ><small>Remember Me</small></label
                  >
                </div>
                <div class="forgot">
                  <small><a href="#">Forgot Password?</a></small>
                </div>
              </div>
              <div class="col-12 mb-3">
                <button
                  type="submit"
                  formaction="Login"
                  formmethod="POST"
                  class="btn btn-lg btn-success w-100 fs-6 rounded-0"
                >
                  Login
                </button>
              </div>
              <div class="col-12">
                <div class="row header-text">
                  <small>
                    Don't have an account yet?
                    <a href="register.jsp">Register</a>
                  </small>
                </div>
              </div>

              <div id="errorDisplay" class="col-12 mb-3 text-danger"></div>
            </form>
          </div>
        </div>
      </div>
    </main>
      
    <footer></footer>
    
    <script type="text/javascript">
        var status = document.getElementById("status").value;
        if(status === "failed")
        {
          alert("Sorry", "wrong username or password", "failed");
        }
    </script>
    
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"
    ></script>
    
    <script src="RegLog/JavaScript/Login.js"></script>
  </body>
</html>