package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;



import userbean.userbean;

public class operations {

	public static void insert(userbean user) {
		try{
             String un=user.getUsername();
           
	  		Class.forName("oracle.jdbc.driver.OracleDriver");
	  		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sallauddin","super");


	  		PreparedStatement pst1 = con.prepareStatement("select * from UserDetails where username=? and password=? OR email=? OR username=? ");
	  		pst1.setString(1, user.getUsername());
	  		pst1.setString(2, user.getPassword());
	  	    pst1.setString(3, user.getEmail());
	   	    pst1.setString(4, user.getUsername());
	   	    
	  	    ResultSet rs=pst1.executeQuery();
	  	    boolean req=rs.next();
	  	    
	  	    if(req)
	  	    {
	  		      System.out.println("Alerady used.");
	  	    }
	  	    else
	  	    {
	  	    	
	  	    	PreparedStatement pst = con.prepareStatement("insert into UserDetails (phno,firstname,lastname,username,Password,gender,dob,email,passout,result,course) values(?,?,?,?,?,?,?,?,?,?,?)");
	 	  	   
		  	    pst.setString(1, user.getPhno());
		  	    pst.setString(2, user.getFn());
		  	    pst.setString(3, user.getLn());
		  		pst.setString(4, user.getUsername());
				pst.setString(5, user.getPassword());
				pst.setString(6, user.getGender());
		 	    pst.setString(7, user.getDate());
				pst.setString(8, user.getEmail());
				pst.setInt(9, user.getPassout());
				pst.setString(10, "none");
				pst.setString(11, "none");
				user.setValid(true);
				
				int i=pst.executeUpdate();
				if(i==1)
				{
					user.setValid(true);
					System.out.println("success");
				}
					else
					{
						System.out.println("failed");
					}
				
	  	    }
	  		
			
		}catch(Exception e){
			System.out.println(e);
		}
		
		
		
		
	}

	
}
