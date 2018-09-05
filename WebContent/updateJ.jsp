<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%

try{
	
	int id=Integer.parseInt(request.getParameter("qn"));
	String qu=request.getParameter("qu");
	String o1=request.getParameter("o1");
	String o2=request.getParameter("o2");
	String o3=request.getParameter("o3");
	String o4=request.getParameter("o4");
	String o5=request.getParameter("o5");
	String ans=request.getParameter("ans");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "sallauddin", "super");
	PreparedStatement pst=cn.prepareStatement("update JavaQ set questions=?, option1=?,option2=?, option3=? ,option4=? ,answer=? where qno=?");
	pst.setString(1, qu);
	pst.setString(2, o1);
	pst.setString(3, o2);
	pst.setString(4, o3);
	pst.setString(5, o4);
	pst.setString(6, ans);
	pst.setInt(7, id );
	
	int i=pst.executeUpdate();
	if(i==1){
		
		%>
		<script> 
	    	  alert("Question Successfully Updated.");  
	    	 </script>
	    	 <% 
	    	 RequestDispatcher  rd =request.getRequestDispatcher("viewJavaQ.jsp");
	 		rd.include(request, response);
		
	}else{
		
		%>
		<script> 
	    	  alert("Question Not Updated.");  
	    	 </script>
	    	 <%
	    	 RequestDispatcher  rd =request.getRequestDispatcher("viewJavaQ.jsp");
	 		rd.include(request, response);
	}
	
	
	
	
}catch(Exception e){
	System.out.println(e);
	
	
}



%>



</body>
</html>