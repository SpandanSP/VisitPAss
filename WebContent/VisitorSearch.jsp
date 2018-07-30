<%@page import="com.dao.VisitorDB"%>
<%@page import="com.bean.VisitorBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search</title>

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
	
	<center><font size=5>Search!</font></center>
	<br>

<center>
<form action="VisitorSearch" method="post">
<label>Visitor Name :</label>
<font color="black">
<input type="text" name="visitorName">
<input type="submit" value="Search">
</font>
</form>
<br>
<div>
<%
	List<VisitorBean> visitorList1 = (List<VisitorBean>)request.getAttribute("visitorList1");
	if(visitorList1 != null){
		%>
		<table  class="entry" border="1px">
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
				for(VisitorBean v_info : visitorList1){
					%>
					<tr>
						<td><%=v_info.getId()%></td>
						<td><a href="VisitorDetails?vId=<%=v_info.getId()%>"><%=v_info.getV_fname()+" "+v_info.getV_lname()%></a></td>
						<td><%=v_info.getV_add()%></td>
						<td><%=v_info.getDate()%></td>
						<td><%=v_info.getIntime()%></td>
						<td><%=v_info.getOuttime()%></td>
					</tr>
					<%
				}
				%>
			</tbody>
		<%
	}
	else{
		List<VisitorBean>  visitorList = VisitorDB.visitorList();
		if(visitorList != null){
			%>
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
							<td><a href="VisitorDetails?vId=<%=v_info.getId()%>"><%=v_info.getV_fname()+" "+v_info.getV_lname()%></a></td>
							<td><%=v_info.getV_add()%></td>
							<td><%=v_info.getDate()%></td>
							<td><%=v_info.getIntime()%></td>
							<td><%=v_info.getOuttime()%></td>
						</tr>
						<%
					}
					%>
				</tbody>
			<%
		}
	}
%>
</div>
</center>
</body>
</html>