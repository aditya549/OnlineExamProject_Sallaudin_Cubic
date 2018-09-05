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

<script>
    $(document).ready(function() {
        function disableBack() { window.history.forward() }

        window.onload = disableBack();
        window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
    });
</script>


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
userbean us= (userbean)session.getAttribute("us");

%>
</script>
</head>
<body onload = "begintimer()">


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
		            <a href="index.jsp"><i class="fa fa-user"></i><span>Logout</span></a>
		        </li>
		        
			
		    </ul>
	    </div>
	    <div class="clearfix"> </div>
	  </div>
	    <!--/.navbar-collapse-->
</nav>

</nav>
<script type="text/javascript">

if(s.equals("Qualified"))
{
	alert("QUALIFIED EXAM")
}
else
{
	alert("DISQUALIFIED EXAM")
}


</script>
<br>

<%@page import="java.sql.*"%>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<%

try
{
	
	
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sallauddin","super");
PreparedStatement ps1=con.prepareStatement("SELECT MAX(qno) AS tq  from JavaQ ");

	
	ResultSet r1 = ps1.executeQuery();
	int max=0;
	
	if(r1.next())
	{
		
		max=r1.getInt(1);
	}
	
    
    int count=0;
	String st[]=new String[100];
	int i=0;
	
	
	while(i<st.length)
	{
	int j=i+1;
	st[i]=request.getParameter("radio"+j);
	
    

PreparedStatement pst=con.prepareStatement("select  * from JavaQ where qno=?  ORDER BY qno ASC ");

pst.setInt(1, j);
ResultSet rs = pst.executeQuery();
String res =" ";
while(rs.next())
{
	 res=rs.getString(7);
     
}
      
      if(st[i]!=null  &&  st[i].equals(res))
      {
    	  count++;
    	  
      }
      else
      {
    	  st[i]="default";
    	 
      }
      i++;

}
	
	
	out.print("<br>");
	out.print("<br>");

	PreparedStatement pstmt=con.prepareStatement("select *  from setvalue where Id=? ");
	pstmt.setInt(1, 1);
	
	ResultSet rs1=pstmt.executeQuery();
	
	int cms=0;
	if(rs1.next())
	{
		 cms=rs1.getInt(2);
	     
	}
	

	
	int wrong=max-count;
	String s=" ";
	 if(count>=cms  || max==count)
	    {
	    
	    	s="Qualified" ;
	    %>	<script> 
	    	  alert("Qualified");  
	    	 </script>
	<%     }
	   
else
	    {
	    	s="DisQualified" ;
	    	%>
	    	<script> 
	    	  alert("DisQualified");  
	    	 </script>
	  <%   }
	
	     if(s.equals("Qualified"))
	    {
	    	
	    	
	    	
	    	PreparedStatement pst4=con.prepareStatement("update   UserDetails  set result=? , course=? where username=? ");
	    	pst4.setString(1,s);
	    	pst4.setString(2, "Java");
	    	pst4.setString(3,us.getUsername());
	    	
	    	int i1=pst4.executeUpdate();
	    	if(i1==0)
	    	{
	    		System.out.print("Qualified Added.");
	    	}
	    }
	    else
	    {

	    	PreparedStatement pst5=con.prepareStatement("update   UserDetails  set result=? , course=? where username=? ");
	    	pst5.setString(1,s);
	    	pst5.setString(2, "Java");
	    	pst5.setString(3,us.getUsername());
	    	
	    	int i1=pst5.executeUpdate();
	    	if(i1==0)
	    	{
	    		System.out.print("DisQualified Added.");
	    	}
	    }
	    

	    
	%>
	<h3><font color="brown" > <p align="center">Java Exam Result </p></font> </h3>
	
	<table border="1px" width="480" align="center" background-color:gold; >
	            <tr bgcolor="orange"  > <td  height="40" > <b> &nbsp   &nbsp <big> Result </big></b> </td> </tr>
	                <tr><td>  <p align="left" > &nbsp   &nbsp <b>Descriptions </b>     &nbsp   &nbsp &nbsp   &nbsp &nbsp  &nbsp   &nbsp &nbsp   &nbsp   &nbsp   &nbsp &nbsp   &nbsp &nbsp   &nbsp &nbsp   &nbsp &nbsp   &nbsp &nbsp   &nbsp &nbsp   &nbsp  &nbsp <b> Status </b> &nbsp   &nbsp  </p> </td></tr>
	                <tr><<td  height="40" >&nbsp   &nbsp Total Questions              &nbsp &nbsp   &nbsp   &nbsp &nbsp &nbsp   &nbsp   &nbsp  &nbsp &nbsp   &nbsp   &nbsp &nbsp &nbsp &nbsp &nbsp   &nbsp   &nbsp &nbsp &nbsp   &nbsp   &nbsp   &nbsp   &nbsp <%=max %>   </td></tr>
	                <tr><td  height="40" >&nbsp   &nbsp Total Correct Answer          &nbsp &nbsp   &nbsp   &nbsp     &nbsp  &nbsp   &nbsp &nbsp &nbsp   &nbsp &nbsp &nbsp   &nbsp   &nbsp   &nbsp &nbsp &nbsp   &nbsp   &nbsp  <%=count %> </td></tr>
	                <tr><td  height="40" >&nbsp   &nbsp Total Wrong Answer            &nbsp &nbsp   &nbsp   &nbsp &nbsp   &nbsp   &nbsp &nbsp &nbsp   &nbsp   &nbsp   &nbsp &nbsp &nbsp   &nbsp   &nbsp &nbsp &nbsp   &nbsp   &nbsp <%=wrong %>   </td></tr>
	                <tr><td  height="40" >&nbsp   &nbsp Result                              &nbsp &nbsp   &nbsp   &nbsp &nbsp &nbsp   &nbsp   &nbsp   &nbsp &nbsp   &nbsp   &nbsp &nbsp   &nbsp   &nbsp &nbsp &nbsp   &nbsp   &nbsp   &nbsp &nbsp &nbsp   &nbsp   &nbsp &nbsp &nbsp   &nbsp   &nbsp  <%=s %>    </td></tr>
	
	</table>
	
	<% 
	

    
}catch(Exception e)
{
	System.out.println(e);
}


%>

<br>
<br>
   
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