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
<title>update results</title>
</head>
<body>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aap", "root", "");
		if (request.getParameter("radio") != null) {
			if (request.getParameter("radio").equals("company")) {
				PreparedStatement pst = con.prepareStatement("update alumni set company = ? where username = ?");
				pst.setString(1, request.getParameter("value"));
				pst.setString(2, request.getParameter("username"));
				int r = pst.executeUpdate();
				if (r == 1) {
	%>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-success">
			<strong>Success!</strong> Your details are updated
		</div>
		<a href="alumni_home.jsp" class="btn btn-info">Goto home page</a>
	</div>
	<%
		} else {
	%>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-danger">
			<strong>Danger!</strong>can't update,check the username you entered.
		</div>
		<a href="update.jsp" class="btn btn-info">update</a>
	</div>
	<%
		}
			}
			if (request.getParameter("radio").equals("city")) {
				PreparedStatement pst = con.prepareStatement("update alumni set city=? where username=?");
				pst.setString(1, request.getParameter("value"));
				pst.setString(2, request.getParameter("username"));
				int r = pst.executeUpdate();
				if (r == 1) {
	%>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-success">
			<strong>Success!</strong> Your details are updated
		</div>
		<a href="alumni_home.jsp" class="btn btn-info">Goto home page</a>
	</div>
	<%
		} else {
	%>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-danger">
			<strong>Danger!</strong>can't update,check the username you entered.
		</div>
		<a href="update.jsp" class="btn btn-info">update</a>
	</div>
	<%
		}
			}
			if (request.getParameter("radio").equals("contact")) {
				PreparedStatement pst = con.prepareStatement("update alumni set contact=? where username=?");
				pst.setString(1, request.getParameter("value"));
				pst.setString(2, request.getParameter("username"));
				int r = pst.executeUpdate();
				if (r == 1) {
	%>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-success">
			<strong>Success!</strong> Your details are updated
		</div>
		<a href="alumni_home.jsp" class="btn btn-info">Goto home page</a>
	</div>
	<%
		} else {
	%>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-danger">
			<strong>Danger!</strong>can't update,check the username you entered.
		</div>
		<a href="update.jsp" class="btn btn-info">update</a>
	</div>
	<%
		}
			}
		} else {
	%>
	<div class="container">
		<h2>Alerts</h2>
		<div class="alert alert-danger">
			<strong>Danger!</strong> please select the detail you want to update
		</div>
		<a href="update.jsp" class="btn btn-info">update</a>
	</div>
	<%
		}
	%>
</body>
</html>