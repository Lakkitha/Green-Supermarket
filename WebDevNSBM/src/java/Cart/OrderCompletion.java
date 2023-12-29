/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Cart;

import java.io.IOException;
import java.io.PrintWriter;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author OMEN
 */
@WebServlet(name = "OrderCompletion", urlPatterns = {"/OrderCompletion"})
public class OrderCompletion extends HttpServlet 
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        
    }
    
    // Method to add an order
    private void AddOrder()
    {
        
    }
    
    // Method to add order details per purchased item
    private void AddOrderDetails()
    {
        
    }
}
