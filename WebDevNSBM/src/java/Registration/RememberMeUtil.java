/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Registration;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author OMEN
 */
public class RememberMeUtil 
{
    public static boolean ValidateRememberMeToken(String token) 
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(RegConnection.CONNECTION_URL, RegConnection.CONNECTION_NAME, RegConnection.CONNECTION_PASS);
            PreparedStatement pst = con.prepareStatement("SELECT user_id FROM usertokens WHERE user_token = ?");
            pst.setString(1, token);

            ResultSet rs = pst.executeQuery();
            return rs.next(); // Return true if the token is found in the database
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
            return false;
        }
    }

    public static void LoginWithRememberMeToken(String token, HttpServletRequest request) 
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(RegConnection.CONNECTION_URL, RegConnection.CONNECTION_NAME, RegConnection.CONNECTION_PASS);
            PreparedStatement pst = con.prepareStatement("SELECT user_id FROM usertokens WHERE user_token = ?");
            pst.setString(1, token);

            ResultSet rs = pst.executeQuery();
            
            if (rs.next()) {
                String userID = rs.getString("id");
                String username = rs.getString("ufname");

                HttpSession session = request.getSession();
                session.setAttribute("uid", userID);
                session.setAttribute("uname", username);
            }
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
}
