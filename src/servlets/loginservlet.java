package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.logindao;
import userbean.userbean;
@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		 try {
			 PrintWriter out=response.getWriter();
			 response.setContentType("text/html");
			 
		userbean user=new userbean();
		user.setUsername(request.getParameter("un"));
		user.setPassword(request.getParameter("pwd"));
		
			logindao.login(user);
			
			boolean loginstatus=user.isValid();
			if(loginstatus)
			{
				
				HttpSession session=request.getSession(true);
				session.setAttribute("us", user);
				session.setAttribute("pwd", user);
				 HttpSession h5=request.getSession();  
		 		 String select=(String)h5.getAttribute("select");
			
		 		 RequestDispatcher rd=request.getRequestDispatcher("CourseSelect.jsp"); 
	  			 rd.include(request, response);
				
	  			
	  			
				
			}else{
				
				 RequestDispatcher rd=request.getRequestDispatcher("CPage.jsp"); 
				  rd.include(request, response);
				 out.println("<script type=\"text/javascript\">");  
				 out.println("alert(' ! You have Entered Invalid Details , Please login with valid Details.') ");  
				 out.println("</script>");
	    		
			}
			
			
		}catch(Exception e)
		 {
			System.out.println(e);
		 }
		
	}

}
