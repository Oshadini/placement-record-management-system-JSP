<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.io.*,java.util.List,java.util.LinkedList" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href = "style.css" type="text/css">
<title>Insert title here</title>
</head>
<body>
<form>

<%

Connection conn=null;
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/placement?useTimezone=true&serverTimezone=UTC", "oshi", "polonnaruwa123");
Statement st=conn.createStatement();
String username = request.getParameter("uemail");
String password = request.getParameter("upass");
ResultSet rs = st.executeQuery("select * from basic_details");

List l = new LinkedList();


while(rs.next())
{
	
	if(username.equals(rs.getString(2)) && password.equals(rs.getString(3)))
	{
	%>
	<jsp:forward page="studentHome.jsp" />
	<%
	
	}
	else{
		
	    //out.println("Login Failed,Please try Again");
	    		%>
	    <div class = box>
	    
	    <h2>Login Failed,Please try Again </h2>
	    <h1> Login here</h1>

	    <p>ID</p>
	    <input type = "email" name = "uemail"><br>

	    <p>Password</p>
	    <input type = "password" name = "upass"><br>

	    <input type="submit" value="login" name="back" formaction="studentLogin.jsp">

	    </div> 		
	    		
	    		
	    		
	   
	    //request.setAttribute("errorlist",l);

	   	<% 	   
	 
	}
	
	
}







conn.close();

%>




</form>
</body>
</html>