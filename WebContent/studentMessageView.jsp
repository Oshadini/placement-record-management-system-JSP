<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
            <%@ page import="java.util.List,java.util.LinkedList,java.lang.Object" %> 
            <%@ page import="java.sql.*,java.io.*,javax.sql.*,java.text.SimpleDateFormat,java.util.Date" %> 
            <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%><%@page import="java.sql.Connection"%>   
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href = "style.css" type="text/css">
<title>Insert title here</title>
</head>
<body>
<form>
<div class = box>

<% 


Connection conn=null;
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/placement?useTimezone=true&serverTimezone=UTC", "oshi", "polonnaruwa123");
Statement st=conn.createStatement();
//Object un = (application.getAttribute("username"));
String uns = (String)application.getAttribute("username");
out.println(uns);
String user_id = (String)application.getAttribute("user_id");
out.println(user_id);

ResultSet rs = st.executeQuery("select * from student_message where student_id = '"+user_id+"' ");
%>
<table border='1' bgcolor="yellow" height="20%" width="100%">
<tr><th>From Name</th><th>To Name</th><th>Message Date</th><th>Message</th><th>View</th></tr>
<%
while(rs.next()){
	
%>


	
	
	<tr>
	
	
	<td><%out.println(rs.getString(3));%></td>
    <td><%=rs.getString(4)%></td>
	<td><%=rs.getString(5)%></td>
	<td><%=rs.getString(6)%></td>
	
	<td><a href="studentMessageDetailsView.jsp">View</a></td>

	
	</tr>
	
	

  
    







<% 

}
%>
</table>
  </br>
    <input type="submit" value="Back" name="back" formaction="studentHome.jsp">
</div>
</form>
</body>
</html>