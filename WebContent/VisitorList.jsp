<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.bean.VisitorBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Logs</title>

  <link type="text/css" rel="stylesheet" href="CSS/style3.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="CSS/bootstrap.css">
  <script src="JS/Jquery.js"></script>
  <script src="JS/bootstrap.js"></script>
<%
	List<VisitorBean> visitorList = (List<VisitorBean>)request.getAttribute("visitorList");
%>
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


	<center><font size=5>Logs!</font></center>
	<br>
	<center>
	<table class="entry" border="1px">
		<thead>
			<td>Id</td>
			<td>Name</td>
			<td>Address</td>
			<td>Date</td>
			<td>In Time</td>
			<td>Out Time</td>
		</thead>
		<tbody>
			<%
			for(VisitorBean v_info : visitorList){
				%>
				<tr>
					<td><%=v_info.getId()%></td>
					<td><a href="VisitorLogDetails?vId=<%=v_info.getId()%>"><%=v_info.getV_fname()+" "+v_info.getV_lname()%></a></td>
					<td><%=v_info.getV_add()%></td>
					<td><%=v_info.getDate()%></td>
					<td><%=v_info.getIntime()%></td>
					<td><%=v_info.getOuttime()%></td>
				</tr>
				<%
			}
			%>
		</tbody>
	</table>
	</center>
</body>
</html>