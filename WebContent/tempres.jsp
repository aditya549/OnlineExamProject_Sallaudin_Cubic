<%@page import="java.sql.*"%>
<%@page import="userbean.userbean"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%

try
{
	
	userbean us= (userbean)session.getAttribute("us");

	
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sallauddin","super");
	int count=0;
	String st[]=new String[50];
	int i=0;
	
	
	while(i<st.length)
	{
	int j=i+1;
	st[i]=request.getParameter("radio"+j);
	
    

PreparedStatement pst=con.prepareStatement("select  * from TestingQ where qno=?  ORDER BY qno ASC ");

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
	
	out.println("Your "+count+" answers are correct.");
	out.print("<br>");

	PreparedStatement pstmt=con.prepareStatement("select *  from setvalue where Id=? ");
	pstmt.setInt(1, 1);
	
	ResultSet rs1=pstmt.executeQuery();
	
	int cms=0;
	if(rs1.next())
	{
		 cms=rs1.getInt(2);
	     
	}
	
PreparedStatement pst2=con.prepareStatement("SELECT MAX(qno) AS tq  from TestingQ ");

	
	ResultSet rs = pst2.executeQuery();
	int max=0;
	
	if(rs.next())
	{
		
		max=rs.getInt(1);
	}
	
	System.out.println("success");
	int wrong=max-count;
	
	out.print("\nTotal Questions : "+ max );
	out.print("<br>");
    out.print("Correct Answer  : "+count);
    out.print("<br>");
    out.print("Wrong answer    : "+wrong);
    out.print("<br>");
	
    String s="";
    if(count>=cms)
    {
    	out.print("Qualified");
     s="Qualified";
    	
    }
    else
    {
    	out.print(" Not Qualified");
    	 s="DisQualified";
    }
    
    if(s.equals("Qualified"))
    {
    	
    	
    	
    	PreparedStatement pst4=con.prepareStatement("update   UserDetails  set result=? where username=? ");
    	pst4.setString(1,s);
    	pst4.setString(2,us.getUsername());
    	
    	int i1=pst4.executeUpdate();
    	if(i1==0)
    	{
    		System.out.print("Qualified Added.");
    	}
    }
    else
    {

    	PreparedStatement pst5=con.prepareStatement("update   UserDetails  set result=? where username=? ");
    	pst5.setString(1,s);
    	pst5.setString(2,us.getUsername());
    	
    	int i1=pst5.executeUpdate();
    	if(i1==0)
    	{
    		System.out.print("DisQualified Added.");
    	}
    }
    
    
    
}catch(Exception e)
{
	System.out.println(e);
}


%>