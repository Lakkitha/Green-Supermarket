<%-- 
    Document   : fruits
    Created on : Dec 23, 2023, 9:06:39?PM
    Author     : Gagana
--%>

<%@page import="java.util.List"%>
<%@page import="ProductManagement.Product"%>
<%@page import="ProductManagement.RequestProducts"%>

<%@ page import="com.google.gson.Gson" %>

<%
    // Request products
    String pageType = (String) request.getParameter("page");
    session.setAttribute("page-name", "Fruit");

    if (pageType == "fruit")
    {
        response.sendRedirect("RequestProducts");
    }

    String productsJson = "";
    if (request.getAttribute("products") != null)
    {
        List<Product> products = (List<Product>) request.getAttribute("products");
        productsJson = new Gson().toJson(products);
    }
%>

<!DOCTYPE HTML>
<html lang="en-US">
    <head>        
        <meta charset="UTF-8">
        <meta name="author" content="Gagana">
        <meta name="description" content="Fruits | Green Supermarket">
        <link rel="stylesheet" href="RegLog/CSS/productpages.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
        <script src="JS/products.js"></script>
        <title> Fruits </title>
    </head>
    
    <style>
        .banner-text
        {
            margin-top: 20px;
        }
    </style>

    <body>
        <jsp:include page="navbar.jsp"/>
        <header>
            <!-- Banner -->
            <div class="banner-container fade-in">
                <img src="Home/images/Berries Background.jpg" alt="Banner Image" class="banner-image">
                <div class="overlay"></div>
                <div class="banner-text">
                    <h1>Fruits</h1>
                    <p> Nature's Bounty Unleashed: Fruits That Nourish, Delight, and Inspire! </p>
                </div>
            </div>
        </header>

        <section class="product">
            <div class="container">
                <div class="text-end mt-3">
                    <label for="sortBy" class="form-label" style="display: inline-block; margin-right: 10px;">Sort By:
                    </label>
                    <select class="form-select" id="sortBy" style="display: inline-block; width: auto;">
                        <option value="price">Price</option>
                        <option value="name">Name</option>
                    </select>
                </div>

                <!-- Row 1 -->
                <div class="row text-center js-product-container">

                </div>
            </div>
        </section>

        <footer>
            <jsp:include page="footer.jsp"/>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

        <script>
            console.log('<%=pageType%>');

            if ('<%=pageType%>' === 'fruit')
            {
                window.location.assign("RequestProducts");
            }

            AddAllProducts(<%=productsJson%>);
            //console.log(JSON.parse(JSON.stringify(<%=productsJson%>)));
        </script>
    </body>
</html>
