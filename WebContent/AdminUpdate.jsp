<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="userbean.userbean"%>

<%
try{
	
	userbean Ad= (userbean)session.getAttribute("Ad");
	int id=Integer.parseInt(request.getParameter("id"));
	
	String pwd=request.getParameter("pwdd");
	String em=request.getParameter("mail");

	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "sallauddin", "super");
	PreparedStatement pst=cn.prepareStatement("update Admin set password=? ,email=?,id=? where username=?");

	pst.setString(1, pwd);
	pst.setString(2, em);
	pst.setInt(3, id);
	pst.setString(4, Ad.getUsername());
	
	
	int i=pst.executeUpdate();
	if(i==1){
		%>
		<script type="text/javascript">
		alert("Profile Successfully Updated.")

     </script>
		<% 
		RequestDispatcher  rd =request.getRequestDispatcher("AdminProfile.jsp");
		out.print("Profile  Successfully Updated.");
		rd.include(request, response);
		
	}else{
		%>
		<script type="text/javascript">
		alert("Profile Successfully Updated.")

     </script>
		<% 
		RequestDispatcher  rd =request.getRequestDispatcher("AdminProfile.jsp");
		out.print("Profile  Not Updated.");
		rd.include(request, response);
	}
	
	
}catch(Exception e){
	System.out.println(e);
	
}

%>

</body>
</html>