<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<style type="text/css">
body {
	background-image: url("i7.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-size: 1550px 755px;
}

.login {
	position: absolute;
	left: 600px;
	top: 150px;
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

h3 {
	margin-bottom: 1px;
	font-size: 25px;
	font-weight: bold;
	color: black;
}
</style>
</head>
<body>
	<form class="login" action="change_passwordc.jsp" method="post">
		<h1 class="heading">Change Password</h1>
		<h3>User</h3>
		<br> Alumni<input type="radio" name="radio" value="alumni">
		Student<input type="radio" name="radio" value="student"><br>
		<input type="text" name="username" placeholder="Username"
			class="login_input"><br> <input type="text"
			name="password" placeholder="Enter new Password" class="login_input"><br>
		<center>
			<input type="submit" value="Change" class="login-submit">
		</center>
	</form>
</body>
</html>