

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.awt.*;

public class validateLogin extends HttpServlet {
	

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unlikely-arg-type")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           
		boolean isUser=false;
		
		
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		
		
		
		String s1,s2;
		s1=request.getParameter("un");
		s2=request.getParameter("pw");
		
		
		
		String array[][] = { 
				{"aaaa","1111"},
				{"bbbb","2222"},
				{"cccc","3333"},
				{"dddd","4444"},
				
				
		};
		  
		
		
		for (int i = 0; i < array.length; i++) {
			
	
				if(s1.equals(array[i][0]) && s2.equals(array[i][1]))
				{
					
					isUser=true;
					break;
				}
			
				
	}
		
		
		if(isUser)
		{
			pw.println("successful");
			pw.println("welcome"+s1);
			
		}
		else {
			
			
			pw.println("invalid");
			
		}
		
		

	}
	
}
