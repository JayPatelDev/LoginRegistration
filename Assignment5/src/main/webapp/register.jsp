<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>SignUp / Register</title>		
		<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
		<link rel='stylesheet' href="${pageContext.request.contextPath}/css/register.css" type='text/css'></link>
	</head>
	<body>
		<div id="main_container">
			<h2 class="csat-home"><a href="index.jsp">CSAT - Home</a></h2>			
			<form method="post" action="signup">
				<input type="hidden" id="status" value="<%= request.getAttribute("alert_status") %>"/>
	            <div class="title_cls"><strong>Student Registration Form</strong></div>
	            <br>
	            <br>
	            <div class="personal_info">
	                <div class="section_title"><strong>Register with your details here</strong></div>
	                <div class="form_data">
	                    <table style="width: 100%;">
	                        <tr class="input_cls">
	                            <td class="col_1">USER NAME</td>
	                            <td class="col_2"><input type="text" name="user_name" class="no-outline user_name col_2"
	                             required oninvalid="this.setCustomValidity('Enter Your User Name Here')" oninput="this.setCustomValidity('')"/></td>
	                        </tr>
	                        <tr class="input_cls">
	                            <td class="col_1">PASSWORD</td>
	                            <td ><input type="password" name="password" class="no-outline col_2" 
	                            required oninvalid="this.setCustomValidity('Choose your password here')" oninput="this.setCustomValidity('')"/></td>
	                        </tr>
	                        <tr class="input_cls">
	                            <td class="col_1">EMAIL</td>
	                            <td ><input type="email" name="email" class="no-outline col_2" 
	                            required oninvalid="this.setCustomValidity('Choose your email here')" oninput="this.setCustomValidity('')"/></td>
	                        </tr>
	                        <tr class="input_cls">
	                            <td class="col_1">CONTACT</td>
	                            <td ><input type="text" name="contact" class="no-outline col_2" 
	                            required oninvalid="this.setCustomValidity('Enter your contact here')" oninput="this.setCustomValidity('')"/></td>
	                        </tr>
	                        <tr class="input_cls">
	                            <td class="col_1">CITY</td>
	                            <td ><input type="text" name="city" class="no-outline col_2" 
	                            required oninvalid="this.setCustomValidity('Enter your city here')" oninput="this.setCustomValidity('')"/></td>
	                        </tr>
	                    </table>
	                </div>
	            </div>
	            
	            <div class="register_buttons">
	            	<input type="submit" value="Register" class="register_button submit_button">&nbsp;
	            	<a href="register.jsp" class="clear_button submit_button">Clear</a>
	            </div>
	            <div class="login_div">
	            	<p>Already have an account? <a href="login.jsp">click here</a></p>
	            </div>
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
            		swal("Error", status, "error");
            	}
        	}        	        	
        </script>       
        
	</body>
</html>