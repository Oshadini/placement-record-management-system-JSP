<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.util.List"%>
    <%@ page import="java.sql.*,java.io.*,java.util.Iterator" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href = "style.css" type="text/css">
<title>Insert title here</title>
</head>
<body>
<form name="f" action="http://localhost:8080/TestServlet/adminLoginValidate.jsp" method="get">
<div class = box>
<h1> Admin Login</h1>

	<form name="f" action="http://localhost:8080/TestServlet/adminLoginvalidate.jsp" method="get">
		<p>ID</p> <input type="text" name="un" /><br>
		<br> <p>Password</p><input type="password" name="pw" /><br>
		<input type="submit" value="login"/>
	</form>


</div>
</form>

</body>
</html>