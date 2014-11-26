/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.mail.*;
import java.util.*;
import javax.activation.*;
import javax.mail.internet.*;

/**
 *
 * @author bej0843
 */
@ManagedBean(name = "notifier")
@SessionScoped
public class UserNotifier {

    /**
     * Creates a new instance of UserNotifier
     */
    public UserNotifier() {
        
    }
    
    public void send_response(String clid,String building) {
        String studentemail = clid + "@louisiana.edu";
        String from = "brandinui@gmail.com";
        String host = "smtp.mandrillapp.com";
        Properties properties = System.getProperties();
        
        properties.setProperty("mail.smtp.host", host);
        properties.setProperty("mail.user", "brandinui@gmail.com");
        properties.setProperty("mail.password", "TWpe757ElMkJuzQ12sjjSA");
        
        Session session = Session.getDefaultInstance(properties);
        
        try{
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(studentemail));
            message.setSubject("Confirm Room Change.");
            message.setContent("<h1>Notice</h1>","notification.html");
            Transport.send(message);
            System.out.println("Message sent...");
        }catch(MessagingException mex){
            System.out.println(mex.getMessage());
        }
    }
    
}
