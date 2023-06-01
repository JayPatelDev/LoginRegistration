<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Assignment-5</title>
	<style>
		body{
			font-family: Arial, Helvetica, sans-serif;
			background-color: Green;
		}
		#home_buttons{
			position: absolute;
            left: 35%;
            top: 20%;
            border-radius: 5px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            width: 340px;
            height: 200px;
            padding-top: 10px;
            background-color: white;
		}
		
		.home_buttons{
			text-align: center;
			margin-top: 25px;
		}
		
		.register_btn{
			background-color: yellow;
		}
		
		.login_btn{
			background-color: #04AA6D;
		}
		
		a:link, a:visited {
			color: white;
			padding: 14px 25px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			border-radius: 5px;
		}
		
		a:hover, a:active {
			background-color: red;
		}
		h4{
			text-align: center;
		}
	</style>
</head>
<body>
	<div id="home_buttons">
		<h4>Welcome to <blink>CSAT</blink> Students</h4>
		<div class="home_buttons">
			<a href="register.jsp" class="register_btn">Register</a>
			<br><br>
			<a href="login.jsp" class="login_btn">Login</a>
		</div>
	</div>
</body>
</html>