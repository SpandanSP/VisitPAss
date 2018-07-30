<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login!</title>
		<link href="CSS/style2.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>
		<!--//webfonts-->
</head>
<body>
		<center><img src ="Images/cutm.png" height="160px" width="160px"></img></center>
				 <!-----start-main---->
				<div class="login-form">
						<h1>Security Login!</h1>
						<h2><a href="adminlogin.jsp">[Admin Login]</a></h2>
				<form action="SLogin" method="post">
					<li>
						<input type="text" class="text" name="s_id" value="User Id" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User Id';}" ><a href="#" class=" icon user"></a>
					</li>
					<li>
						<input type="password" name="pass" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"><a href="#" class=" icon lock"></a>
					</li>
					
					 <div class ="forgot">
						
						<input type="submit" onclick="myFunction()" value="Sign In" > <a href="#" class=" icon arrow"></a>                                                                                                                                                                                                                                 </h4>
					</div>
				</form>
			</div>
			<!--//End-login-form-->
		 		
</body>
</html>