<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String Success = request.getParameter("S");
String Msg1 = "Something Wrong";
String Msg2 = "";
if(Success.equals("SignUp")){
	Msg1 ="SignUp successfull";
	Msg2="<a href='login.html'>TryLogin</a>";
}
if(Success.equals("enquire")){
	Msg1 ="Your response is recorded. <br> We will come back to you shortly....";
	Msg2="<a href='index.jsp'>Go To Home Page</a>";
}
if(Success.equals("feedback")){
	Msg1 ="Your response is recorded. <br> Thank You for your valuable feedback....";
	Msg2="<a href='index.jsp'>Go To Home Page</a>";
}
if(Success.equals("mailsend")){
	Msg1 ="Mail Send Successfully";
	Msg2="<a href='index.jsp'>Go To Home Page</a>";
}
if(Success.equals("passchange")){
	Msg1 ="Password Changed";
	Msg2="<a href='login.html'>Try Login</a>";
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