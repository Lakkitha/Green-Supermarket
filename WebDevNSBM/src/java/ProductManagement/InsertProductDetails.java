/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ProductManagement;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author OMEN
 */
@WebServlet(name = "InsertProductDetails", urlPatterns = {"/InsertProductDetails"})
public class InsertProductDetails extends HttpServlet 
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        int pID = Integer.parseInt((String)request.getParameter("productId"));
        
        // Need to do a try here later
        List<Product> products = RequestProducts.FetchProducts();
        RequestDispatcher dispatcher = request.getRequestDispatcher("productDetails.jsp");

        // Search through products and return the one with the given id
        for (Product p : products)
        {
            if (p.GetID() == pID)
            {
                // break after id is found
                request.setAttribute("product", new Gson().toJson(p));
                break;
            }
        }
        
        dispatcher.forward(request, response);
    }
}
