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



//String use = session.getAttribute("data").toString();

//out.println(//use);

Connection conn=null;
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/placement?useTimezone=true&serverTimezone=UTC", "oshi", "polonnaruwa123");
Statement st=conn.createStatement();
//Object un = (application.getAttribute("username"));
String uns = (String)application.getAttribute("username");
//out.println(uns);
//out.println(use);
ResultSet rs = st.executeQuery("select * from basic_details where email_id = '"+uns+"' ");
//out.println(rs);


try{while(rs.next())
{
    %>

             <h1>Student Profile</h1>
             <p>Email-ID:</p>
             <input type="text" name="upass"  placeholder = "password" value =<%=rs.getString(2)%> > 
             <p>Password:</p>
             <input type="password" name="upass"  placeholder = "password" value =<%=rs.getString(3)%>>     
             <p>Full Name</p>              
			 <input type="text" name="ufullName"  placeholder = "full name" value =<%=rs.getString(4)%>>
             <p>Phone No:</p>
			 <input type="text" name="uphone"  placeholder = "phone number" value =<%=rs.getString(5)%>>         
			 <p>Address:</p>
			 <input type="text" name="uaddrs"  placeholder = "address" value =<%=rs.getString(6)%>>
			 <p>D.O.B</p>
			 <input type="text" name="udob"  placeholder = "dob" value =<%=rs.getString(7)%>>
			 <p>Gender:</p>                       
			 <input type="text" name="ugender"  placeholder = "gender" value =<%=rs.getString(8)%>>
			 
             </br>
             <input type="submit" value="Back" name="back" formaction="studentHome.jsp">


    <%
}

} catch(Exception e){
	
	out.println(e);
	
}


%>


</div>

</form>

</body>
</html>