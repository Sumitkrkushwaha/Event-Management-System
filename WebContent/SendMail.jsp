<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%
	String result;
	String to =(String)request.getParameter("to");
	String sub =(String)request.getParameter("sub");
	String msg =(String)request.getParameter("msg");
	

	String from = application.getInitParameter("Email");
	final String username = application.getInitParameter("username");
	final String password = application.getInitParameter("mailpass");

	String host = "localhost";

	Properties props = new Properties();
	props.put("mail.smtp.auth", "true");
	props.put("mail.smtp.starttls.enable", "true");
	props.put("mail.smtp.host", "smtp.gmail.com");
	props.put("mail.smtp.port", "587");


	Session mailSession = Session.getInstance(props,
			new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username,
							password);
				}
			});

	try {
		
		Message message = new MimeMessage(mailSession);

		message.setFrom(new InternetAddress(from));

		message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(to));

		message.setSubject(sub);

		message.setText(msg);

		Transport.send(message);

		System.out.println("Sent message successfully....");
		result = "Success";

	} catch (MessagingException e) {
		e.printStackTrace();
		result = "Fail";
		out.print(e);

	}
%>
<html>
<head>
<title>Send Email using JSP</title>
<link rel="stylesheet" type="text/css" href="css/n.css">
</head>
<body>
	<center>
		<h1>Email sent successfully.</h1>
	</center>
	<p align="center">
		<%
			out.println("Result: " + result + "\n");
		%>
	</p>
</body>
</html>