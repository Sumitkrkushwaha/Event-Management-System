<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.text.SimpleDateFormat"%>
<%@ page import = "java.util.*" %>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
      <%@ page import="java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>

<%
String sesid=session.getId();
String x = sesid.substring(3,4);
String y = sesid.substring(11,12);
Random rand = new Random();
int num = rand.nextInt(90000) + 10000;

String code = x+y+num;



String email =(String)request.getParameter("email");
session.setAttribute("email", email);
String path = application.getInitParameter("path");
String dbid = application.getInitParameter("did");
String dbpass = application.getInitParameter("pass");

Date date = new Date();
SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String dates =formatter.format(date);


String SendMail = "No";



Statement st=null;
Connection con=null;
ResultSet rs=null;

try{
	
	
	

Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection(path+"eventmanagement",dbid,dbpass);

st=(Statement) con.createStatement();

String qr = "Select * from users where email = ('"+email+"')";

rs = st.executeQuery(qr);

if (rs != null){


String qry = "INSERT INTO `forgetpassword`(`email`, `code`, `Date`) VALUES  ('"+email+"','"+code+"','"+dates+"')";

int c = st.executeUpdate(qry);

if(c == 1){
SendMail = "Go";
}
}
}


catch(ClassNotFoundException e1){
	 
	}

if(SendMail == "Go"){
String result;
String to = email;

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

	message.setSubject("Forget Password");

	message.setText("Here is your one time password "
			+ code);

	Transport.send(message);

	System.out.println("Sent message successfully....");
	result = "Sent OTP successfully....";

} catch (MessagingException e) {
	e.printStackTrace();
	result = "Error: unable to send message....";
	out.print(e);

}



%>

<head>
	<title>otp page</title>
	<link rel="stylesheet" type="text/css" href="css/otp.css">
</head>
<body>
	<div class="titu">
		<h2>OTP Verification</h2>
		<form action="GetOTP.jsp" id="usrform" method="POST">
			<input type="text" placeholder="  Enter OTP" name="OTP">
			<input type="submit" value="Submit">
		</form>
		
	</div>

</body>
</html>

<%
	}
else {
	response.sendRedirect("ErrorPage.html?S=invalidEmail");

	}
%>