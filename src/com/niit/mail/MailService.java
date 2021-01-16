package com.niit.mail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;

public class MailService {

	public static void MailSending(String email) {	
		
		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.socketFactory.port", "465");
		prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.port", "465");
		
		
		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator(){
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("ysoni1615@gmail.com", "luvU_Family");
				}
		});
		
		try {
		MimeMessage message1 = new MimeMessage(session);
		message1.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
		message1.setSubject("test message");
		message1.setText("thank you for registration");
		Transport.send(message1);
		
		
		
		
		
		}
		
		catch(MessagingException e) {throw new RuntimeException(e); }
		

	}

}
