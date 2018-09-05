<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Cubic IT Solutions</title>
</head>
<body>
<% 
try{

	
	int time=Integer.parseInt(request.getParameter("time"));

	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sallauddin","super");
	
	PreparedStatement pst=conn.prepareStatement("update setvalue set  settime=? where Id=? ");
	pst.setInt(1, time);
	pst.setInt(2, 1);
	
	int i=pst.executeUpdate();
	
	if(i==1)
	{

		%>
		<script> 
	    	  alert("Timer Successfully Updated");  
	    	 </script>
	    	 <%
		
		RequestDispatcher  rd =request.getRequestDispatcher("Set.jsp");
		rd.include(request, response);
	}
	else
	{
		%>
		<script> 
	    	  alert("Cutt Of Marks Not Updated");  
	    	 </script>
	    	 <%
		
		RequestDispatcher  rd =request.getRequestDispatcher("Set.jsp");
		rd.include(request, response);
	}
}
catch(Exception e){
	System.out.println(e);
}

%>


</body>
</html>