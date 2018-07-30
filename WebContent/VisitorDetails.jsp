<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.bean.VisitorBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Visitor Details</title>

  <link type="text/css" rel="stylesheet" href="CSS/style3.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="CSS/bootstrap.css">
  <script src="JS/Jquery.js"></script>
  <script src="JS/bootstrap.js"></script>
<%
	VisitorBean v_info = (VisitorBean)request.getAttribute("visitorDetails");
%>
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

	<center><font size=5>Details!</font></center>
	<br>
	<center>
	<table class="entry" border="1px">
		<tbody>
				<tr>
					<td>Id</td><td><%=v_info.getId()%></td>
				</tr>
				<tr>
					<td>Name</td><td><%=v_info.getV_fname()+" "+v_info.getV_lname()%></td>
				</tr>
				<tr>
					<td>Address</td><td><%=v_info.getV_add()%></td>
				</tr>
				<tr>
					<td>Date</td><td><%=v_info.getDate()%></td>
				</tr>
				<tr>
					<td>In Time</td><td><%=v_info.getIntime()%></td>
				</tr>
				<tr>
					<td>Out Time</td><td><%=v_info.getOuttime()%></td>
				</tr>
				<tr>
					<td>Gender :</td><td><%= v_info.getGender() %></td>
				</tr>
				<tr>
					<td>Mobile No. :</td><td><%= v_info.getMno() %></td>
				</tr>
				<tr>
					<td>Email Id :</td><td><%= v_info.getEid()%></td>
				</tr>
				<tr>
					<td>Purpose :</td><td><%= v_info.getPurp() %></td>
				</tr>
				<tr>
					<td>Person to meet :</td><td><%= v_info.getPerson()%></td>
				</tr>
				<tr>
					<td>VC Type :</td><td><%= v_info.getVctyp() %></td>
				</tr>
				<tr>
					<td>VC No. :</td><td><%= v_info.getVcno() %></td>
				</tr>
		</tbody>
	</table>
	</center>
</body>
</html>