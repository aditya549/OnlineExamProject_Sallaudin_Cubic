package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Admindao;
import dao.logindao;
import userbean.userbean;
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		 HttpSession hs=request.getSession();  
 		 String login=(String)hs.getAttribute("un");
 		
		userbean user=new userbean();
		user.setUsername(request.getParameter("un"));
		user.setPassword(request.getParameter("pwd"));
		user.setHide(login);
				logindao.login(user);
				Admindao.login(user);
			boolean loginstatus=user.isValid();
			if(loginstatus)
			{
				HttpSession session=request.getSession(true);
				session.setAttribute("Ad", user);
				session.setAttribute("pwd", user);
				 RequestDispatcher rd=request.getRequestDispatcher("AdminView.jsp"); 
				  rd.include(request, response);
				 out.println("<script type=\"text/javascript\">");  
				 out.println("alert(' ! Admin Login Successfully. ");  
				 out.println("</script>");
				
			}else
			{

				RequestDispatcher rd=request.getRequestDispatcher("AdminLogin.jsp"); 
				  rd.include(request, response);
				 out.println("<script type=\"text/javascript\">");  
				 out.println("alert(' ! You have Entered Invalid Details , Please login with Valid Details.') ");  
				 out.println("</script>");
			}
			
			
		}
	
	
}
