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
<form name="f" action="http://localhost:8080/TestServlet/adminstudentProfileDetailsDelete.jsp" method="get">
<div class = box>
<%  



//String use = session.getAttribute("data").toString();

//out.println(//use);

Connection conn=null;
PreparedStatement ps = null;


try{
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/placement?useTimezone=true&serverTimezone=UTC", "oshi", "polonnaruwa123");
Statement st=conn.createStatement();
//Object un = (application.getAttribute("username"));
int studentId = (Integer)application.getAttribute("studentId");
out.println(studentId);
//out.println(use);

ps  = conn.prepareStatement("DELETE FROM `basic_details` WHERE `student_id` = (?)");

ps.setInt(1, studentId);
ps.executeUpdate();

%>

 <h1>Student Profile</h1>
             <p>Email-ID:</p>
             <input type="text" name="upass"  placeholder = "deleted" > 
             <p>Password:</p>
             <input type="password" name="upass" placeholder = "deleted">     
             <p>Full Name</p>              
			 <input type="text" name="ufullName"  placeholder = "deleted">
             <p>Phone No:</p>
			 <input type="text" name="uphone" placeholder = "deleted">         
			 <p>Address:</p>
			 <input type="text" name="uaddrs" placeholder = "deleted">
			 <p>D.O.B</p>
			 <input type="text" name="udob" placeholder = "deleted">
			 <p>Gender:</p>                       
			 <input type="text" name="ugender" placeholder = "deleted">
             <input type="submit" value="Back" name="back" formaction="adminHome.jsp">




<%



}
catch(Exception e){
    System.out.print(e.getMessage());
}finally{
    ps.close();
    conn.close();
}



%>


</div>
</form>
</body>
</html>