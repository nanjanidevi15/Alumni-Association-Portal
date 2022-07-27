<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete student</title>
<style>
body {
	background-image: url("i6.JPG");
	background-size: cover;
	background-repeat: no-repeat;
	background-size: 1540px 760px;
}


.login {
	position: absolute;
	left: 600px;
	top: 300px;
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
	<form class="login" action="delete_studentc.jsp" method="post">
		<h1 class="heading">Delete Student</h1>
		<input type="text" name="regnumber" class="login_input"
			placeholder="Registration Number"><br>
		<center>
			<input type="submit" value="Delete" class="login-submit">
		</center>
	</form>

</body>
</html>