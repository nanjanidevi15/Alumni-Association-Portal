<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login message</title>
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
		if (request.getParameter("radio") != null) {
			if (request.getParameter("radio").equals("alumni")) {
				PreparedStatement pst = con.prepareStatement("select * from alumni where username=?");
				pst.setString(1, request.getParameter("username"));
				ResultSet rs = pst.executeQuery();
				while (rs.next()) {
					if (rs.getString("password").equals(request.getParameter("password"))) {
	%>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-success">
			<strong>Success!</strong> You have logged in
		</div>
		<a href="alumni_home.jsp" class="btn btn-info">Goto home page</a>
	</div>
	<%
		} else {
	%>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-danger">
			<strong>Danger!</strong> The details you entered are wrong
		</div>
		<a href="hello.jsp" class="btn btn-info">Re-enter the details</a>
	</div>
	<%
		}
				}
			}
			if (request.getParameter("radio").equals("student")) {
				PreparedStatement pst = con.prepareStatement("select * from student where username=?");
				pst.setString(1, request.getParameter("username"));
				ResultSet rs = pst.executeQuery();
				while (rs.next()) {
					if (rs.getString("password").equals(request.getParameter("password"))) {
	%>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-success">
			<strong>Success!</strong> You have logged in
		</div>
		<a href="student_home.jsp" class="btn btn-info">Goto home page</a>
	</div>
	<%
		} else {
	%>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-danger">
			<strong>Danger!</strong> The details you entered are wrong
		</div>
		<a href="hello.jsp" class="btn btn-info">Re-enter the details</a>
	</div>
	<%
		}
				}
			}
			if (request.getParameter("radio").equals("admin")) {
				if (request.getParameter("username").equals("admin")
						&& request.getParameter("password").equals("adminpass")) {
	%>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-success">
			<strong>Success!</strong> You have logged in
		</div>
		<a href="admin_home.jsp" class="btn btn-info">Goto home page</a>
	</div>
	<%
		} else {
	%>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-danger">
			<strong>Danger!</strong> The details you entered are wrong
		</div>
		<a href="hello.jsp" class="btn btn-info">Re-enter the details</a>
	</div>
	<%
		}

			}
		} else {
	%>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-danger">
			<strong>Danger!</strong> Select a option to Login
		</div>
		<a href="hello.jsp" class="btn btn-info">Re-enter the details</a>
	</div>
	<%
		}
	%>

</body>
</html>