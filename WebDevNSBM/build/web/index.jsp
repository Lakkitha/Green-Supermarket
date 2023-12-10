<%-- 
    Document   : index
    Created on : Dec 5, 2023, 9:08:18â¯PM
    Author     : OMEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="/style.css">
        <title>Home Page</title>
    </head>
    <body class="vh-100 overflow-hidden">
        <!-- NavBar -->
        <nav class="navbar navbar-expand-lg" style="background-color: rgba(255, 255, 255, 0.466);">
            <div class="container">

                <!-- Logo -->
                <a class="navbar-brand fs-4" href="/index.html">Logo</a>

                <!-- Toggle Menu Button -->
                <button class="navbar-toggler shadow-none border-0" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- SideBar -->
                <div class="sidebar offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar"
                    aria-labelledby="offcanvasNavbarLabel">

                    <!-- Sidebar Header -->
                    <div class="offcanvas-header text-white border-bottom">
                        <h5 class="offcanvas-title text-black" id="offcanvasNavbarLabel">Logo</h5>
                        <button type="button" class="btn-close btn-close-white shadow-none" data-bs-dismiss="offcanvas"
                            aria-label="Close"></button>
                    </div>

                    <!-- Sidebar Body -->
                    <div class="offcanvas-body d-flex flex-column flex-lg-row p-4 p-lg-0">
                        <ul class="navbar-nav justify-content-center align-items-center fle flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#" style="color: #333; font-size: 18px; font-weight: bold;">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#Fruits" style="color: #333; font-size: 18px; font-weight: bold;">Fruits</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#Vegitables" style="color: #333; font-size: 18px; font-weight: bold;">Vegetables</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#Cart" style="color: #333; font-size: 18px; font-weight: bold;">Cart</a>
                            </li>
                        </ul>


                        <!-- Login/Signup -->
                        <div class="d-flex flex-lg-row justify-content-center align-items-center gap-3">
                            <a href="#login" class="text-black text-decoration-none">Login</a>
                            <a href="#Signup" class="text-white text-decoration-none px-3 py-1 bg-primary rp"
                                style="background-color: #f94ca4;">Signup</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </body>
</html>
