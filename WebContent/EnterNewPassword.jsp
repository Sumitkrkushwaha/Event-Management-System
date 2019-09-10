<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>New Password</title>
	<link rel="stylesheet" type="text/css" href="css/newPass.css">
</head>
<body>
	<div class="titu">
		<h2>Change Password</h2>
		<form action="UpdatePassword.jsp" id="usrform" method="POST">
			<p>New Password</p>
			<input type="text" placeholder="Enter new Password" name="newPass">
			<input type="submit" value="Change Password" >
			
		</form>
		
	</div>

</body>
</html>