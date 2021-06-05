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
PreparedStatement ps = null;
Connection conn=null;

try{
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/placement?useTimezone=true&serverTimezone=UTC", "oshi", "polonnaruwa123");
Statement st=conn.createStatement();
//Object un = (application.getAttribute("username"));
//String uns = (String)application.getAttribute("username");
//out.println(uns);
//out.println(use);
String uid = request.getParameter("uid");
int studentId=Integer.parseInt(uid);
String uemail = request.getParameter("uemail");
String upass = request.getParameter("upass");
String ufullName = request.getParameter("ufullName");
String uphone = request.getParameter("uphone");
String uaddrs = request.getParameter("uaddrs");
String udob = request.getParameter("udob");
String ugender = request.getParameter("ugender");
out.println(studentId);

ps  = conn.prepareStatement("Update basic_details set student_id=?,email_id=?,password=?,full_name=?,mobile_num=?,address=?,dob=?,gender=? where student_id="+studentId);

ps.setInt(1, studentId);
ps.setString(2, uemail);
ps.setString(3, upass);
ps.setString(4, ufullName);
ps.setString(5, uphone);
ps.setString(6, uaddrs);
ps.setString(7, udob);
ps.setString(8, ugender);
ps.executeUpdate();



out.println("success");
%>

<h1>Student Profile</h1>
 
<p>Email-ID:</p>
<input type="text" name="uemail"   value = <%=uemail%>> 
<p>Password:</p>
<input type="password" name="upass"  value = <%=upass%>>     
<p>Full Name</p>              
<input type="text" name="ufullName"  value = <%=ufullName%>>
<p>Phone No:</p>
<input type="text" name="uphone"  value = <%=uphone%>>         
<p>Address:</p>
<input type="text" name="uaddrs"  value = <%=uaddrs%>>
<p>D.O.B</p>
<input type="text" name="udob"  value = <%=udob%>>
<p>Gender:</p>                       
<input type="text" name="ugender"  value = <%=ugender%>>



<%





}
catch(Exception e){
    System.out.print(e.getMessage());
}finally{
    //ps.close();
    conn.close();
}








%>

<input type="submit" value="Back" name="back" formaction="adminHome.jsp">
</div>
</form>
</body>
</html>