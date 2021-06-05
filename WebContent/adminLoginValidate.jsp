<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String s1,s2;
s1=request.getParameter("un");
s2=request.getParameter("pw");
if(s1.equals("admin") && s2.equals("admin"))
{
	%>
	<jsp:forward page="adminHome.jsp" />
	<%
}else {
	
	out.println("login is not successsfull");
}


%>



</body>
</html>