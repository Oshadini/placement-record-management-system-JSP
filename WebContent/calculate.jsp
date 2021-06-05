<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%! int a,b; %>


<% 
  a=Integer.parseInt(request.getParameter("a"));
  b=Integer.parseInt(request.getParameter("b"));

%>



<p>Addition<%=a+b %></p>
<p>Substraction<%=a-b %></p>
<p>Mul<%=a*b %></p>
<p>Div<%=a/b %></p>


</body>
</html>