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
<title>Insert title here</title>
<link rel="stylesheet" href = "style.css" type="text/css">
</head>
<body>
<div class = box>
	<form>
	
<table border='1' bgcolor="yellow" height="20%" width="100%">
      <tr><th>From Name</th><th>To Name</th><th>Message Date</th><th>Message</th><th>View</th></tr>

<% 


Connection conn=null;
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/placement?useTimezone=true&serverTimezone=UTC", "oshi", "polonnaruwa123");
Statement st=conn.createStatement();

ResultSet rs = st.executeQuery("select * from student_message");
%>


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

	
	</br>
	
	<% 
	
	
	
	
}






%>
	
</table>
</br>
<input type="submit" value="Back" name="back" formaction="adminHome.jsp">
</div>
</form>






</body>
</html>