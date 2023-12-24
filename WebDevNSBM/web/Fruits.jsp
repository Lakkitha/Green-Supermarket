<%-- 
    Document   : Fruits
    Created on : Dec 12, 2023, 7:39:15 PM
    Author     : Gagana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="ProductManagement.Product"%>
<%@ page import="com.google.gson.Gson" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <meta name="author" content="Gagana Methmal">
    <meta name="description" content="Fruits | Green Supermarket">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="CSS/Style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.lazyload/1.9.7/jquery.lazyload.js"></script>
    <script src="JS/fruits.js"></script>
    <link rel="stylesheet" href="CSS/nav.css">

    <title> Fruits </title>
    
    <%
        List<Product> products = (List<Product>) request.getAttribute("products");
        String productsJson = new Gson().toJson(products);
    %>
    
    

    <style>
        /* Add the following styles for centering cards */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            display: flex;
            min-height: 100vh;
            flex-direction: column;
        }

        main {
            flex: 1;
        }

        /* Center the container */
        .container-center {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Add the following styles for centering cards */
        .card {
            margin: 0 auto;
            float: none;
        }
    </style>
</head>

<body>

    <header>

        <nav class="navbar navbar-expand-lg" style="background-color: rgba(255, 255, 255, 0.466);">
            <div class="container">

                <!-- Logo -->
                <a class="navbar-brand fs-4" href="index.jsp">Logo</a>

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
                        <ul class="navbar-nav justify-content-center align-items-center flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="#"
                                    style="font-size: 18px; font-weight: bold;">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" style="font-size: 18px; font-weight: bold;">Fruits</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" style="font-size: 18px; font-weight: bold;">Vegetables</a>
                            </li>
                        </ul>

                        <!-- Icons and Total Price on the right side -->
                        <div class="ms-auto navbar-icons">
                            <i class="bi bi-person" onclick="toggleMenu()"></i> <!-- Person icon -->
                            <i class="bi bi-cart"></i> <!-- Cart icon -->
                            <span class="cart-total">Rs. 0.00</span> <!-- Cart total price -->

                            <div class="sub-menu-wrap" id="subMenu">
                                <div class="sub-menu">
                                    <div class="user-info">
                                        <i class="bi bi-person"></i>
                                        <h>GUEST</h>
                                    </div>
                                    <hr>
                                    <a href="#" class="sub-menu-link">
                                        <i class="bi bi-file-person-fill"></i>
                                        <p>Edit Profile</p>
                                        <span>></span>
                                    </a>
                                    <form action="Logout" method="POST">
                                        <button class="sub-menu-link" type="submit">
                                            <i class="bi bi-box-arrow-right"></i>
                                            <p>Log out</p>
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

        <!-- Banner -->
        <div class="banner-container">
            <img src="Images/Berries.jpg" alt="Banner Image" class="banner-image">
            <div class="overlay"></div>
            <div class="banner-text">
                <h1>Fruits</h1>
                <p><i> Nature's Bounty Unleashed: Fruits That Nourish, Delight, and Inspire! </i></p>
            </div>
        </div>

    </header>

    <main>
        <div class="col-md-10 mt-5">
            <div class="row"> </div>
        </div>

        <!-- Body -->
        <div class="container mt-5">

            <!-- Dropdown -->
            <div class="container">
                <div class="sort-by-container">
                    <label for="price-sort">Sort by Price:</label>
                    <select id="price-sort">
                        <option value="low-to-high">Low to High</option>
                        <option value="high-to-low">High to Low</option>
                    </select>
                </div>
            </div>

            <div class="container-fluid">
                <div class="row">

                    <!-- Cards -->
                    <div class="container mt-5 container-center col-md-12 text-center">
                        <div class="row js-product-container">
                            <!-- Add products in here -->
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </main>
    
    <script>
        AddAllProducts(<%=productsJson%>);
        
        $(function() 
        {
            $("img.lazy").lazyload
            ({
                effect : "fadeIn"
            });

        });
    </script>
</body>

</html>