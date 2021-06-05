<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id = "acc" class = "Account" scope = "session"/>


<jsp:setProperty property="accName" name="accName" value='<%request.getParameter("accName"); %>' />

<jsp:getProperty property="accName" name="accName" value='<%request.getParameter("accName"); %>' />


<% 

//Account acc = new Account();

//acc.setAccNo(Integer.parseInt(request.getParameter("accNo")));
//acc.setAccName(request.getParameter("accName"));
//acc.setAccBal(Double.parseDouble(request.getParameter("accBal")));

//out.println(acc.getAccNo());//
//out.println(acc.getClass());
//out.println(//acc.getAccBal());







%>





</body>
</html>