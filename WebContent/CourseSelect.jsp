<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*"%>

<% 
	

 
 
	try{
		HttpSession h5=request.getSession();  
		 String select=(String)h5.getAttribute("se");
			

    if(select != null) {
        if(select.equals("java")) {
           
            HttpSession hs=request.getSession();  
    		
    
    		RequestDispatcher rd=request.getRequestDispatcher("javaIns.jsp");  
    		rd.include(request, response);
        }
         
        else if(select.equals("net")) {
            
            HttpSession hs=request.getSession();  
    		
    	
    		
    		RequestDispatcher rd=request.getRequestDispatcher("netIns.jsp");  
    		rd.include(request, response);
    		
            
        }
        else if(select.equals("testing")) {
            
            HttpSession hs=request.getSession();  
    	
    	
    		
            RequestDispatcher rd=request.getRequestDispatcher("instructions.jsp");  
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