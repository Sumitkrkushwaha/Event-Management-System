<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Inbox</title>
	<link rel="stylesheet" type="text/css" href="css/otp.css">

</head>
<body>

<%
String path = application.getInitParameter("path");
String dbid = application.getInitParameter("did");
String dbpass = application.getInitParameter("pass");


Statement st=null;
Connection con=null;
ResultSet rs=null;

try{
	
	
	

Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection(path+"eventmanagement",dbid,dbpass);

st=(Statement) con.createStatement();

String qry = "SELECT * FROM `message` group by userid";
rs = st.executeQuery(qry);

while(rs.next()){
%>
<div class="titu">
<h3><a href="adminMsgBox.jsp?id=<%=(String)rs.getString("userid")%>"><% 
out.print((String)rs.getString("name")+" "+(String)rs.getString("date")); 
 
%></a></h3> 
</div>
<% 
}
}


catch(ClassNotFoundException e1){
	 
	}



%>

</body>
</html>