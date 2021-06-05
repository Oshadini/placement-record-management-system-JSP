

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

public class dbValidateLogindb extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           
		
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();	
		
		String s1;
		s1=request.getParameter("un");
		
		String s2;
		s2=request.getParameter("pw");
		
		
		Connection conn=null;
		String url="jdbc:mysql://localhost:3306/";
		String dbname="ajp";
		String DBdriver="com.mysql.cj.jdbc.Driver";
		String userName="oshi";
		String password="polonnaruwa123";
		
		try {
		
		Class.forName(DBdriver).newInstance();
		conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login?useTimezone=true&serverTimezone=UTC", "oshi", "polonnaruwa123");
		
		PreparedStatement ps=conn.prepareStatement("insert into login values(?,?)");
	
		ps.setString(1,s1);
		ps.setString(2,s2);
		ps.executeUpdate();
		
		pw.println("successfully inserted");
		Statement st=conn.createStatement();
		
		ResultSet rs=st.executeQuery("select * from login");
		
		while(rs.next())
		{
			pw.println(rs.getString(1)+" "+" "+rs.getString(2));
			
		}
		
		conn.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		

		
		
		
	}

}
