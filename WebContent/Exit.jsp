<%@page import="com.bean.VisitorBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exit Visitor</title>
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
	
	<center><font size=5>Visitor's Return Form!</font></center>
	<br>

	<form action="SearchId" method="post">
		<center><label>Visitor Id :</label>
			<font color="black"><input type="text" name="visitorId" placeholder="eg. 011">
			<button type="submit" value="Search">Search</button></font></center>
	</form>
	<br>
	<%
		VisitorBean bean = (VisitorBean)request.getAttribute("visitorDetails");
		if(bean != null){
	%>
	<div>
	<center>
	<table class="entry" border="1px">
	<tr>
		<td>Id </td> 
		<td><%= bean.getId() %></td>
	</tr>
	<tr>
		<td>Name</td>
		<td><%= bean.getV_fname()+" "+bean.getV_lname() %></td>
	</tr>
	<tr>
		<td>Date</td>
		<td><%= bean.getDate() %></td>
	</tr>
	<tr>
		<td>In Time</td>
		<td> <%= bean.getIntime() %></td>
	</tr>
	</table>
	</center>
		<%
		if(bean.getOuttime() == null){
		%>
			<form action="SubmitExitTime" method="post"><center>
			<input type="hidden" name="id" value="<%=bean.getId()%>"><br>
			<label>Out Time :</label>
			<font color="black"><input id="text" name="exit_time" placeholder="eg 5:60 AM" type="text">
				<button type="submit" value="Submit">Submit</button></font></center>
			</form>
		<%
		}
		else{
		%>
			Out Time : <%= bean.getOuttime() %>
		<%
		}
		%>
		</div>
		<%
		}
	%>
</body>
</html>