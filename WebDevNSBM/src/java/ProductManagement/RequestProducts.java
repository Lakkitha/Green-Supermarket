/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ProductManagement;


import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import com.google.gson.Gson;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author OMEN
 */
@WebServlet(urlPatterns = {"/RequestProducts"})
public class RequestProducts extends HttpServlet 
{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        List<Product> products = FetchProducts();

        request.setAttribute("products", products);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("fruits.jsp");
        dispatcher.forward(request, response);
    }
    
    public static List<Product> FetchProducts()
    {
        List<Product> products = new ArrayList<>();
        
        String jdbcUrl = "jdbc:mysql://localhost:3306/products?zeroDateTimeBehavior=CONVERT_TO_NULL";
        String dbName = "root";
        String dbPass = "";
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            
            try (Connection con = DriverManager.getConnection(jdbcUrl, dbName, dbPass))
            {
                String sql = "SELECT * FROM products";

                try (PreparedStatement pst = con.prepareStatement(sql))
                {
                    try (ResultSet resultSet = pst.executeQuery())
                    {
                        // Iterate through the result set and create product objects
                        while (resultSet.next())
                        {
                            int id = resultSet.getInt("productID");
                            String name = resultSet.getString("name");
                            String description = resultSet.getString("description");
                            float price = resultSet.getFloat("price");
                            int quantity = resultSet.getInt("quantity");
                            String productType = resultSet.getString("category");
                            
                            Product product = new Product(id, name, description, price, quantity, productType);
                            products.add(product);
                        }
                    }
                }
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        
        return products;
    }
}
