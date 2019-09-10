<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String Success = request.getParameter("S");
String Msg1 = "";
String Msg2 = "";
if(Success.equals("SignUp")){
	Msg1 ="SignUp Fail";
	Msg2="<a href='SignUp.html'>Try Again</a>";
}
if(Success.equals("enquire")){
	Msg1 ="Somthing Went Wrong Try Again";
	Msg2="<a href='enquire.html'>Try Again</a>";
}
if(Success.equals("feedback")){
	Msg1 ="Somthing Went Wrong Try Again";
	Msg2="<a href='feedBack.html'>Try Feedback Again</a>";
}
if(Success.equals("mailsend")){
	Msg1 ="Mail Send Fail";
	Msg2="<a href='index.jsp'>Go To Home Page</a>";
}
if(Success.equals("Login")){
	Msg1 ="Invalid Email Or Password";
	Msg2=" <a href='SignUp.html'>Try Sign up</a>  <br> <a href='login.html'>Try Login again</a> ";
}
if(Success.equals("NotLogin")){
	Msg1 ="You need to login or singup";
	Msg2=" <a href='SignUp.html'>Try Sign up</a>  <br> <a href='login.html'>Try Login</a> ";
}
if(Success.equals("passchange")){
	Msg1 ="Unable to change pass";
	Msg2="<a href='index.jsp'>Go To Home</a>";
}
if(Success.equals("invalidEmail")){
	Msg1 ="Invalid Email";
	Msg2="<a href='index.jsp'>Try Again</a>";
}
if(Success.equals("adminInvalid")){
	Msg1 ="Invalid Email or password";
	Msg2="<a href='adminLogin.jsp'>Try Again</a>";
}





%>
<html>
<head>
	<title>pop up</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="css/n.css">
</head>
<body>
	<div class="titu">
		<h1><%=Msg1%></h1><br/>
		<h3><%=Msg2%></h3> 
	</div>

</body>
</html>