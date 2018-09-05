<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.sql.*"%>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<%

try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sallauddin","super");
	   
	    
	    	int count=0;
	    	int i=0;
	    	
	    	 String[] s; 
	    	
	    	   s = request.getParameterValues("colors[]");
	    	   if (s != null) 
	    	   {
	    	      for (i = 0; i < s.length; i++) 
	    	      {
	    	         
	    	         
	    	      	PreparedStatement pst5=con.prepareStatement("DELETE  FROM UserDetails WHERE username=?");
	    	    	pst5.setString(1,s[i]);
	    	    	ResultSet rs=pst5.executeQuery();
	    	      }
	    	      
	    	      %>
	        	  <script type="text/javascript">
	        	  alert("Account Sucessfully Deleted.")
	             </script>
	        	<% 
		    	   RequestDispatcher rd=request.getRequestDispatcher("deletehere.jsp"); 
		   		   rd.include(request, response);
	    	     
	    	   }
	    	   else 
	    		   {
	    		   
	    		   %>
		        	  <script type="text/javascript">
		        	  alert("Account  Not Deleted.")
		             </script>
		        	<% 
	    		   
	    		   
	    		   RequestDispatcher rd=request.getRequestDispatcher("deletehere.jsp"); 
			   		  rd.include(request, response);
	    		   out.println ("<b>none<b>");
	    		   }
	    	   if(s!=null)
	    	   {
	    		   
	    	   }
}
catch(Exception e)
{
	System.out.print(e);
}
	    	%>
	    	


</body>
</html>