

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class form extends HttpServlet {
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		
		
		
		String s1;
		s1=request.getParameter("a");
		int a=Integer.parseInt(s1);
		
		
		String s2;
		s2=request.getParameter("b");
		
		
		String s3;
		s3=request.getParameter("c");
		
		
		
		Connection conn=null;
		String url="jdbc:mysql://localhost:3306/";
		String dbname="ajp";
		String DBdriver="com.mysql.cj.jdbc.Driver";
		String userName="oshi";
		String password="polonnaruwa123";
		
		try {
		
		Class.forName(DBdriver).newInstance();
		conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/ajp?useTimezone=true&serverTimezone=UTC", "oshi", "polonnaruwa123");
		
		PreparedStatement ps=conn.prepareStatement("insert into student values(?,?,?)");
		ps.setInt(1,a);
		ps.setString(2,s2);
		ps.setString(3,s3);
		ps.executeUpdate();
		
		response.sendRedirect("http://localhost:8080/TestServlet/insertSucessful");
		
		pw.println("successful");
		Statement st=conn.createStatement();
		
		ResultSet rs=st.executeQuery("select * from student");
		
		while(rs.next())
		{
			pw.println(rs.getInt(1)+" "+rs.getString(2)+" "+" "+rs.getString(3));
			
		}
		
		conn.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		

		
	
		
		

		

}
}