<!--A Design by W3layouts
Author: W3layout
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
<!DOCTYPE HTML>
<html>
<html>
<head>
   
    <style type="text/css">
        body, input {
            font-family: Calibri, Arial;
        }
    </style>
   
</head>

   


<head>
<title> Cubic IT Solutions</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Learn Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/jquery.countdown.css" />

<link href='//fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->





<style>  


body {
    font-family: align;
}

/* Style the header */
bdd {
   
    padding: 30px;
    text-align: center;
    font-size: 20px;
    color: black;
}

</style>


<%@page import="userbean.userbean"%>



<%
userbean us= (userbean)session.getAttribute("us");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sallauddin","super");

PreparedStatement pstmt=con.prepareStatement("select *  from setvalue where Id=? ");
pstmt.setInt(1, 1);

ResultSet rs1=pstmt.executeQuery();

int t=0;
if(rs1.next())
{
	 t+=rs1.getInt(3);
     
}

PreparedStatement pst2=con.prepareStatement("SELECT MAX(qno) AS tq  from TestingQ ");


ResultSet rs = pst2.executeQuery();
int max=0;

if(rs.next())
{
	
	max=rs.getInt(1);
}

int time=t/60;

%>

</head>
<body onload = "begintimer()">

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<nav class="navbar navbar-default" role="navigation">
	<div class="container">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
	        </button>
	       <a class="navbar-brand" href="#">Online Exam</a>
	    </div>
	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	        <ul class="nav navbar-nav">
		       
		           <li class="dropdown">
			       <a href="#"><i></i><span></span></a>
		          <font color="white"><h3>Welcome ~ <br> </h3></font>   
		          
		            
		        </li>
		        
		        <li class="dropdown">
			      <a href="#"><i></i><span></span></a>
		          <font color="white"><h3><%=us.getUsername() %> &nbsp</h3></font>   
		            
		        </li>
		        
		          
		        <li class="dropdown">
		            <a href="javaProfile.jsp"><i class="fa fa-user"></i><span>Profile</span></a>
		        </li>
		       
		    </ul>
	    </div>
	    <div class="clearfix"> </div>
	  </div>
	    <!--/.navbar-collapse-->
</nav>


<div class="container">
<div class="row">
<div class="page-header">
<bdd>
<h1>  <u>Instructions </u> </h1>
<br>


<h4> <b>1. Do not resize(minimize) the browser during test.</b></h4> 

<h4> <b> &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp   &nbsp  &nbsp  &nbsp  &nbsp 2. Never click "Back" button and "refresh" button on the Browser.</b></h4> 
<h4> <b>3. Total Number of questions <%=max %>. &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp   &nbsp  &nbsp &nbsp   &nbsp  &nbsp</b></h4> 
<h4> <b>4. Each question carries 1 marks. &nbsp  &nbsp  &nbsp  &nbsp  &nbsp    &nbsp  &nbsp &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp   &nbsp  &nbsp</b></h4>
<h4> <b>5. You will have <%=time %>  minutes to complete your exam.&nbsp   </b></h4>
<br>
<br>

<p><button type="button" > <a href="javaPage.jsp" >Ready to Start</a> </input><p>
								
</div>
<br>
<br>
<br>
<br>

<br>
<br>
<br>
<br>

<br>
<br>
<br>
<br>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="js/registration-form-with-bootstarp.js"></script>
	

   
    <div class="footer">
    	<div class="container">
    		<div class="col-md-3 grid_4">
    		   <h3>About Us</h3>	
    		    <p>CubicIT Solution Pvt. Ltd.
All about gearing blooming businesses with best services of designing, developing and securing IT. Bringing customers ideas to life.
</p>
    		      <ul class="social-nav icons_2 clearfix">
                    <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#" class="facebook"> <i class="fa fa-facebook"></i></a></li>
                    <li><a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a></li>
                 </ul>
    		</div>
    		
    		<div class="col-md-3 grid_4">
    		   <h3>Contact Us</h3>
    			<address>
    			<br>
    			 <abbr>Cubic IT Solution</abbr> 
                   <br>
                    <abbr>Telengana ,Hyderabad.</abbr> 
                    
                    <span>India</span>
                  <br>
                    <abbr>Telephone :  +1 (734) 123-4567 </abbr>
                    <br>
                     
                    <abbr>Email : </abbr> <a href="mailto@example.com">info(at)Learn.com</a>
               </address>
    		</div>
    		
    		
    		<div class="clearfix"> </div>
    		<div class="copy">
		 <p>Copyright © 2018 Learn . All Rights Reserved  | Design by <a href="http://cubicitsolution.in" target="_blank">Cubic IT Solutions</a> </p>
	               </div>
    	</div>
    </div>
    
    

    
<script src="js/jquery.countdown.js"></script>
<script src="js/script.js"></script>
</body>
</html>	