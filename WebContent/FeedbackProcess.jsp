<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>       
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
     <%@page import="java.text.SimpleDateFormat"%>

<%@ page import = "java.util.*" %>
      <%@ page import="java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp</title>
</head>
<body>

<%
String name =(String)request.getParameter("name");
String email =(String)request.getParameter("email");
String msg =(String)request.getParameter("msg");
String userid =(String)session.getAttribute("uniqueid");

String sesid=session.getId();

String from = application.getInitParameter("Email");
final String username = application.getInitParameter("username");
final String password = application.getInitParameter("mailpass");

String path = application.getInitParameter("path");
String dbid = application.getInitParameter("did");
String dbpass = application.getInitParameter("pass");

Date date = new Date();
SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String dates =formatter.format(date);
Statement st=null;
Connection con=null;
ResultSet rs=null;

try{
	
	
	

Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection(path+"EventManagement",dbid,dbpass);

st=(Statement) con.createStatement();

if (userid != null){


String qry = "INSERT INTO `feedback`(`Name`, `Email`, `Feedback`, `userId`) VALUES   ('"+name+"','"+email+"','"+msg+"','"+userid+"')";

int c = st.executeUpdate(qry);

if ( c == 1 ){
	out.print("Success");
response.sendRedirect("FeedBackMail.jsp?to="+email+"&&fd=1");
	
}

else{
	response.sendRedirect("ErrorPage.jsp?S=feedback");
		
}
}

else {
	response.sendRedirect("ErrorPage.jsp?S=NotLogin");
}
}


catch(ClassNotFoundException e1){
	out.print(e1);	
	}
catch(SQLException e1){ 	
	out.print(e1);
}
catch(NullPointerException e){
	out.print(e);
}
catch(Exception ex){
	out.print(ex);
}



%>


</body>
</html>