<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Check all the boxes</title>
  </head>
<body>
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
	   	PreparedStatement pst5=con.prepareStatement("select * from UserDetails where result=? ");
	    	pst5.setString(1,"Qualified");
	   
	    	ResultSet rs=pst5.executeQuery();
	    	
%>
  
  
  
  
  
  <form name="myform"  action="deleteit.jsp">
  <table border="2px" width="1000">
  
        <thead>
                                            <tr >
                                                <th>
                                                
    <label for="selectall" id="selectControl">~</label>
    <input type="checkbox" id="selectall" />  </th>
                                                <th >Firstname </th>
                                                <th >Lastname </th>
                                                <th >Username </th>
                                                <th >Gender </th>
                                                <th >Dob </th>
                                                <th >Email</th>
												<th >Phone number</th>
												<th >Result</th>
                                            
                                               
                                                    <a  style="color:#fff; font-weight:500;"></a>
                                            </th>
                                </tr>
        </thead>
        
<% while(rs.next())
	{
	%>        
         
         <td>
                   <label for="red"></label>
                 &nbsp  &nbsp  <input type="checkbox" name="colors[]" value="<%=rs.getString(3)  %>" id="red"/><br />
         </td>
         
  
     
    
   <td>  &nbsp  &nbsp   <%=rs.getString(1)%> </td>
 
   <td>  &nbsp  &nbsp   <%=rs.getString(2)%> </td>
    
   <td>  &nbsp  &nbsp   <%=rs.getString(3)%> </td>
    
   <td>  &nbsp  &nbsp   <%=rs.getString(5)%> </td>
    
   <td>  &nbsp  &nbsp   <%=rs.getString(6)%> </td>
    
   <td>   &nbsp  &nbsp  <%=rs.getString(7)%> </td>
    
   <td>  &nbsp  &nbsp   <%=rs.getString(8)%> </td>
    
   <td>  &nbsp  &nbsp   <%=rs.getString(9)%> </td>
</tr>
 <%} %> 
 <div class="form-group">
<div class="col-sm-offset-2 col-sm-10">
     <br> <br> &nbsp   &nbsp   &nbsp  &nbsp   &nbsp   &nbsp  &nbsp   &nbsp   &nbsp  &nbsp   &nbsp   &nbsp  &nbsp   &nbsp   &nbsp  &nbsp   &nbsp   &nbsp  &nbsp   &nbsp   &nbsp  &nbsp   &nbsp   &nbsp  &nbsp   &nbsp   &nbsp  &nbsp   &nbsp   &nbsp  &nbsp   &nbsp   &nbsp  <button type="submit" class="btn btn-primary" id="register"> <bdd>Delete </bdd></button>

</div>
</div>
<br> <br>
</table>
  </form>


	<% 
	

    
}catch(Exception e)
{
	System.out.println(e);
}


%>
  <script>
  function Check(frm){
	  var checkBoxes = frm.elements['colors[]'];
	  var selectControl = document.getElementById("selectControl");
	  for (i = 0; i < checkBoxes.length; i++){
	    checkBoxes[i].checked = (selectControl.innerHTML == "~") ? 'checked' : '';
	  }
	  selectControl.innerHTML = (selectControl.innerHTML == "~") ? "*" : '~';
	}

	window.onload = function(){
	  document.getElementById("selectall").onchange = function(){Check(document.myform)};
	};
  </script>
  </body>
</html>