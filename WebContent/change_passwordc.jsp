<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Message</title>
</head>
<body>
	<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aap","root","");
if (request.getParameter("radio")!=null)
{
	if(request.getParameter("radio").equals("alumni"))
	{
		PreparedStatement pst = con.prepareStatement("update alumni set password = ? where username = ?");
		pst.setString(1,request.getParameter("password"));
		pst.setString(2,request.getParameter("username"));
	   int r=pst.executeUpdate();
	   if(r==1)
	   {
	    		%>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-success">
			<strong>Success!</strong> Your Password is Changed.
		</div>
		<a href="alumni_home.jsp" class="btn btn-info">Goto home page</a>
	</div>
	<%
	   }
	   else
	   {
		   %>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-danger">
			<strong>Danger!</strong>can't Change,check the username you entered.
		</div>
		<a href="change_password.jsp" class="btn btn-info">Change Password</a>
	</div>
	<% 
	   }
	 }
	if(request.getParameter("radio").equals("student"))
	{
		PreparedStatement pst = con.prepareStatement("update student set password=? where username=?");
		pst.setString(1,request.getParameter("password"));
		pst.setString(2,request.getParameter("username"));
		int r=pst.executeUpdate();
		if(r==1)
		   {
		    		%>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-success">
			<strong>Success!</strong> Your Password is Changed
		</div>
		<a href="student_home.jsp" class="btn btn-info">Goto home page</a>
	</div>
	<%
		   }
		   else
		   {
			   %>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-danger">
			<strong>Danger!</strong>can't Change,check the username you entered.
		</div>
		<a href="change_password.jsp" class="btn btn-info">Change Password</a>
	</div>
	<% 
		   }
	}
}
else
{
	%>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-danger">
			<strong>Danger!</strong> please select the User
		</div>
		<a href="change_password.jsp" class="btn btn-info">update</a>
	</div>
	<%
}
%>
</body>
</html>