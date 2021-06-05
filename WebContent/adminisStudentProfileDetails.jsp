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
<div class = box>
<form name="f" action="http://localhost:8080/TestServlet/adminstudentProfileDetailsSearch.jsp" method="get">


             <h1>Student Profile</h1>
             
             <p>Student-ID:</p>
             <input type="text" name="ustudentId"  > 
             <p>Email-ID:</p>
             <input type="text" name="uemail" > 
             
            


 
             <p>Password:</p>
             <input type="password" name="upass"  placeholder = "password" >     
             <p>Full Name</p>              
			 <input type="text" name="ufullName"   >
             <p>Phone No:</p>
			 <input type="text" name="uphone"  >         
			 <p>Address:</p>
			 <input type="text" name="uaddrs" >
			 <p>D.O.B</p>
			 <input type="text" name="udob"  >
			 <p>Gender:</p>                       
			 <input type="text" name="ugender"  >
             <input type="submit" value="Search"/>
             
             <input type="submit" value="Update" name="Update" formaction="adminStudentProfileUpdate.jsp">         

     

</div>
</form>



</body>
</html>