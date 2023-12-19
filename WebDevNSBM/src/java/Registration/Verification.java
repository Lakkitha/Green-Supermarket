/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Registration;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

/**
 *
 * @author OMEN
 */
public class Verification 
{
    // Secret key for additional security
    private static final String SECRET_KEY = "GREEN";
    
    public static void SendVerificationEmail(String toEmail, String verificationLink) 
    {
        final String username = "kusalvbusiness@gmail.com";
        final String password = "AGktUTP1yKjZ2dam";
        final String fromEmail = "kusalvbusiness@gmail.com";

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp-relay.brevo.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new Authenticator() 
                {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        try 
        {
            System.setProperty("mail.debug", "true");
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail)); // Replace with your email
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            message.setSubject("Account Verification");
            message.setText("Dear User,\n\nPlease click the following link to verify your account:\n" + verificationLink);

            Transport.send(message);
            
            System.out.println("Verification email sent to: " + toEmail);
        } 
        catch (MessagingException e) 
        {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
    
    // Method to generate a time-sensitive hash based on the user's email
    public static String GenerateVerificationToken(String userEmail) {
        try 
        {
            // Combine the email, secret key, and current timestamp
            String dataToHash = userEmail + SECRET_KEY + System.currentTimeMillis();

            // Create a SHA-256 message digest
            MessageDigest md = MessageDigest.getInstance("SHA-256");

            // Update the digest with the byte representation of the data
            md.update(dataToHash.getBytes(StandardCharsets.UTF_8));

            // Get the digest bytes
            byte[] digestBytes = md.digest();

            // Encode the digest bytes using Base64
            String base64Encoded = Base64.getEncoder().encodeToString(digestBytes);

            return base64Encoded;
        } 
        catch (NoSuchAlgorithmException e) 
        {
            e.printStackTrace();
            return null;
        }
    }
    
    public static boolean IsValidToken(int userID, String verificationToken) 
    {
        String tokenInDB = GetVerificationToken(userID);
        
        return tokenInDB.equals(verificationToken);
    }
    
    public static String GetVerificationToken(int userID)
    {
        String ver_token = "";
        
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
            PreparedStatement pst = con.prepareStatement("SELECT verification_token FROM usertokens WHERE user_id = ?");
            
            pst.setInt(1, userID);
            ResultSet rs = pst.executeQuery();
            
            if (rs.next()) {
                ver_token = rs.getString("verification_token");
            }
        }
        catch (SQLException | ClassNotFoundException e)
        {
            e.printStackTrace();
        }
        
        return ver_token;
    }
    
    public static void StoreVerificationToken(int userID, String verificationToken)
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
            PreparedStatement pst = con.prepareStatement("UPDATE usertokens SET verification_token = ? WHERE user_id = ?");
            
            pst.setString(1, verificationToken);
            pst.setInt(2, userID);
            pst.executeUpdate();
        }
        catch (SQLException | ClassNotFoundException e)
        {
            e.printStackTrace();
        }
    }
    
    public static void UpdateVerificationStatus(String userEmail) 
    {
        try 
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
            PreparedStatement pst = con.prepareStatement("UPDATE users SET uverified = TRUE WHERE uemail = ?");

            pst.setString(1, userEmail);
            pst.executeUpdate();
        } 
        catch (SQLException | ClassNotFoundException e) 
        {
            e.printStackTrace();
        }
    }
    
    // Method to check verification status
    public static Boolean CheckVerificationStatus(String email)
    {
        boolean verified = false;

        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
            PreparedStatement pst = con.prepareStatement("SELECT uverified FROM users WHERE uemail = ?");
            pst.setString(1, email);
            ResultSet rs = pst.executeQuery();

            if (rs.next())
                verified = rs.getBoolean("uverified");

        } 
        catch (SQLException e) 
        {
            e.printStackTrace();
        } 
        catch (ClassNotFoundException e) 
        {
            e.printStackTrace();
        }

        return verified;
    }
}
