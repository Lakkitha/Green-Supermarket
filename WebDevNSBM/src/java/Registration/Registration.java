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
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;


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
            con = DriverManager.getConnection(RegConnection.CONNECTION_URL, RegConnection.CONNECTION_NAME, RegConnection.CONNECTION_PASS);
            
            // Check if the email is already taken and if the email isn't verified
            System.out.println("Is email taken?: " + IsEmailTaken(uemail, con));
            System.out.println("Is email verified?: " + Verification.CheckVerificationStatus(uemail));
            
            if (IsEmailTaken(uemail, con) && Verification.CheckVerificationStatus(uemail)) 
            {
                request.setAttribute("status", "failed");
                request.setAttribute("error", "Email is already taken");
                
                dispatcher = request.getRequestDispatcher("register.jsp");
                dispatcher.forward(request, response);
                
                return; // Stop further execution
            }
            else if (IsEmailTaken(uemail, con) && !Verification.CheckVerificationStatus(uemail))
            {
                DeleteUserById(Integer.parseInt(GetUserIdByEmail(uemail)));
            }
            
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

            dispatcher = request.getRequestDispatcher("register.jsp");

            if(rowCount > 0)
            {
                // Store an empty token on this id
                String userId = GetUserIdByEmail(uemail);
                tokenPst.setString(1, userId);
                tokenPst.executeUpdate();
                
                // Generate verification token
                String verificationToken = Verification.GenerateVerificationToken(uemail);
                
                // Store encoded token in database
                Verification.StoreVerificationToken(Integer.parseInt(userId), verificationToken);
                
                // Construct verification link
                String verificationLink = "http://localhost:8080/WebDevNSBM/verification.jsp?token=" + verificationToken + "&email=" + uemail;

                // Send verification email with the link
                Verification.SendVerificationEmail(uemail, verificationLink);
                
                request.setAttribute("status", "success");
                request.setAttribute("lemail", uemail);
                request.setAttribute("userid", userId);
                
                dispatcher = request.getRequestDispatcher("verification.jsp");
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
    public static String GetUserIdByEmail(String email) 
    {
        String userID = "";
        
        try {
            // Establish a database connection and execute a query to get the user ID
            // Use a PreparedStatement to avoid SQL injection
            // Assuming users table has columns 'id' and 'uemail'
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(RegConnection.CONNECTION_URL, RegConnection.CONNECTION_NAME, RegConnection.CONNECTION_PASS);
            PreparedStatement pst = con.prepareStatement("SELECT id FROM users WHERE uemail = ?");
            pst.setString(1, email);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                userID = rs.getString("id");
            }
        } 
        catch (SQLException e) 
        {
            e.printStackTrace();
        } 
        catch (ClassNotFoundException e) 
        {
            e.printStackTrace();
        }

        return userID;
    }
    
    public static boolean IsEmailTaken(String email, Connection con) throws SQLException 
    {
        PreparedStatement pst = con.prepareStatement("SELECT COUNT(*) AS count FROM users WHERE uemail = ?");
        pst.setString(1, email);
        ResultSet rs = pst.executeQuery();
        rs.next();
        int count = rs.getInt("count");
        
        return count > 0;
    }
    
    public static void DeleteUserById(int userID)
    {
        try 
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(RegConnection.CONNECTION_URL, RegConnection.CONNECTION_NAME, RegConnection.CONNECTION_PASS);
            
            String tokenSql = "DELETE FROM usertokens WHERE user_id = ?";
            String userSql = "DELETE FROM users WHERE id = ?";
            
            try (PreparedStatement tokenPst = con.prepareStatement(tokenSql))
            {
                tokenPst.setInt(1, userID);
                tokenPst.executeUpdate();
            }
            catch (SQLException e)
            {
                e.printStackTrace();
            }
            finally
            {
                try (PreparedStatement userPst = con.prepareStatement(userSql))
                {
                    userPst.setInt(1, userID);
                    userPst.executeUpdate();
                }
                catch (SQLException e)
                {
                    e.printStackTrace();
                }
            }
        } 
        catch (SQLException e) 
        {
            e.printStackTrace();
        } 
        catch (ClassNotFoundException e) 
        {
            e.printStackTrace();
        }
    }
}