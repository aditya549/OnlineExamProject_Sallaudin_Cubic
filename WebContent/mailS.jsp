<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<%


Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sallauddin","super");


PreparedStatement pst=con.prepareStatement("select * from UserDetails where result=? ");

pst.setString(1, "Qualified");
  
 ResultSet rs= pst.executeQuery();
 
 String email=" ";
 String s="";
 String s1="";
 
 while(rs.next())
 {
    email= rs.getString(7);
 
   
    //Creating a result for getting status that messsage is delivered or not!

    String result;

    // Get recipient's email-ID, message & subject-line from index.html page

    final String to = email;

    final String subject = "success message";

    final String messg = " Congratulations you are Selected.  ";

    

    // Sender's email ID and password needs to be mentioned

    final String from = "mailsend444@gmail.com";

    final String pass = "sendmail123";

 

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

    Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "465");

 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject(subject);

        // Now set the actual message

        message.setText(messg);

        // Send message

        Transport.send(message);

        result = "yes";
        s=result;

    } catch (MessagingException mex) {

        mex.printStackTrace();

        result ="no" ;
        s1=result;
    }
 }
    if(s.equals("yes"))
    {
    	
    	%>
    	  <script type="text/javascript">
    	  alert("Mail Sucessfully Sent.")
         </script>
    	<% 
    	session.setAttribute("res", "Mail has been successfully Sent.");
    	RequestDispatcher rd=request.getRequestDispatcher("mailStatus.jsp");  
		rd.include(request, response);

    }
    else
    {
    	%>
  	  <script type="text/javascript">
  	  alert("Mail Not Sent.")
</script>
  	<% 
    	session.setAttribute("res", "! Error unable to Send Message...");
    	RequestDispatcher rd1=request.getRequestDispatcher("mailStatus.jsp");  
		rd1.include(request, response);
		
    }
    
    %>
    <br>
    <br>