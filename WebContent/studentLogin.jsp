
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
<%

    List l = (List) request.getAttribute("errorlist");
    if(l!=null){
	
	for(Iterator it = l.iterator();it.hasNext();)
	{
		
		String error = (String) it.next();


%>
<font color = "red">
<li> <%=error%></li>
</font>

<% 

	}
    }


%>





<form name="f" action="http://localhost:8080/TestServlet/studentLoginValidate.jsp" method="get">
<div class = box>
<h1> Login here</h1>

<p>ID</p>
<input type = "email" name = "uemail" placeholder = "user name" required = ""><br>

<p>Password</p>
<input type = "password" name = "upass" placeholder = "password" required = ""><br>

<input type = "submit" name = "login" value = "login">

</div>
</form>
</body>

</html>