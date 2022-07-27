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
<title>Admin Home</title>
<style>
body {
	font: 12px/20px 'Lucida Grande', Verdana, sans-serif;
	color: #404040;
	background-image: url("i3.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-size: 1650px 760px;
}

.content-table {
	table-align: center;
	border-collapse: collapse;
	margin: 25px 0;
	font-size: 0.9em;
	min-width: 400px;
	border-radius: 5px 5px 0 0;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
	font-family: Helvetica;
}

.content-table thead tr {
	background-color: #DAA520;
	color: #ffffff;
	text-align: left;
	font-weight: bold;
	font-size: 20px;
}

.content-table th, .content-table td {
	padding: 12px 15px;
}

.content-table tbody tr {
	border-bottom: 1px solid #dddddd;
	font-size: 15px;
}

.content-table tbody tr:nth-of-type(even) {
	background-color: #f3f3f3;
}

.content-table tbody tr:last-of-type {
	border-bottom: 4px solid #DAA520;
}

.home {
	position: absolute;
	left: 1100px;
	top: 250px;
	padding: 18px 20px;
	width: 300px;
	background-clip: padding-box;
	border-bottom-color: #142647;
	background: #d9d9d9;
}

.events {
	position: absolute;
	left: 150px;
	top: 200px;
	padding: 18px 20px;
	width: 800px;
	height:530px;
	background-clip: padding-box;
	border-bottom-color: #142647;
	background: #d9d9d9;
	overflow:auto;
}

.home>a {
	margin-bottom: 20px;
}

.heading {
	margin-bottom: 20px;
	font-size: 35px;
	color: #8B4513;
	text-align: center;
	padding: 18px 20px;
	background-clip: padding-box;
	background: #d9d9d9;
}

h3 {
	margin-bottom: 5px;
	font-size: 25px;
	font-weight: bold;
}
</style>
</head>
<body>
	<h1 class="heading">Welcome to Alumni Association Portal</h1>
	<div class="home">
		<a href="post_event.jsp" class="btn btn-info">Add New Event</a><br>
		<a href="event_gallery.jsp" class="btn btn-info">Events Gallery</a><br>
		<a href="search.jsp" class="btn btn-info">Search for alumni</a><br>
		<a href="alumni_summary.jsp" class="btn btn-info">Alumni Summary</a><br>
		<a href="update.jsp" class="btn btn-info">Update details</a><br>
		<a href="delete_alumni.jsp" class="btn btn-info">Delete Alumni</a><br>
		<a href="delete_student.jsp" class="btn btn-info">Delete Student</a><br>
	</div>
	<div class="events">
		<center>
			<h3>Events</h3>
		</center>
		<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aap", "root", "");
			PreparedStatement pst = con.prepareStatement("select * from event");
			ResultSet rs = pst.executeQuery();
		%>
		<table class="content-table">
			<thead>
				<tr>
					<th>Event name</th>
					<td>Date</td>
					<th>Time</th>
					<th>Venue</th>
					<th>Description</th>
				</tr>
			</thead>
			<tbody>
				<%
					while (rs.next()) {
				%><tr>
					<td>
						<%
							out.println(rs.getString("ename"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("date"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("time"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("venue"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("description"));
						%>
					</td>
				</tr>
				<%
	   }
	 %>
			</tbody>
		</table>
	</div>
	<%
%>
</body>
</html>