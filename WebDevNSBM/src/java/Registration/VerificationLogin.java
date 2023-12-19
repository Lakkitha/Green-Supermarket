/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author OMEN
 */
@WebServlet(name = "VerificationLogin", urlPatterns = {"/VerificationLogin"})
public class VerificationLogin extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        HttpSession session = request.getSession();
        String id = (String)session.getAttribute("user_id");

        RequestDispatcher dispatcher = null;
        
        try
        {
            // This is the driver. just fo to WEB-INF folder and copy the JDBC JAR file to your XAAMP -> Tomcat -> Lib and paste.
            Class.forName("com.mysql.jdbc.Driver");
            // You only need to replace this code line with your localhost database credentials or you can host it.
            Connection con = DriverManager.getConnection(RegConnection.CONNECTION_URL, RegConnection.CONNECTION_NAME, RegConnection.CONNECTION_PASS);
            // Query wrote to retrieve data from database of registered users.
            PreparedStatement pst = con.prepareStatement("SELECT * FROM users WHERE id = ?");
            pst.setString(1, id);

            ResultSet rs = pst.executeQuery();
            if(rs.next())
            {
                String username = rs.getString("ufname");
                
                session.setAttribute("uid", id);
                session.setAttribute("uname", username);
                
                // Generate a unique token and store it in the database and a cookie
                String rememberMeToken = Login.GenerateUniqueToken();
                Login.StoreTokenInDatabase(id, rememberMeToken);
                Login.SetRememberMeCookie(response, rememberMeToken);
                
                dispatcher = request.getRequestDispatcher("home.jsp");
            }
            else
            {
                request.setAttribute("status", "failed");
                dispatcher = request.getRequestDispatcher("login.jsp");
            }
            dispatcher.forward(request, response);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}
