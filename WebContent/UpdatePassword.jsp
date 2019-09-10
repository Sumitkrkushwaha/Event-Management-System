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
String path = application.getInitParameter("path");
String dbid = application.getInitParameter("did");
String dbpass = application.getInitParameter("pass");

String newPass =(String)request.getParameter("newPass");
String email =(String)session.getAttribute("email");
Statement st=null;
Connection con=null;
ResultSet rs=null;

try{
	
	
	

Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection(path+"eventmanagement",dbid,dbpass);

st=(Statement) con.createStatement();

String qr = "UPDATE `users` SET `password`= '"+newPass+"' where email = '"+email+"'  ";

int c  = st.executeUpdate(qr);

if (c == 1){
	response.sendRedirect("SuccessPage.jsp?S=passchange");
}
else{
	response.sendRedirect("ErrorPage.jsp?S=passchange");
}
}


catch(ClassNotFoundException e1){
	 
	}


%>