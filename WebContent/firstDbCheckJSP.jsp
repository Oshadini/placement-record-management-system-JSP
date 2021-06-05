<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.io.*" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

Connection conn=null;
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login?useTimezone=true&serverTimezone=UTC", "oshi", "polonnaruwa123");
Statement st=conn.createStatement();
String username = request.getParameter("un");
ResultSet rs = st.executeQuery("select * from login");
while(rs.next())
{
	if(username.equals(rs.getString(1)))
			{
		
		       out.println("The student is existing with name"+username);
		       out.println("UN"+rs.getString(1));
		       break;
		    
			}
	
}
conn.close();

%>


</body>
</html>