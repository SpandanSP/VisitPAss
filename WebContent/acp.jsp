<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Admin CP</title>
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
<Center><font size="5px">Welcome Admin!</font></Center>
<br>

<center>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="Images/1.jpg" alt="cutm1">
    </div>

    <div class="item">
      <img src="Images/cutm2.jpg" alt="cutm2">
    </div>

    <div class="item">
      <img src="Images/cutm4.jpg" alt="cutm3">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</center>
	
	
</body>
</html>