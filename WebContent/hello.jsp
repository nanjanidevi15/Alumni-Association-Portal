<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome</title>
<style>
body {
	ssfont: 12px/20px 'Lucida Grande', Verdana, sans-serif;
	height: 600px;
	width: 700px;
	background-image: url(i1.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
	filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='.1.jpg',
		sizingMethod='scale');
	-ms-filter:
		"progid:DXImageTransform.Microsoft.AlphaImageLoader(src='1.jpg',sizingMethod='scale')";
}

.home {
	position: absolute;
	left: 500px;
	top: 200px;
	padding: 18px 20px;
	width: 600px;
	background: #d9d9d9;
	background-clip: padding-box;
	border: 2px solid #172b4e;
	border-bottom-color: #142647;
	border-radius: 5px;
}

.home>h1 {
	margin-bottom: 20px;
	font-size: 35px;
	font-weight: bold;
	color: #e60000;
	text-align: center;
	text-shadow: 0 -1px rgba(0, 0, 0, 0.4);
}

.home>h3 {
	margin-bottom: 5px;
	font-size: 25px;
	font-weight: bold;
	color: black;
}

.home>p {
	margin-bottom: 5px
}

.login-submit {
	background-position: 50% 50%;
	display: oval;
	width: 25%;
	height: 30px;
	margin-bottom: 15px;
	font-size: 18px;
	font-weight: bold;
	color: #294770;
	background: #adcbfa;
	background-clip: padding-box;
	border: 1px solid #284473;
	border-bottom-color: #223b66;
	border-radius: 4px;
	cursor: pointer;
}
</style>
</head>
<body>
	<form class="home" action="login_check.jsp" method="post">
		<h1>Alumni Association portal</h1>
		<h3>Login as:</h3>
		Alumni<input type="radio" name="radio" value="alumni"> Student<input
			type="radio" name="radio" value="student"> Admin<input
			type="radio" name="radio" value="admin"><br>
		<p>
		<table>
			<tr>
				<td>Username:</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"></td>
			</tr>
		</table>
		</p>
		<center>
			<input type="submit" value="login" class="login-submit">
		</center>
		<br> <a href="alumni_signup.jsp">Signup as Alumni</a> <a
			href="student_signup.jsp">Signup as Student</a>
	</form>
	
</body>
</html>