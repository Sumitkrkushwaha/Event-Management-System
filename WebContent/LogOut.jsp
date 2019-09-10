<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
session.invalidate();

Cookie clientCookies[] = request.getCookies(); 
for( int i = 0; i < clientCookies.length; i++)     
{ 
	if(clientCookies[i].getName().equals("Log")){
		clientCookies[i].setValue("");
		clientCookies[i].setMaxAge(0);	        
     }    

}
//Just to be sure re initialse value
Cookie c=new Cookie("Log",""); 
c.setMaxAge(0);
response.addCookie(c);

response.sendRedirect("index.jsp");

%>
