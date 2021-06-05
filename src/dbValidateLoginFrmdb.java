

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


public class dbValidateLoginFrmdb extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		
		
	
		
		
		Connection conn=null;
		String url="jdbc:mysql://localhost:3306/";
		String dbname="ajp";
		String DBdriver="com.mysql.cj.jdbc.Driver";
		String userName="oshi";
		String password="polonnaruwa123";
		
		try {
		
		Class.forName(DBdriver).newInstance();
		conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login?useTimezone=true&serverTimezone=UTC", "oshi", "polonnaruwa123");
		
		String username = request.getParameter("un");
		
		Statement st=conn.createStatement();
		
		ResultSet rs = st.executeQuery("select * from login");
		

		
		while(rs.next())
		{
			if(username.equals(rs.getString(1)))
					{
				
				       pw.println("The student is existing with name"+username);
				       pw.println("UN"+rs.getInt(1));
				       pw.println("Password"+rs.getInt(2));
				       break;
				      
				
					}
			
		}
		
		conn.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		

		
		
		
		
		
		
		
		
	}



	

}
