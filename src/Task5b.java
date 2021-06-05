

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Task5b extends HttpServlet {
		
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		
		String s1,s2;
		s1=request.getParameter("un");
		s2=request.getParameter("pw");
		if(s1.equals("admin") && s2.equals("admin"))
		{
			pw.println("welcome "+s1);
		}else {
			
			pw.println("login is not successsfull");
		}
		
   }

}
