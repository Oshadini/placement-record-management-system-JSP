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

   String vac_id=request.getParameter("vac_id");

   out.println(vac_id); 

   
   Connection conn=null;
   Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
   conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/placement?useTimezone=true&serverTimezone=UTC", "oshi", "polonnaruwa123");
   Statement st=conn.createStatement();
 

   ResultSet rs = st.executeQuery("select * from vacancy_availability where vacancy_id = '"+vac_id+"' ");
   try{   while(rs.next())
   {

%> 


             <h1>Vacancy Details</h1>
             <p>Vacancy-ID:</p>
             <input type = "text" name = "vacId" value =<%=rs.getString(1)%>><br>
             <p>Student Id:</p>
             <input type="text" name="studentId"  value =<%=rs.getString(2)%>>     
             <p>Company Name:</p>
                              
             <input type="text" name="companyName"  value =<%=rs.getString(3)%>>
             <p>Position</p>              
			 <input type="text" name="position" value =<%=rs.getString(4)%>>
             <p>Application Deadline:</p>
			 <input type="text" name="appDeadline" value =<%=rs.getString(5)%>>
			 <p>Vacancy Availability:</p>
			 <input type="text" name="vacAvai"  value =<%=rs.getString(6)%>>
			 </br>
			 <input type="submit" value="Back" name="back" formaction="studentHome.jsp">
<%

   }
   }catch(Exception e)
   {
	   out.println(e);
   }
  %>
  
 
  
  

</div>
</form>


</body>
</html>