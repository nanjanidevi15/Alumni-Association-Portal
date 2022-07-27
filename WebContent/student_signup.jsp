<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>student signup</title>
<style>
body {
	background-image: url("i2.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-size: 1550px 850px;
}

.login {
	position: absolute;
	left: 600px;
	top: 200px;
	padding: 18px 20px;
	width: 300px;
	background: #d9d9d9;
	background-clip: padding-box;
	border: 2px solid #172b4e;
	border-bottom-color: #142647;
	border-radius: 5px;
}

.heading {
	margin-bottom: 20px;
	font-size: 35px;
	font-family: Ubuntu medium;
	font-style: italic;
	color: #8B4513;
	text-align: center;
}

.login_input {
	display: block;
	padding: 8px;
}

.login-submit {
	background-position: 50% 50%;
	display: oval;
	width: 35%;
	height: 30px;
	margin-bottom: 15px;
	font-size: 16px;
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
	<form class="login" action="student_signupc.jsp" method="post">
		<h1 class="heading">Student Signup</h1>
		<input type="text" name="username" class="login_input"
			placeholder="User Name"><br> 
			<input type="text" name="name" class="login_input"
			placeholder="Full Name"><br> 
		<input type="text" name="regnumber" class="login_input"
			placeholder="Regrestion Number"><br> <input type="text"
			name="password" class="login_input" placeholder="Password"><br>
		<center>
			<input type="submit" value="Submit" class="login-submit">
		</center>
	</form>
</body>
</html>