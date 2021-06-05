<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.io.*,javax.sql.*,java.text.SimpleDateFormat,java.util.Date" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%


String email = request.getParameter("uemail");

String pass = request.getParameter("upass");
String fullName = request.getParameter("ufullName");
String phone = request.getParameter("uphone");
String addrs = request.getParameter("uaddrs");
String dob = request.getParameter("udob");

String date = request.getParameter("udob");
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd"); // your template here
java.util.Date dateStr = formatter.parse(date);
java.sql.Date dateDB = new java.sql.Date(dateStr.getTime());





String gender = request.getParameter("ugender");


Connection conn=null;


 

try {

	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/placement?useTimezone=true&serverTimezone=UTC", "oshi", "polonnaruwa123");

    PreparedStatement ps = conn.prepareStatement("insert into basic_details(email_id,password,full_name,mobile_num,address,dob,gender) values(?,?,?,?,?,?,?)");


    ps.setString(1, email);

    ps.setString(2, pass);

    ps.setString(3, fullName);

    ps.setString(4, phone);

    ps.setString(5, addrs);

    ps.setDate(6, dateDB);
    ps.setString(7, gender);

    ps.executeUpdate();

    out.println("Data saved successfully");
    
    
    
	%>
	<jsp:forward page="studentHome.jsp" />
	<%
    
    
    
    
    
    
    

} catch (Exception e) {

    out.println(e);

} 
	

%>

</body>
</html>