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
        <link rel="stylesheet" href="CSS/Style.css" />
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
            <!-- Your header content goes here -->
        </header>

        <main
            class="container-fluid d-flex justify-content-center align-items-center min-vh-100"
            >
            <div class="row border p-3 bg-white shadow box-area">
                <!-- Left Box -->
                <div
                    class="col-md-6 d-flex justify-content-center align-items-center flex-column left-box"
                    style="
                    background-image: url('Images/Sample 2.jpg');
                    background-size: cover;
                    background-position: center;
                    background-repeat: no-repeat;
                    height: 650px;
                    "
                    ></div>

                <!-- Right Box -->
                <div class="col-md-5 right-box mt-4">
                    <div class="row align-items-center">
                        <div class="col-12 mb-3">
                            <div class="header-text mb-4 text-left">
                                <h2>Register</h2>
                                <p>Create your account, it's free!</p>
                            </div>
                        </div>
                        <!-- Input fields -->
                        <div class="col-md-6 mb-3">
                            <input
                                type="text"
                                class="form-control rounded-0"
                                id="firstName"
                                placeholder="First Name" 
                                required
                                />
                        </div>
                        <div class="col-md-6 mb-3">
                            <input
                                type="text"
                                class="form-control rounded-0"
                                id="lastName"
                                placeholder="Last Name" 
                                required
                                />
                        </div>
                        <div class="col-12 mb-3">
                            <input
                                type="email"
                                class="form-control rounded-0"
                                id="email"
                                placeholder="E-Mail" 
                                required
                                />
                        </div>
                        <div class="col-12 mb-3">
                            <input
                                type="text"
                                class="form-control rounded-0"
                                id="address"
                                placeholder="Address Line" 
                                required
                                />
                        </div>
                        <div class="col-md-6 mb-3">
                            <input
                                type="text"
                                class="form-control rounded-0"
                                id="postalCode"
                                placeholder="Postal Code" 
                                required
                                />
                        </div>
                        <div class="col-md-6 mb-3">
                            <input
                                type="text"
                                class="form-control rounded-0"
                                id="mobileNumber"
                                placeholder="Mobile No." 
                                required
                                />
                        </div>
                        <div class="col-md-6 mb-3">
                            <input
                                type="password"
                                class="form-control rounded-0"
                                id="password"
                                placeholder="Password" 
                                required
                                />
                        </div>
                        <div class="col-md-6 mb-3">
                            <input
                                type="text"
                                class="form-control rounded-0"
                                id="confirmPassword"
                                placeholder="Confirm Password" 
                                required
                                />
                        </div>

                        <!-- Terms and conditions checkbox -->
                        <div class="col-12 mb-4 d-flex justify-content-between mt-2">
                            <div class="form-check">
                                <input
                                    type="checkbox"
                                    class="form-check-input rounded-0"
                                    id="formCheck"
                                    />
                                <label
                                    for="formCheck"
                                    class="form-check-label text-secondary rounded-0"
                                    ><small> I accept terms and conditions </small></label
                                >
                            </div>
                        </div>

                        <!-- Register button -->
                        <div class="col-12 mb-3">
                            <button
                                type="button"
                                class="btn btn-lg btn-success w-100 fs-6 rounded-0"
                                onclick="validateForm()"
                                >
                                Register
                            </button>
                        </div>

                        <!-- Login link -->
                        <div class="col-12">
                            <div class="row header-text">
                                <small
                                    >Already have an account? <a href="Login.jsp">Login</a></small
                                >
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <footer> </footer>

        <script src="JavaScript/Register.js"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
