<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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
</script>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/datepicker.css">
<link rel="stylesheet" href="css/registration-form-with-bootstarp.css">




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
		            <a href="login.jsp"><i class="fa fa-user"></i><span>Login</span></a>
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
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"></a>
    </div> 
   
   </div>
</nav>
<!-- banner -->
  <div class="courses_banner">
  	<div class="container">
  		<h3>Register</h3>
  		<p class="description">
           <h3> Learn Tutorial </h3>
        </p>
        <div class="breadcrumb1">
            <ul>
                <li class="icon6"><a href="index.jsp">Home</a></li>
                
            </ul>
        </div>
  	</div>
  </div>
    <!-- //banner -->

	<div class="container">
<div class="row">
<div class="page-header">
<h1> <span> Registration  With New Account </span> </h1>
</div>
<form class="form-horizontal" role="form" id="myForm"   onSubmit="alert('Press Ok to Submit.');"   method="post" action=" SignUpServlet"> 
<div class="form-group">
<label for="firstName" class="col-sm-2 control-label">First Name:</label>
<div class="col-sm-6">
<input type="text" name="fn" class="form-control" id="firstName" placeholder="Enter your First Name" pattern="[^()!?/><\][\\\x22,~';|-]+"  title="No special characters! allowed" required>
</div>
</div>
 
<div class="form-group">
<label for="lastName" class="col-sm-2 control-label">Last Name:</label>
<div class="col-sm-6">
<input type="text" name="ln" class="form-control" id="lastName" placeholder=" Enter your Last Name" pattern="[^()!?/><\][\\\x22,~';|-]+"  title="No special characters! allowed" required>
</div>
</div>
 
  
<div class="form-group">
<label for="userName" class="col-sm-2 control-label">User Name:</label>
<div class="col-sm-6">
<input type="text" name="un" class="form-control" id="userName" placeholder=" Enter User Name" pattern="[^()!?/><\][\\\x22,~';|-]+"  title="No special characters! allowed" required>
</div>
</div>
 
<div class="form-group">
<label for="passwd" class="col-sm-2 control-label">Password:</label>
<div class="col-sm-6">
<input type="password" name="pwd" class="form-control" id="passwd" placeholder=" Enter your Password"   pattern="(?=.*\d).{6,10}" title="Must contain at least one number and  under 6-10  characters" required >
</div>
</div>
 
 
<div class="form-group">
<label for="" class="col-sm-2 control-label">Gender:</label>
<div class="col-sm-6">
<label class="radio-inline">
<input type="radio" name="gender" id="gender1" value="male" checked>Male
</label>
<label class="radio-inline">
<input type="radio" name="gender" id="gender2" value="female">Female
</label>
 
</div>
</div>
 
<div class="form-group">
<label for="dob" class="col-sm-2 control-label">Date Of Birth:</label>
<div class="col-sm-6">
<input type="date" name="dob" class="form-control datepicker" id="dob" placeholder="Enter your  date of birth" required>
</div>
</div>

<div class="form-group">
<label for="userName" class="col-sm-2 control-label">Year of Passout:</label>
<div class="col-sm-6">


     
 <select name="pass" required>

<option value="2010">2010</option>
<option value="2011">2011</option>
<option value="2012">2012</option>
<option value="2013">2013</option>
<option value="2014">2014</option>
<option value="2015">2015</option>
<option value="2016">2016</option>
<option value="2017">2017</option>
<option value="2018">2018</option>
</select>
     
 </div>
</div> 
    
<div class="form-group">
<label for="userName" class="col-sm-2 control-label">Email:</label>
<div class="col-sm-6">
<input type="email" name="email" class="form-control" id="userName" placeholder=" Enter your Email Id for domain(gmail,yahoo,hotmail)"   pattern="[a-z0-9._%+-]+@(gmail|yahoo|hotmail)+\.(com|in)$" title="must contains (@ and .)and only for (gmail,yahoo,hotmail) domains"  required>
</div>
</div>
   
<div class="form-group">
<label for="userName" class="col-sm-2 control-label">Phone Number:</label>
<div class="col-sm-6">
<input type="text" name="phno" class="form-control" id="userName" placeholder=" Enter your phone number" pattern="[0-9]{10}" title="Only digits  Allows" required>
</div>
</div>
 
<div class="form-group">
<div class="col-sm-offset-2 col-sm-10">
<button type="submit" class="btn btn-primary" id="register">Register</button>
</div>
</div>
 
</form>
 
</div><!-- end for class "row" -->
</div><!-- end for class "container" -->

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
</body>
</html>	