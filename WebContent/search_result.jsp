<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>search result</title>
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
</style>
</head>
<body>
	<h1 class="heading">Search Result</h1>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aap", "root", "");
		if (request.getParameter("radio") != null) {
			if (request.getParameter("radio").equals("name")) {
				PreparedStatement pst = con.prepareStatement("select * from alumni where name=?");
				pst.setString(1, request.getParameter("search"));
				ResultSet rs = pst.executeQuery();
	%>
	<center>
		<table class="content-table">
			<thead>
				<tr>
					<th>Name</th>
					<th>Registration Number</th>
					<th>Year</th>
					<th>Branch</th>
					<th>Company</th>
					<th>City</th>
					<th>Email ID</th>
					<th>Contact</th>
				</tr>
			</thead>
			<tbody>
				<%
					while (rs.next()) {
				%>
				<tr>
					<td>
						<%
							out.println(rs.getString("name"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("regnumber"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("year"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("branch"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("company"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("city"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("email"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("contact"));
						%>
					</td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</center>
	<%
		}
			if (request.getParameter("radio").equals("company")) {
				PreparedStatement pst = con.prepareStatement("select * from alumni where company=?");
				pst.setString(1, request.getParameter("search"));
				ResultSet rs = pst.executeQuery();
	%>
	<center>
		<table class="content-table">
			<thead>
				<tr>
					<th>Name</th>
					<th>Registration Number</th>
					<th>Year</th>
					<th>Branch</th>
					<th>Company</th>
					<th>City</th>
					<th>Email ID</th>
					<th>Contact</th>
				</tr>
			</thead>
			<tbody>
				<%
					while (rs.next()) {
				%>
				<tr>
					<td>
						<%
							out.println(rs.getString("name"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("regnumber"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("year"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("branch"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("company"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("city"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("email"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("contact"));
						%>
					</td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</center>
	<%
		}
			if (request.getParameter("radio").equals("city")) {
				PreparedStatement pst = con.prepareStatement("select * from alumni where city=?");
				pst.setString(1, request.getParameter("search"));
				ResultSet rs = pst.executeQuery();
	%>
	<center>
		<table class="content-table">
			<thead>
				<tr>
					<th>Name</th>
					<th>Registration Number</th>
					<th>Year</th>
					<th>Branch</th>
					<th>Company</th>
					<th>City</th>
					<th>Email ID</th>
					<th>Contact</th>
				</tr>
			</thead>
			<tbody>
				<%
					while (rs.next()) {
				%>
				<tr>
					<td>
						<%
							out.println(rs.getString("name"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("regnumber"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("year"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("branch"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("company"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("city"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("email"));
						%>
					</td>
					<td>
						<%
							out.println(rs.getString("contact"));
						%>
					</td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</center>

	<%
		}
		}
	%>
</body>
</html>