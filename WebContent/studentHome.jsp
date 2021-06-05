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
<div class = box>
<% 
String username = request.getParameter("uemail");
String password = request.getParameter("upass");
%>
<h3>
<% 
out.println("Welcome  "+username);
%>
</h3>

<% 

 application.setAttribute("username",username);
     // session.setAttribute("data", username);
     // response.sendRedirect("studentProfile.jsp");
     
     
     
   

Connection conn=null;
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/placement?useTimezone=true&serverTimezone=UTC", "oshi", "polonnaruwa123");
Statement st=conn.createStatement();

ResultSet rs = st.executeQuery("select student_id from basic_details where email_id = '"+username+"'");




while(rs.next())
{
	
       String user_id = (rs.getString(1));
       
       //out.println(user_id);

       application.setAttribute("user_id",user_id);	   
	    
	
	
	
}







conn.close();

%>
     
     
     



<input type="submit" value="Profile" name="Profile" formaction="studentProfile.jsp">
<input type = "submit" name = "Vacancy Details" value = "Vacancy Details" formaction="studentVacancyDetails.jsp">
<input type = "submit" name = "Message View" value = "Message View" formaction="studentMessageView.jsp" >
<input type = "submit" name = "Main" value = "Main" formaction="main.jsp" >

</div>
</form>
</body>
</html>