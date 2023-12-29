<%-- 
    Document   : navbar
    Created on : Dec 23, 2023, 9:32:42?PM
    Author     : Gagana
--%>

<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% 
    // Retrieve session attributes
    String userId = (String) session.getAttribute("uid");
    String username = (String) session.getAttribute("uname");
    String uaddress = (String) session.getAttribute("useraddress");
%>

<c:set var="userid" value='<%=userId%>' scope="request"/>
<c:set var="username" value='<%=username%>' scope="request"/>
<c:set var="address" value='<%=uaddress%>' scope="request"/>

<html lang="en-US">

    <head>
        <meta charset="UTF-8">
        <meta name="author" content="Gagana">
        <meta name="description" content="Home | Green Supermarket">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="Home/nav.css">
        <script type="text/javascript" src="JS/cart.js"></script>
        <title>Home Page</title>
    </head>

    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
                <div class="container">
                    <!-- Logo -->
                    <a class="navbar-brand" href="home.jsp">
                        <img src="Home/images/greensupermarketlogo.png" alt="Supermarket Logo" class="logo" height="40px" width="200px">
                    </a>
                    <!-- Button to toggle navigation on smaller screens -->
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <!-- Centered Page Links -->
                    <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
                        <div class="navbar-nav">
                            <a class="nav-link active" aria-current="page" href="home.jsp"> <b> Home </b> </a>
                            <a class="nav-link" href="fruits.jsp?page=fruit"> <b> Fruits</b></a>
                            <a class="nav-link" href="vegetables.jsp?page=vegetable"><b> Vegetables </b></a>
                            <a class="nav-link" href="beverages.jsp?page=beverage"><b> Beverages </b></a>
                            <a class="nav-link" href="contactus.jsp?page=contactus"><b> Contact </b></a>
                            <a class="nav-link" href="about.jsp"> <b>About</b></a>
                        </div>
                    </div>
                    <!-- Icons and Price on Right Side -->
                    <div class="d-flex align-items-center ms-auto">
                        <!-- Price Display -->
                        <span class="price me-3"> <b class="navbar-total-price"></b> </span>
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
                        <a class="nav-link me-3" href="cart.jsp">
                            <i class="fa-solid fa-cart-shopping"></i>
                        </a>
                        
                        <!-- Check if userId is null to decide whether to show the sign-in button or the account dropdown -->
                        <c:choose>
                            <c:when test="${empty userid}">
                                <!-- Show sign-in button -->
                                <button class="btn btn-link sign-in" onclick="window.location.href='login.jsp';">
                                    <i class="fa-solid fa-right-from-bracket"></i> Sign In
                                </button>
                            </c:when>
                            <c:otherwise>
                                <!-- Show account dropdown -->
                                <div class="nav-item dropdown me-3" id="accountDropdown">
                                    <a class="nav-link" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="fas fa-user"></i>
                                        <span class="username-placeholder"> <b><c:out value="${username}" /></b></span>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-start rounded-0" id="accountDropdownMenu"
                                        style="max-height: 200px; overflow-y: auto;">
                                        <!-- Add dropdown menu items for account options -->
                                        <div class="dropdown-item">
                                            <p class="small-font"><c:out value="${username}" /></p>
                                            <p class="small-font" style="font-size:10px"><c:out value="${address}" /></p>
                                        </div>
                                        <div class="dropdown-divider"></div>
                                        <!-- Convert Profile and Logout links to buttons -->
                                        <button class="dropdown-item btn btn-link" type="button">
                                            <i class="fa-solid fa-address-card"></i> Profile
                                        </button>
                                        <form action="Logout" method="POST">
                                            <button class="dropdown-item btn btn-link" type="submit" formaction="Logout" formmethod="POST">
                                                <i class="fa-solid fa-right-from-bracket"></i> Logout
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </nav>
        </header>
        
        <script>
            /* Navbar Script - Didn't work exteranlly, This works! :( */
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
            
            if (accountDropdown != null)
            {
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
            }
            
            const navbarTotalTag = document.querySelector('.navbar-total-price');
            navbarTotalTag.innerText = '$' + cartTotal();

            document.addEventListener('DOMContentLoaded', function () {
                document.querySelector('.navbar').classList.add('navbar-loaded');
            });
        </script>
    </body>

</html>
