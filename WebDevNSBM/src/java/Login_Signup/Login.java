package Login_Signup;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
    {
        String uemail = request.getParameter("useremail");
        String upwd = request.getParameter("password");

        HttpSession session = request.getSession();

        RequestDispatcher dispatcher = null;

        try
        {
            // This is the driver. just fo to WEB-INF folder and copy the JDBC JAR file to your XAAMP -> Tomcat -> Lib and paste.
            Class.forName("com.mysql.jdbc.Driver");
            // You only need to replace this code line with your localhost database credentials or you can host it.
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
            // Query wrote to retrieve data from database of registered users.
            PreparedStatement pst = con.prepareStatement("SELECT * FROM users WHERE uemail = ? AND upwd = ?");
            pst.setString(1, uemail);
            pst.setString(2, upwd);

            ResultSet rs = pst.executeQuery();
            if(rs.next())
            {
                String userName = rs.getString("uname");
                session.setAttribute("name", userName);
                dispatcher = request.getRequestDispatcher("index.jsp");
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
