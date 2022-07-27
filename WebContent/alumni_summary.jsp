<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alumni Summary</title>
<style type="text/css">
.heading {
	margin-bottom: 20px;
	font-size: 35px;
	font-family: Ubuntu medium;
	font-style: italic;
	color: #8B4513;
	text-align: center;
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

.h3 {
	margin-bottom: 5px;
	font-size: 25px;
	font-weight: bold;
	color: black;
	text-align: center;
}
</style>
</head>
<body>
	<h1 class="heading">Alumni Summary</h1>
	<h3 class="h3">Company</h3>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aap", "root", "");
		PreparedStatement pst = con
				.prepareStatement("SELECT company,count(*) as count FROM alumni group by company");
		ResultSet rs = pst.executeQuery();
	%>
	<center>
		<table class="content-table">
			<thead>
				<tr>
					<th>Company</th>
					<th>Number of Alumni</th>
				</tr>
			</thead>
			<tbody>
				<%
					while (rs.next()) {
				%><tr>
					<td>
						<%
							out.println(rs.getString("company"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("count"));
						%>
					</td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</center>
	<h3 class="h3">City</h3>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/aap", "root", "");
		PreparedStatement pst1 = con1.prepareStatement("SELECT city,count(*) as count FROM alumni group by city");
		ResultSet rs1 = pst1.executeQuery();
	%>
	<center>
		<table class="content-table">
			<thead>
				<tr>
					<th>City</th>
					<th>Number of Alumni</th>
				</tr>
			</thead>
			<tbody>
				<%
					while (rs1.next()) {
				%><tr>
					<td>
						<%
							out.println(rs1.getString("city"));
						%>
					</td>
					<td>
						<%
							out.println(rs1.getString("count"));
						%>
					</td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</center>
</body>
</html>