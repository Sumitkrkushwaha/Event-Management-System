<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="css/n.css">
	<link rel="stylesheet" type="text/css" href="css/signup.css">
</head>
<body>
<%
String userid =(String)request.getParameter("id");
String path = application.getInitParameter("path");
String dbid = application.getInitParameter("did");
String dbpass = application.getInitParameter("pass");


Statement st=null;
Connection con=null;
ResultSet rs,r=null;

try{
	
	
	

Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection(path+"eventmanagement",dbid,dbpass);

st=(Statement) con.createStatement();

String qry = "SELECT * FROM `message` where userid ='"+userid+"'";
rs = st.executeQuery(qry);



while(rs.next()){
%><div class="titu">
<h4><%=(String)rs.getString("name")%></h4>Receiving Time:-<%=(String)rs.getString("date")%><br><h2><% 
out.print((String)rs.getString("message")+"<br>"); 
out.print((String)rs.getString("userid")+"<br>"); 

%></h2>
<%  %>
<br> 
</div><% 
}
}


catch(ClassNotFoundException e1){
	 
	}



%>
<div class="wrap">
		<h2>Admin Reply</h2>
		<form action="SendMail.jsp" id="usrform">
			<input type="text" placeholder="To" name="to" required>
			<input type="text" placeholder="Subject"  name="sub" required>
			<input type="text" placeholder="Your Reply" name="msg" required>

			<input type="submit" value="Submit">

			
		</form>
</div>


</body>
</html>