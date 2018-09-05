package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.operations;
import userbean.userbean;



@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      try
      {
    	  PrintWriter out=response.getWriter();
    	  response.setContentType("text/html");
  		userbean user=new userbean();
  		user.setUsername(request.getParameter("un"));
  		user.setPassword(request.getParameter("pwd"));
  		user.setFn(request.getParameter("fn"));
  		user.setLn(request.getParameter("ln"));
  		user.setEmail(request.getParameter("email"));
  		user.setDate(request.getParameter("dob"));
  		user.setGender(request.getParameter("gender"));
  		user.setPhno(  request.getParameter("phno") );
  		user.setPassout(Integer.parseInt(request.getParameter("pass")));
  		
  		operations.insert(user);
  		boolean loginstatus=user.isValid();
  	
  		if(loginstatus)
  		{
  			 HttpSession session=request.getSession();
  			 session.setAttribute("users", user);
  			
  			 response.sendRedirect("login.jsp"); 
  			 
  			 RequestDispatcher rd=request.getRequestDispatcher("CPage.jsp"); 
  			 rd.include(request, response);
  			 out.println("<script type=\"text/javascript\">");  
  			 out.println("alert(' Successfully Registered.') ");  
  			 out.println("</script>");

  		}
  		else
  		{
  			System.out.println(" Register Not success");
  			RequestDispatcher rd=request.getRequestDispatcher("register.jsp"); 
  		  rd.include(request, response);
  	    	 out.println("<script type=\"text/javascript\">");  
			 out.println("alert(' You Entered Username or Email is Already Exists. ') ");  
			 out.println("</script>");
  		
  		}
      }
  		catch(Exception e)
  		{
  			System.out.println(e);
  		}
      }
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException{
						
			}
}
	
