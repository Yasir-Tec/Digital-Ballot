<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
String host = "smtp.gmail.com";
String to = request.getParameter("to");    

String from = request.getParameter("from");

String subject = request.getParameter("subject");

String messageText = request.getParameter("messageText");

boolean sessionDebug = false;
// Create some properties and get the default Session.
Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol", "smtp");
props.setProperty("mail.transport.protocol", "smtp");     
props.setProperty("mail.host", "smtp.gmail.com");  
props.put("mail.smtp.auth", "true");  
props.put("mail.smtp.port", "465");  
props.put("mail.debug", "true");  
props.put("mail.smtp.socketFactory.port", "465");  
props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");  
props.put("mail.smtp.socketFactory.fallback", "false"); 

 Session mailSession = Session.getDefaultInstance(props, 
    new javax.mail.Authenticator(){
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(
            "mnale226@gmail.com", "7028459155");// Specify the Username and the PassWord
        }
  });
 // Set debug on the Session
 // Passing false will not echo debug info, and passing True will.

 mailSession.setDebug(sessionDebug);

// Instantiate a new MimeMessage and fill it with the
// required information.

Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setSentDate(new Date());
msg.setText(messageText);

// Hand the message to the default transport service
// for delivery.
Transport.send(msg);
out.println("Mail was sent to " + to);
out.println(" from " + from);
out.println(" using host " + host + ".");
%>
</table>
</body>
</html>