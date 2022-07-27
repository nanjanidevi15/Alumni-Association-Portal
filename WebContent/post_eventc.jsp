<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aap", "root", "");
		PreparedStatement pst = con.prepareStatement("insert into event values (?,?,?,?,?)");
		pst.setString(1, request.getParameter("ename"));
		pst.setString(2, request.getParameter("date"));
		pst.setString(3, request.getParameter("time"));
		pst.setString(4, request.getParameter("venue"));
		pst.setString(5, request.getParameter("description"));

		pst.executeUpdate();
		%>
		<%
		
		Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/aap", "root", "");
		PreparedStatement pst1 = con1.prepareStatement("select email from alumni");
		ResultSet rs = pst1.executeQuery();



	    final String subject = "Alumni Association";

	    final String messg = "New event is added.";


	    final String from = "alumniportal45@gmail.com";

	    final String pass = "anjani@123";

	    String host = "smtp.googlemail.com";

	    Properties props = new Properties();

	    props.put("mail.smtp.host", host);

	    props.put("mail.transport.protocol", "smtp");

	    props.put("mail.smtp.auth", "true");

	    props.put("mail.smtp.starttls.enable", "true");

	    props.put("mail.user", from);

	    props.put("mail.password", pass);

	    props.put("mail.port", "465");

	    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

	        @Override

	        protected PasswordAuthentication getPasswordAuthentication() {

	            return new PasswordAuthentication(from, pass);

	        }

	    });

	 

	    try {



	        MimeMessage message = new MimeMessage(mailSession);

	

	        message.setFrom(new InternetAddress(from));

	        
while(rs.next())
{
	       String to=rs.getString("email");
	        message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));

	        message.setSubject(subject);


	        message.setText(messg);


	        Transport.send(message);
}

	       

	    } catch (MessagingException mex) {

	        mex.printStackTrace();


	    }

	%>
 
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-success">
			<strong>Success!</strong> Event is added and mail is sent to users
		</div>
		<a href="alumni_home.jsp" class="btn btn-info"> Goto
			Home page </a>
	</div>

</body>
</html>