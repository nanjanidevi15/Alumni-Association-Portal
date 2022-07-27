<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>event</title>
<style>
body {
	background-image: url("i4.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-size: 1550px 755px;
}

.event {
	position: absolute;
	left: 600px;
	top: 100px;
	padding: 18px 20px;
	width: 200px;
	background: #d9d9d9;
	background-clip: padding-box;
	border: 2px solid #172b4e;
	border-bottom-color: #142647;
	border-radius: 5px;
}

.event>h1 {
	margin-bottom: 20px;
	font-size: 35px;
	font-weight: bold;
	color: #e60000;
	text-align: center;
	text-shadow: 0 -1px rgba(0, 0, 0, 0.4);
}

.event_input {
	display: block;
	padding: 8px;
}

.login-submit {
	background-position: 50% 50%;
	display: oval;
	width: 35%;
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
	<form class="event" action="post_eventc.jsp" method="post">
		<h1>Add event</h1>
		<input type="text" name="ename" class="event_input"
			placeholder="Event Name"><br> <input type="text"
			name="date" class="event_input" placeholder="Date"><br>
		<input type="text" name="time" class="event_input"
			placeholder="Timings"><br> <input type="text"
			name="venue" class="event_input" placeholder="Venue"><br>
		<input type="text" name="description" class="event_input"
			placeholder="Description"><br>
		<center>
			<input type="submit" value="submit" class="login-submit">
		</center>
	</form>

</body>
</html>