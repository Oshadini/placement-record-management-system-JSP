<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href = "style.css" type="text/css">
<title>Insert title here</title>
</head>
<body>
<div class = box>
<form name="f" action="http://localhost:8080/TestServlet/studentRegIns.jsp" method="get">


             <h1>Welcome User Please fill the detail below</h1>
             <p>Email-ID:</p>
             <input type = "text" name = "uemail" placeholder = "user name"><br>
             <p>Create Password:</p>
             <input type="password" name="upass"  placeholder = "password">     
             <p>Confirm Password:</p>
             <input type="password" name="upass2"  placeholder = "password">
             <p>Full Name</p>              
			 <input type="text" name="ufullName"  placeholder = "full name">
             <p>Phone No:</p>
			 <input type="text" name="uphone"  placeholder = "phone number">         
			 <p>Address:</p>
			 <input type="text" name="uaddrs"  placeholder = "address">
			 <p>D.O.B</p>
			 <input type="text" name="udob"  placeholder = "YYYY-MM-DD">
			 <p>Gender:</p>                       
			 <input type="text" name="ugender"  placeholder = "gender">
 			 <input type="submit" value="SignUp">
			 <input type="reset" value="Reset">
			 
			 <h4>If already registered</h4><a href="studentLogin.jsp">Sign In</a>
			 


</form>
</div>
</body>
</html>