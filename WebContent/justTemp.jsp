<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Education Tutorial a Educational Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Education Tutorial Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--bootstrap-->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!--coustom css-->
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<!--script-->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- js -->
<script src="js/bootstrap.js"></script>
<!-- /js -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Open+Sans:300,300italic,400italic,400,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--/fonts-->
<!--hover-girds-->
<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<script src="js/modernizr.custom.js"></script>
<!--/hover-grids-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--script-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
<!--/script-->
</head>



<body>
<!--header-->
		<div class="header" id="home">
			<nav class="navbar navbar-default">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"> </span>
						<span class="icon-bar"> </span>
						<span class="icon-bar"> </span>
					</button>
				  <a class="navbar-brand" href="#">Online Exam</a>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav navbar-right margin-top cl-effect-2">
								
								<li><a href="index.html"><span data-hover="About">Log Out</span></a></li>
							</ul>
							<div class="clearfix"> </div>
						</div><!-- /.navbar-collapse -->
				<!-- /.container-fluid -->
				<marquee>Online Examination</marquee>
				<div class="login-pop">
						
								<div id="loginBox">                
									<form id="loginForm">
											
								 </form>
							</div>
					    </div>
					    </div><script src="js/menu_jquery.js"></script>
					    </div>
					    
<%

try{
	
	//String id=request.getParameter("id");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "sallauddin", "super");
	PreparedStatement pst=cn.prepareStatement("select * from TestingQ where qno=?");
	pst.setInt(1, 1);
	ResultSet rs=pst.executeQuery();
	
	boolean req=rs.next();
	
	%>
	<form action="updateservlet" method="post">
	
	
 Question number	<input type="text" name="id" value="<%=rs.getInt(1) %>"><br>
	
Question &nbsp&nbsp <input type="text" name="question" value="<%=rs.getString(2) %>"><br>
Option 1  &nbsp&nbsp<input type="text" name="optiona" value="<%=rs.getString(3) %>"><br>
Option 2  &nbsp&nbsp	<input type="text" name="optionb" value="<%=rs.getString(4) %>"><br>
Option 3  &nbsp&nbsp	<input type="text" name="optionc" value="<%=rs.getString(5) %>"><br>
Option 4  &nbsp&nbsp	<input type="text" name="optiond" value="<%=rs.getString(6) %>"><br>
	
Answer &nbsp  &nbsp&nbsp<input type="text" name="ans" value="<%=rs.getString(7) %>"><br>
	<input type="submit" value="Update">
	
	</form>
	
	
	
	
	<%
	
	
}catch(Exception e){
	System.out.println(e);
	
	
}









%>












</body>
</html>