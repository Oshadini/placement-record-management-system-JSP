<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href = "style.css" type="text/css">
<title>Main Page</title>
</head>
<body>
<div class = box>

<form name="f" action="http://localhost:8080/TestServlet/adminisLogin.jsp" method="get">
<input type= "submit" name = "submit" value = "Admin Login"><br>
</form>
<form name="f" action="http://localhost:8080/TestServlet/studentReg.jsp" method="get">
<input type= "submit" name = "submit2" value = "Student Register">
</form>

</div>
</body>
</html>