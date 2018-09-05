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
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});



<%
userbean Ad= (userbean)session.getAttribute("Ad");

%>
</script>
</head>
<body> 


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
		          <font color="white"><h3><%=Ad.getUsername() %> &nbsp</h3></font>   
		            
		        </li>
		      
		     
				
				 <li class="dropdown">
		            <a href="index.jsp"><i class="fa fa-user"></i><span>Logout</span></a>
		        </li>
		        
			
				
		    </ul>
	    </div>
	    <div class="clearfix"> </div>
	  </div>
	    <!--/.navbar-collapse-->
</nav>
<nav class="navbar nav_bottom" role="navigation">
 <div class="container">
 <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header nav_2">
      <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"></a>
   </div> 
   <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
        <ul class="nav navbar-nav nav_1">
               <li><a href="AdminView.jsp">Home</a></li>
			<li><a href=""></a></li>
            <li><a href="#">About</a></li>
    	    
		 <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Java<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="Add1.jsp">Add Questions</a></li>
                <li><a href="viewJavaQ.jsp ">View Questions</a></li>
               <li><a href="Set.jsp">Cut Off Marks/ Set Time</a></li>
			    <li><a href="qualified.jsp">Qualified/Dis Qualified</a></li>
			
			   
              </ul>
            </li>
			
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">.Net<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="Add2.jsp">Add Questions</a></li>
                <li><a href="viewNetQ.jsp ">View Questions</a></li>
               <li><a href="Set.jsp">Cut Off Marks/Set Time</a></li>
			  		    <li><a href="qualified.jsp">Qualified/Dis Qualified</a></li>
			
			   
              </ul>
            </li>
           
		   <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Testing<span class="caret"></span></a>
               <ul class="dropdown-menu" role="menu">
                <li><a href="AddQ.jsp">Add Questions</a></li>
                <li><a href="viewQuestions.jsp ">View Questions</a></li>
            <li><a href="Set.jsp">Cut Off Marks/Set Time</a></li>
			 		    <li><a href="qualified.jsp">Qualified/Dis Qualified</a></li>
			 
              </ul>
            </li>
           
        </ul>
     </div><!-- /.navbar-collapse -->
   </div>
</nav>

<!-- banner -->
	<div class="banner">
			<!-- banner Slider starts Here -->
					<script src="js/responsiveslides.min.js"></script>
					 <script>
						// You can also use "$(window).load(function() {"
						$(function () {
						  // Slideshow 4
						  $("#slider3").responsiveSlides({
							auto: true,
							pager: true,
							nav: true,
							speed: 500,
							namespace: "callbacks",
							before: function () {
							  $('.events').append("<li>before event fired.</li>");
							},
							after: function () {
							  $('.events').append("<li>after event fired.</li>");
							}
						  });
					
						});
					  </script>


<div class="container">
<div class="row">
<div class="page-header">
<bdd>
<h2>  <u> Java Questions  </u> </h2>
</div>

<table border="2px" width="95%" color="blue">

 <% 

 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sallauddin","super");
 PreparedStatement pst=con.prepareStatement("select  * from JavaQ   ORDER BY qno ASC  ");

 ResultSet rs = pst.executeQuery();
     
 
 while(rs.next()){
 %>
 
   <tr>  <td> <h3>  &nbsp  &nbsp   &nbsp <%=rs.getInt(1) %>.&nbsp<%=rs.getString(2)%>&nbsp <a href="editJ.jsp?id=<%=rs.getInt(1)%>"> <p align="right">EDIT &nbsp </p> </a>    </h3> </td>  </tr>  
  
<tr> <td>&nbsp  &nbsp   &nbsp  &nbsp   &nbsp   &nbsp &nbsp  &nbsp   &nbsp    <big><%=rs.getString(3)%> </big> <br> </td> </tr>
 <tr>   <td> &nbsp   &nbsp  &nbsp  &nbsp   &nbsp  &nbsp  &nbsp  &nbsp   &nbsp  <big> <%=rs.getString(4)%> </b> <br></td> </tr>
  <tr> <td>&nbsp   &nbsp   &nbsp  &nbsp   &nbsp  &nbsp &nbsp  &nbsp   &nbsp   <big><%=rs.getString(5)%> </big>  <br> </td>  <tr>
 <tr>  <td>&nbsp   &nbsp  &nbsp   &nbsp  &nbsp   &nbsp  &nbsp  &nbsp   &nbsp  <big><%=rs.getString(6)%>  </big>  <br></td></tr> &nbsp

 <%
 }
 %>
 

</table>



</bdd>
</div> 
</div><!-- end for class "row" -->
</div><!-- end for class "container" -->

</body>
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