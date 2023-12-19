package Registration;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.UUID;
import javax.servlet.http.Cookie;
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
        String rememberMe = request.getParameter("rememberMe");

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
                boolean verified = rs.getBoolean("uverified");
                String userID = rs.getString("id");
                String username = rs.getString("ufname");
                
                if (!verified)
                {
                    // Generate verification token
                    String verificationToken = Verification.GenerateVerificationToken(uemail);

                    // Store encoded token in database
                    Verification.StoreVerificationToken(Integer.parseInt(userID), verificationToken);

                    // Construct verification link
                    String verificationLink = "http://localhost:8080/WebDevNSBM/verification.jsp?token=" + verificationToken + "&email=" + uemail;

                    // Send verification email with the link
                    Verification.SendVerificationEmail(uemail, verificationLink);
                    
                    dispatcher = request.getRequestDispatcher("verification.jsp");
                }
                else
                {
                    session.setAttribute("uid", userID);
                    session.setAttribute("uname", username);

                    // Check if "Remember ME" is selected
                    if (rememberMe != null && rememberMe.equals("on"))
                    {
                        // Generate a unique token and store it in the database and a cookie
                        String rememberMeToken = GenerateUniqueToken();
                        StoreTokenInDatabase(userID, rememberMeToken);
                        SetRememberMeCookie(response, rememberMeToken);
                    }
                    else 
                    {
                        // If "Remember Me" is not selected, set session timeout to 10 days
                        session.setMaxInactiveInterval(10 * 24 * 60 * 60); // seconds
                    }

                    dispatcher = request.getRequestDispatcher("home.jsp");
                }
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
    
    // Method to generate a unique token
    public static String GenerateUniqueToken()
    {
        // TODO: Implement a secure way to generate a unique token
        return UUID.randomUUID().toString();
    }
    
    // Method to store the token in the database
    public static void StoreTokenInDatabase(String userID, String token) {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
            PreparedStatement pst = con.prepareStatement("UPDATE usertokens SET user_token = ? WHERE user_id = ?");
            
            pst.setString(1, token);
            pst.setString(2, userID);
            pst.executeUpdate();
            
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
    
    // Method to set the "Remember Me" cookie
    public static void SetRememberMeCookie(HttpServletResponse response, String token) {
        Cookie cookie = new Cookie("remember_me_token", token);
        cookie.setMaxAge(30 * 24 * 60 * 60); // Set the cookie expiration time (e.g., 30 days)
        cookie.setPath("/"); // Set the cookie path to make it accessible to the entire application
        response.addCookie(cookie);
    }
}


