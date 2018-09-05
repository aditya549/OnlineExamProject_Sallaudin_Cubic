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

import dao.Javadao;
import dao.Questions;
import dao.logindao;
import userbean.userbean;


@WebServlet("/JavaQuestions")
public class JavaQuestions extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try
		{
			PrintWriter out=response.getWriter();
			response.setContentType("text/html");
			userbean user=new userbean();
			
		    
			user.setQuestions(request.getParameter("qn"));
			user.setOpt1(request.getParameter("1"));
			user.setOpt2(request.getParameter("2"));
			user.setOpt3(request.getParameter("3"));
			user.setOpt4(request.getParameter("4"));
			user.setAnswer(request.getParameter("an"));
			Javadao.AddJ(user);
			boolean req=user.isValid();
			
			if(req)
			{
				RequestDispatcher rd=request.getRequestDispatcher("Add1.jsp");  
	    		rd.include(request, response);
	    		out.println("<script type=\"text/javascript\">");  
	    		 out.println("alert(' Question Added.') ");  
	    		 out.println("</script>");
	    		
			}
			else
			{
			
				RequestDispatcher rd=request.getRequestDispatcher("500error.jsp");  
	    		rd.include(request, response);
	    		System.out.println("Question will be Added.");
	    		out.println("<script type=\"text/javascript\">");  
	    		 out.println("alert(' Question  Not Added.') ");  
	    		 out.println("</script>");
	    		
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
		
		
		
	}

}
