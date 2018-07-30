<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>

  <link type="text/css" rel="stylesheet" href="CSS/style3.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="CSS/bootstrap.css">
  <script src="JS/Jquery.js"></script>
  <script src="JS/bootstrap.js"></script>
</head>

<body>

<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session.getAttribute("SID")==null)
	{
		response.sendRedirect("index.jsp");
	}
	
	%>
	<div>
		<table class="header">
			<tr>
				<td>
					<center><p> Visitor's PASS System </p></center>
				</td>
			</tr>
		</table>
	</div>
	<div>
		<ul>
 			<li><a href="home.jsp">Home</a></li>
  		 	<li><a href="entry.jsp">New Visitor</a></li>
  		 	<li><a href="Exit.jsp">Exit Visitor</a></li>
  			<li><a href="VisitorSearch.jsp">Search</a></li>
  			<li><a href="SLogout">Logout</a></li>
		</ul> 
	</div>

		<center><b>Welcome User!&nbsp &nbsp Your Login id :<font color="#fff!important"> ${SID}</font></b> </center>

		<div id="imgbox">
			<center><img src="Images/cutm4.jpg" style="width:85%!important;height:540px!important;"></center>
		<div id="about">
		</div>
		</div>
 
</body>
</html>