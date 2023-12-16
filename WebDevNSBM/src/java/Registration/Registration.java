package Registration;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Registration", value = "/Registration")
public class Registration extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String ufname = request.getParameter("fname");
        String ulname = request.getParameter("lname");
        String uemail = request.getParameter("email");
        String uaddress = request.getParameter("address");
        String upost = request.getParameter("postal");
        String uconnum = request.getParameter("contact");
        String upass = request.getParameter("password");

        RequestDispatcher dispatcher = null;
        Connection con = null;

        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            // The MySQL queries i used to create this will be available in WEB-INF folder.
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
            PreparedStatement pst = con.prepareStatement("INSERT INTO users (ufname, ulname, uaddress, upostal, upwd, uemail, umobile) VALUES(?, ?, ?, ?, ?, ?, ?)");
            
            PreparedStatement tokenPst = con.prepareStatement("INSERT INTO usertokens (user_id) VALUES(?);");

            pst.setString(1, ufname);
            pst.setString(2, ulname);
            pst.setString(3, uaddress);
            pst.setString(4, upost);
            pst.setString(5, upass);
            pst.setString(6, uemail);
            pst.setString(7, uconnum);

            int rowCount = pst.executeUpdate();

            dispatcher = request.getRequestDispatcher("registration.jsp");

            if(rowCount > 0)
            {
                // Store an empty token on this id
                String userId = GetUserIdByEmail(uemail);
                tokenPst.setString(1, userId);
                tokenPst.executeUpdate();
                
                request.setAttribute("status", "success");
            }
            else
            {
                request.setAttribute("status", "failed");
            }

            dispatcher.forward(request, response);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            try
            {
                if (con != null)
                {
                    con.close();
                }
            }
            catch (SQLException e)
            {
                e.printStackTrace();
            }
        }
    }
    
    // Method to get the user ID by email
    private String GetUserIdByEmail(String email) {
        String userID = "";
        try {
            // Establish a database connection and execute a query to get the user ID
            // Use a PreparedStatement to avoid SQL injection
            // Assuming users table has columns 'id' and 'uemail'
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
            PreparedStatement pst = con.prepareStatement("SELECT id FROM users WHERE uemail = ?");
            pst.setString(1, email);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                userID = rs.getString("id");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return userID;
    }
}