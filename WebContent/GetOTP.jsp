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
String email =(String)session.getAttribute("email");
String otp =(String)request.getParameter("OTP");
String path = application.getInitParameter("path");
String dbid = application.getInitParameter("did");
String dbpass = application.getInitParameter("pass");
String DBOTP = "";

Statement st=null;
Connection con=null;
ResultSet rs=null;

try{
	
	
	

Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection(path+"eventmanagement",dbid,dbpass);

st=(Statement) con.createStatement();

String qr = "Select * from forgetpassword where email = ('"+email+"') order by Date DESC";

rs = st.executeQuery(qr);
while(rs.next()){
DBOTP = rs.getString("code");
break;
}

out.print(DBOTP+"//"+otp);
if(DBOTP.equals(otp) ){
	
	response.sendRedirect("EnterNewPassword.jsp");
}

}


catch(ClassNotFoundException e1){
	 
	}
%>
