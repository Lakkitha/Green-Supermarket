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
        <jsp:include page="navbar.jsp"/>
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
          <div class="row align-items-center mt-4">
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
                  placeholder="Enter your email"
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