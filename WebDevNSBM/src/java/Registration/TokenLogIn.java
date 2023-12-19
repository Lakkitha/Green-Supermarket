/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
@WebServlet(name = "TokenLogIn", urlPatterns = {"/TokenLogIn"})
public class TokenLogIn extends HttpServlet 
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        HttpSession session = request.getSession();
        String token = (String)session.getAttribute("remember_token");
        RequestDispatcher dispatcher = null;
        String userID = null;
        
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(RegConnection.CONNECTION_URL, RegConnection.CONNECTION_NAME, RegConnection.CONNECTION_PASS);
            
            
            try (PreparedStatement pst = con.prepareStatement("SELECT user_id FROM usertokens WHERE user_token = ?");)
            {
                pst.setString(1, token);

                ResultSet rs = pst.executeQuery();
                

                if (rs.next()) {
                    userID = rs.getString("user_id");
                }
            }
            catch (SQLException e)
            {
                e.printStackTrace();
            }
            finally
            {
                try (PreparedStatement userPst = con.prepareStatement("SELECT * FROM users WHERE id = ?"))
                {
                    if (userID != null)
                    {
                        userPst.setInt(1, Integer.parseInt(userID));
                        ResultSet userRs = userPst.executeQuery();
                        
                        if (userRs.next())
                        {
                            String username = userRs.getString("ufname");
                            
                            session.setAttribute("uid", userID);
                            session.setAttribute("uname", username);
                            
                            dispatcher = request.getRequestDispatcher("home.jsp");
                        }
                    }
                }
                catch (SQLException e)
                {
                    e.printStackTrace();
                }
            }
            
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
        
        if (dispatcher != null) {
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect("home.jsp");
        }
    }
}
