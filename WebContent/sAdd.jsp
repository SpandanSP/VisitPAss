<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Security</title>
  <link type="text/css" rel="stylesheet" href="CSS/style3.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="CSS/bootstrap.css">
  <script src="JS/Jquery.js"></script>
  <script src="JS/bootstrap.js"></script>
</head>
<body>

<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session.getAttribute("UID")==null)
	{
		response.sendRedirect("adminlogin.jsp");
	}
	
	%>
	<div>
		<table class="header">
			<tr>
				<td>
					<center><p> Admin Control Panel </p></center>
				</td>
			</tr>
		</table>
	</div>
	<div>
		<ul>
 			<li><a href="acp.jsp">Home</a></li>
  		 	<li><a href="sAdd.jsp">Add Security</a></li>
  		 	<li><a href="SecurityList">Security List</a></li>
  			<li><a href="VisitorList">View Logs</a></li>
  			<li><a href="Logout">Logout</a></li>
		</ul> 
	</div>

<center><font size="5px">Add Security!</font></center>
<br>
<form action="SAdd" method="post">

<table class="entry" cellpadding="4"  width="80%" height="420px!important" align="center"
cellspacing="10">


<tr>
<td><b>First Name</b><br></td>
<td><input id="text" name="fname" placeholder="FIRST NAME" required="" type="text" size="40"></td>



<td><b>Last Name</b> <br></td>
<td><input id="text" name="lname" placeholder="LAST NAME" required="" type="text" size="30"></td>

</tr>

<tr>
<td><b>Address</b><br></td>
<td><input id="text" name="addr" placeholder="FULL ADDRESS" required="" type="text" size="40"></td>

</tr>

<tr>
<td><b>Mobile No</b></td>
<td><input id="phone" name="mob" placeholder="+91" required="" type="text"></td>

</tr>

<tr>
<td><b>Email Id</b></td>
<td><input id="text" name="email" placeholder="Email" required="" type="text" size="30"></td>


</tr>
<tr>
<td><b>Password</b></td>
<td><input id="password" name="pass" placeholder="Password" required="" type="text" size="30"></td>

</tr>

<tr>
<td colspan=3><input type="reset"></td>
<td colspan=1><input type="submit" value="Submit"></td>
</tr>
</table>
</form>
</body>
</html>