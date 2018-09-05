package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import userbean.userbean;

public class Questions 
{

	public static void Add(userbean user) {
		try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sallauddin","super");
			
				PreparedStatement pstmt=con.prepareStatement("select * from TestingQ where qno=?");
				pstmt.setString(1, user.getQno());
				
				ResultSet rs=pstmt.executeQuery();
				boolean req=rs.next();
				if(req)
				{
					
					user.setValid(false);
					
				}
				else
				
				{
					
					PreparedStatement pst = con.prepareStatement("insert into TestingQ (questions,option1,option2,option3,option4,answer) values(?,?,?,?,?,?)");
			 	  	   
					  
				  	  pst.setString(1, user.getQuestions());
				  	  pst.setString(2, user.getOpt1());
				  	  pst.setString(3, user.getOpt2());
				  	  pst.setString(4, user.getOpt3());
				  	  pst.setString(5, user.getOpt4());
				  	  pst.setString(6, user.getAnswer());
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
