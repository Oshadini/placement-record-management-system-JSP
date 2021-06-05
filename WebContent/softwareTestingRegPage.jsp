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
             <p>Full Name</p>              
			 <input type="text" name="ufullName"  placeholder = "full name">
			 <p>D.O.B</p>
			 <input type="text" name="udob"  placeholder = "YYYY-MM-DD">
			 <p>Email-ID:</p>
             <input type = "email" name = "uemail" placeholder = "user email"><br>   
             <p>Roll Number:</p>
			 <input type="text" name="uproll"  placeholder = "roll number">  
			 <p>Contact No:</p>
			 <input type="text" name="ucon"  placeholder = "phone number"> 
			 <p>Course name</p>              
			 <input type="text" name="ucourse"  placeholder = "course name">  
			 <p>Gender:</p>                       
			 <input type="text" name="ugender"  placeholder = "gender">
			 <p>Address:</p>
			 <input type="text" name="uaddrs"  placeholder = "address">
			 <p>Passsport/ic:</p>
			 <input type="text" name="upass"  placeholder = "passport/ic">
 			 <input type="submit" value="SignUp">
			 <input type="reset" value="Reset">
			
</form>
</div>

</body>
</html>