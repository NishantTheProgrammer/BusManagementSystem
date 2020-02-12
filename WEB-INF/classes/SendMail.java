import java.io.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class SendMail
{ 
    public static void send(String to, String sub, 
                         String msg, final String user,final String pass)
    { 
        //create an instance of Properties Class   
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");		
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(props,new javax.mail.Authenticator()
        {
            protected PasswordAuthentication getPasswordAuthentication()
            {
  	 	         return new PasswordAuthentication(user,pass); 
            }
        });
        try {     
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user, "Shivaji Bus"));
            message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
            message.setSubject(sub);
            // message.setText(msg);
            message.setContent("<center><h1>Shivaji Bus</h1><p>We received a request to reset your password<br>Enter the following password reset code</p><code style='background-color: gray; font-size: 30px; color: white; padding: 10px;'>"+msg+"</code></center>", "text/html");
            Transport.send(message);
        }
        catch(Exception e) {
    	     e.printStackTrace();
        }
    }  
}