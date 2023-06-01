<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Login | Assignment - 5</title>
		<link rel='stylesheet' href="${pageContext.request.contextPath}/css/login.css" type='text/css'></link>
	</head>
	<body>
		<div id="login_container">
			<h4 class="form_title welcome">Welcome back! CSAT Student</h4>
			<h4 class="form_title">Login</h4>
			<form method="post" action="login" class="login_form">
				<input type="hidden" id="status" value="<%= request.getAttribute("alert_status") %>"/>
				<table>
					<tr>
						<td>UserName</td>
						<td>:</td>
						<td><input type="text" name="user_name" class="user_name" required/></td>
					</tr>
					<tr>
						<td>Password</td>
						<td>:</td>
						<td><input type="password" name="password" class="password" required/></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td><input type="submit" name="login" class="login" value="Login"/></td>
					</tr>
				</table>
				<p>Do you want to create account? <a href="register.jsp">click here</a></p>
			</form>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
        <script type="text/javascript">
        	var status = document.getElementById("status").value;
        	if(status == null || status == "null"){
        		
        	}else{
        		if(status == "success"){
            		swal("Success", "Student Registered Successfully!", "success");  
            	}else{
            		swal("Error", "Login failed!", "error");
            	}
        	}        	        	
        </script>  
	</body>
</html>