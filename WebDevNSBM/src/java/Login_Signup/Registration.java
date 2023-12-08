package Login_Signup;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
        String uname = request.getParameter("name");
        String uemail = request.getParameter("email");
        String upass = request.getParameter("password");
        String uconnum = request.getParameter("contact");

        RequestDispatcher dispatcher = null;
        Connection con = null;

        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            // The MySQL queries i used to create this will be available in WEB-INF folder.
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?useSSL=false", "root", "password");
            PreparedStatement pst = con.prepareStatement("INSERT INTO users (uname, upwd, uemail, umobile) VALUES(?, ?, ?, ?)");

            pst.setString(1, uname);
            pst.setString(2, upass);
            pst.setString(3, uemail);
            pst.setString(4, uconnum);

            int rowCount = pst.executeUpdate();

            dispatcher = request.getRequestDispatcher("registration.jsp");

            if(rowCount > 0)
            {
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
}