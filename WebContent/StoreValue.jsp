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
<<title> Cubic IT Solutions</title>
</head>
<body>
<% 
try{

	
	int marks=Integer.parseInt(request.getParameter("marks"));

	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sallauddin","super");
	
	PreparedStatement pstmt=conn.prepareStatement("select setmarks  from setvalue where Id=? ");
	pstmt.setInt(1, 1);
	
	ResultSet rs=pstmt.executeQuery();
	boolean req=rs.next();
    if(req)
    {
    	PreparedStatement pst=conn.prepareStatement("update setvalue set  setmarks=? where Id=? ");
    	pst.setInt(1, marks);
    	pst.setInt(2, 1);
    	
    	int i=pst.executeUpdate();
    	
    	if(i==1)
    	{

    		%>
    		<script> 
    	    	  alert("Cutt Of Marks Successfully Updated");  
    	    	 </script>
    	    	 <%
    		
    		RequestDispatcher  rd =request.getRequestDispatcher("Set.jsp");
    		rd.include(request, response);
    	}
    	
    	
    }
    else
    {
    	PreparedStatement pst1=conn.prepareStatement("insert into  setvalue (Id,setmarks,settime) values(?,?,?) ");
    	pst1.setInt(1,1);
    	pst1.setInt(2, marks);
    	pst1.setInt(3, 10);
    	int i=pst1.executeUpdate();
    	
    	if(i==1)
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
}

catch(Exception e){
	System.out.println(e);
}

%>


</body>
</html>