

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class insertSuccessful extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		   response.setContentType("text/html");
		   PrintWriter pw=response.getWriter();
		   
		   
		   try {
			   
			   
			   Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			   Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/student?useTimezone=true&serverTimezone=UTC", "oshi", "polonnaruwa123");
			   pw.println("<h1>Insert Successfully.....</h1>");
			   
			   Statement st=conn.createStatement();
			   
			   ResultSet rs = st.executeQuery("select * from student");
			   
			   pw.println("SNO"+"\t"+"SNAME"+"\t"+"DEPT.");
			   pw.println("==================");
			   
			   while(rs.next())
				   
			   {
				   System.out.println(rs.getInt(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3));
				   
			   }
			   
			   
				
			   
			   
		 
		
		
		   }catch(Exception e) {
			   
			   
			   
			   
		   }
		   
		   
	}}
	


