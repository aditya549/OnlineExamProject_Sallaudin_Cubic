<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@page import="userbean.userbean"%>

<%
userbean us= (userbean)session.getAttribute("us");

%>

<!DOCTYPE html>
<html>
<head>
<title> Cubic IT Solutions</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Skills Profile Widget template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--Custom Theme files-->
<link href="css1/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//Custom Theme files -->
<!--web font-->
<link href='//fonts.googleapis.com/css?family=Questrial' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--//web font-->
<!--circle-chart-->
<script src="js/jquery-1.11.1.min.js"></script> 
<!--//circle-chart-->

<!--ResponsiveTabs-->
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function () {
		$('#horizontalTab').easyResponsiveTabs({
			type: 'default', //Types: default, vertical, accordion           
			width: 'auto', //auto or any width like 600px
			fit: true   // 100% fit in a container
		});
	});
</script>
<script>
    $(document).ready(function() {
        function disableBack() { window.history.forward() }

        window.onload = disableBack();
        window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
    });
</script>

<br>

<p align="left">  <a href="instructions.jsp"> <font size="5%" color="lightblue" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Back> &nbsp&nbsp&nbsp </font></a></font> </p>

<%

try
{
	
	
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sallauddin","super");
    PreparedStatement pstmt=con.prepareStatement("select * from UserDetails where username=? and password=?");
	pstmt.setString(1, us.getUsername());
	pstmt.setString(2, us.getPassword());
	ResultSet rs=pstmt.executeQuery();
	
    boolean req=rs.next();
	        
	%>
	


<!--//ResponsiveTabs-->
</head>
<body>


	<!-- main -->
	<div class="main">
		<h1> <font color="cyan"> Profile </font> </h1>
		<div class="main-info w3l">
			<div class="main-row"><!-- main-row-one -->
				<div class="profile-grid logo wthree">
					<img src="images/img1.jpg" alt="">
					<h2> <%= rs.getString(1) %> &nbsp  <%= rs.getString(2) %> </h2>
					<p> <%=rs.getString(7) %> </p>
					<p>Mobile No -- <%=rs.getString(8) %> </p>
					<p>Year of Passout -- <%=rs.getString(10) %> </p>
					
					
				</div>
				<h3 class="title"> </h3>
					
				<!--bar-js-->
				<script src="js/bars.js"></script>
				
				<div class="clear"> </div>
			</div>	
		</div>	
		
		<% 
    
}catch(Exception e)
{
	System.out.println(e);
}


%>
		<!-- copyright -->
		<div class="copyright">
		  <p>Copyright © 2018 Learn . All Rights Reserved  | Design by <a href="http://cubicitsolution.in" target="_blank">Cubic IT Solutions</a> </p>
	    	</div>
		<!-- //copyright -->
	</div>	
	<!-- main -->
</body>
</html>