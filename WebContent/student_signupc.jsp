<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>student signup message</title>
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
		PreparedStatement pst = con.prepareStatement("insert into student values (?,?,?,?)");
		pst.setString(1, request.getParameter("username"));
		pst.setString(2, request.getParameter("name"));
		pst.setString(3, request.getParameter("regnumber"));
		pst.setString(4, request.getParameter("password"));

		pst.executeUpdate();
	%>

	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-success">
			<strong>Success!</strong> You have signed up
		</div>
		<a href="hello.jsp" class="btn btn-info"> click here to login </a>
	</div>

</body>
</html>