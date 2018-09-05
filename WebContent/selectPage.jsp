<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*"%>

<% 
	
	String user = request.getParameter("login");
	
    
    
	try{
 
  
    if(user != null) {
        if(user.equals("Admin")) {
           
            HttpSession hs=request.getSession();  
    		hs.setAttribute("un",user);
    
    		RequestDispatcher rd=request.getRequestDispatcher("AdminLogin.jsp");  
    		rd.include(request, response);
        }
         
        else if(user.equals("EmpId")) {
    
            HttpSession hs=request.getSession();  
    		hs.setAttribute("un",user);
    	
    		
    		RequestDispatcher rd=request.getRequestDispatcher("CPage.jsp");  
    		rd.include(request, response);
    		
            
        }
        
       
        else {
            out.println("Radio button  was not selected.<BR>");
        }
    }
    
	
	
}	catch (Exception e){
  out.print(e);
	}
	
	%>
</html>