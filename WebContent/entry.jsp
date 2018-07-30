<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Visitor</title>

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
	
	<center><font size=5>Visitor's Registration Form!</font></center>
	<br>
<form action="Entry" method="post">

<table class="entry"  align="center" cellspacing="10">

<tr>
<td><b>First Name</b><br></td>
<td><input id="text" name="v_fname" placeholder="FIRST NAME" required="" type="text" size="30"></td>



<td><b>Last Name</b> <br></td>
<td><input id="text" name="v_lname" placeholder="LAST NAME" required="" type="text" size="30"></td>

</tr>

<tr>
<td><b>Address</b><br></td>
<td><input id="text" name="v_add" placeholder="FULL ADDRESS" required="" type="text" size="40"></td>

</tr>

<tr>
<td><b>Gender</b></td>
<td><input type="radio" name="gender" value="male" size="10">Male
<input type="radio" name="gender" value="Female" size="10">Female</td>
</tr>

<tr>

<td><b>Date</b></td>
<td><input id="calendar" name="date" placeholder="DAY-MONTH-YEAR" required="" type="date"></td>


<td><b>In Time</b></td>
<td><input id="text" name="intime" placeholder="eg 5:60 AM" required="" type="text" size="6"></td>

<!--<td><b>Out.Time</b></td>
<td><input id="text" name="outtime" placeholder="eg 5:60 AM" type="text" size="6"></td> -->


</tr>
<tr>
<td><b>Mobile No</b></td>
<td><input id="phone" name="mno" placeholder="+91" required="" type="text"></td>

</tr>

<tr>
<td><b>Email Id</b></td>
<td><input id="text" name="eid" placeholder="Email" required="" type="text" size="30"></td>


</tr>
<tr>
<td><b>Purpose of Visit</b></td>
<td><select name="purp">
<option value="-1" selected>Select..</option>
<option value="meeting">MEETING</option>
<option value="visiting">VISITING</option>
<option value="workshop">WORKSHOP</option>
<option value="seminar">SEMINAR</option>
<option value="admission">ADMISSION</option>
</select></td>
<td><b>Whom to Meet</b><br></td>

<td><input id="text" name="person" placeholder="PERSON" required="" type="text" size="30"></td>


</tr>

<tr>
<td colspan=6>
<center><font size=5><b><u>Vehicle Detail</u></b></font></center>
</td>
</tr>

<tr>

<td><b>Vehicle Type</b></td>

<td><input id="text" name="vctyp" placeholder="TYPE" required="" type="text" size="10"></td>



<td><b>Vehicle No</b></td>
<td><input id="text" name="vcno" placeholder="0000" required="" type="text" size="6"></td>




</tr>

<tr>
<td colspan="4"><input type="reset"></td>
<td colspan="1" ><input type="submit" value="Submit Form"></td>
</tr>
</table>
</form>
</body>
</html>