<%@page import="com.bean.VisitorBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Entry Successful!!</title>

  <link type="text/css" rel="stylesheet" href="CSS/style3.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="CSS/bootstrap.css">
  <script src="JS/Jquery.js"></script>
  <script src="JS/bootstrap.js"></script>
  
      <script type="text/javascript">
        function PrintDiv(id) {
            var data=document.getElementById(id).innerHTML;
            var myWindow = window.open('', 'my div', 'height=400,width=600');
            myWindow.document.write('<html><head>');
            /*optional stylesheet*/ //myWindow.document.write('<link rel="stylesheet" href="main.css" type="text/css" />');
            myWindow.document.write('</head><body><center><table border="1px" width="500px"><tr><td><center><img src ="Images/cutm.png" height="160px" width="160px"></img><br><br>');
            myWindow.document.write(data);
            myWindow.document.write('</center></td></tr></table></center></body></html>');
            myWindow.document.close(); // necessary for IE >= 10

            myWindow.onload=function(){ // necessary if the div contain images

                myWindow.focus(); // necessary for IE >= 10
                myWindow.print();
                myWindow.close();
            };
        }
      </script>
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
<center>
<div class="w3copyright-agile">
<p>
<font size="6">
"Successfull!!!"
<br>
</font>
</p>
</div>

<div id="myDiv">
<%
VisitorBean visitor = (VisitorBean)request.getAttribute("visitorDetails");
%>
<table class="entry">
	<tr><td>Id : <%= visitor.getId() %></td></tr>
	<tr><td>Name : <%=visitor.getV_fname()+" "+visitor.getV_lname() %></td></tr>
	<tr><td>Date : <%= visitor.getDate() %></td></tr>
	<tr><td>In Time : <%= visitor.getIntime() %></td></tr>
	<tr><td>Purpose : <%= visitor.getPurp() %></td></tr>
	<tr><td>Vehicle No : <%= visitor.getVcno() %></td></tr>
</table>
<%
%>
</div>
<br>
<font color="black"><button onclick="PrintDiv('myDiv')">Print</button></font>



</center>
</body>
</html>