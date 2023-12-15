<%-- 
    Document   : TestFruits
    Created on : Dec 15, 2023, 12:50:41 AM
    Author     : OMEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="ProductManagement.Product"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Fruits</title>
    </head>
    <body>
        <h1>Product List</h1>

        <% 
            // Assuming you have a method to retrieve the product list in your servlet
            List<Product> products = (List<Product>) request.getAttribute("products");
        %>

        <% if (products != null && !products.isEmpty()) { %>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Quantity</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Product product : products) { %>
                        <tr>
                            <td><%= product.GetID()%></td>
                            <td><%= product.GetName() %></td>
                            <td><%= product.GetDesc() %></td>
                            <td><%= product.GetPrice() %></td>
                            <td><%= product.GetQuantity() %></td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        <% } else { %>
            <p>No products found.</p>
        <% } %>
    </body>
</html>
