<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>       
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp</title>
</head>
<body>

<%
String name =(String)request.getParameter("name");
String contact =(String)request.getParameter("contact");
String address =(String)request.getParameter("address");
String mail =(String)request.getParameter("email");
String pass =(String)request.getParameter("pass");
String sesid=session.getId();
String y = sesid.substring(4, 10);
String x = sesid.substring(13,14);
y=y.toLowerCase();
String uniqueId = x+y;

String path = application.getInitParameter("path");
String dbid = application.getInitParameter("did");
String dbpass = application.getInitParameter("pass");


Statement st=null;
Connection con=null;
ResultSet rs=null;

try{
	
	
	

Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection(path+"EventManagement",dbid,dbpass);

st=(Statement) con.createStatement();



String qry = "INSERT INTO `users`(`name`, `email`, `password`, `uniqueid`, `contactnum`, `address`) VALUES  ('"+name+"','"+mail+"','"+pass+"','"+uniqueId+"','"+contact+"','"+address+"')";

int c = st.executeUpdate(qry);

if ( c == 1 ){
response.sendRedirect("SuccessPage.jsp?S=SignUp");	
}

else{
	response.sendRedirect("ErrorPage.jsp?S=SignUp");	
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