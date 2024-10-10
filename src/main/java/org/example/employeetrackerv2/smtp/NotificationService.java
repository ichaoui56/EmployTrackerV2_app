package org.example.employeetrackerv2.smtp;

import jakarta.mail.*;
import jakarta.mail.internet.*;
import java.util.Properties;

public class NotificationService {

    public void sendEmail(String recipientEmail, String subject, String messageContent) {
        // Check if the recipient email is null or empty to avoid NullPointerException
        if (recipientEmail == null || recipientEmail.isEmpty()) {
            System.err.println("Recipient email is null or empty.");
            return;
        }

        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");

        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("ilyaschaoui2002@gmail.com", "pjet ilem deya ybmh");
            }
        });

        try {
            Message emailMessage = new MimeMessage(session);
            emailMessage.setFrom(new InternetAddress("ilyaschaoui2002@gmail.com"));
            System.out.println("email raaa kayn");
            emailMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
            emailMessage.setSubject(subject);

            emailMessage.setText(messageContent);
            Transport.send(emailMessage);
            System.out.println("Email sent successfully to: " + recipientEmail);
        } catch (MessagingException e) {
            System.err.println("Failed to send email: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
