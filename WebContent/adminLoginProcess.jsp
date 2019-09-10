<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>       
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String email =(String)request.getParameter("email");
String pass =(String)request.getParameter("pass");
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



String qry = "SELECT * FROM `admin` where email = '"+email+"'";
rs = st.executeQuery(qry);
if (!rs.next() ) {
	response.sendRedirect("ErrorPage.jsp?S=adminInvalid");	
	} 
else {
	String name = (String)rs.getString("name");
	String p = (String)rs.getString("password");
	String mail = (String)rs.getString("email");
	String adminid = (String)rs.getString("adminid");
	
	if( p.equals(pass)){
		
		session.setAttribute("name",name);
		session.setAttribute("email",email);
		session.setAttribute("uniqueid",adminid);
		response.sendRedirect("adminInbox.jsp");
	}
	
	else {
		response.sendRedirect("ErrorPage.jsp?S=adminInvalid");	
	}


}


}


catch(ClassNotFoundException e1){
	 
	}

%>


</body>
</html>