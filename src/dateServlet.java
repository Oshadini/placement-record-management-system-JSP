

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class dateServlet extends HttpServlet {
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession hs=request.getSession(true);
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		
		Date date=(Date)hs.getAttribute("date");
		
		if(date!=null)
		{
			
			pw.print("last acess:"+date+"<br>");
			
			
		}
		
		date=new Date();
		hs.setAttribute("date", date);//store session parameters
		pw.println("Current date"+date);		
		
		
	}

}
