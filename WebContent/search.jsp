<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>search</title>
<style type="text/css">
body {
	background-image: url("i5.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-size: 1550px 755px;
}

.home {
	position: absolute;
	left: 850px;
	top: 150px;
	padding: 18px 20px;
	width: 400px;
	background: #d9d9d9;
	background-clip: padding-box;
	border: 2px solid #172b4e;
	border-bottom-color: #142647;
	border-radius: 5px;
}

.home>h1 {
	margin-bottom: 10px;
	font-size: 35px;
	font-weight: bold;
	color: #e60000;
	text-align: center;
	text-shadow: 0 -1px rgba(0, 0, 0, 0.4);
}

.home>h3 {
	mar font-size: 25px;
	font-weight: bold;
	color: black;
}

.home>p {
	margin-bottom: 1px;
}

.login_input {
	display: block;
	padding: 8px;
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
<body class="bg">
	<form class="home" action="search_result.jsp" method="post">
		<h1>Search</h1>
		Search based on:<BR> Alumni Name<input type="radio" name="radio"
			value="name"> Company<input type="radio" name="radio"
			value="company"> City<input type="radio" name="radio"
			value="city"><br>
		<BR> <input type="text" name="search" placeholder="Enter here"
			class="login-input"><br>
		<br>
		<center>
			<input type="submit" value="Search" class="login-submit">
		</center>
	</form>
</body>
</html>