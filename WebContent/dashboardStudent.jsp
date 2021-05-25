 <%@page import='project.ConnectionProvider' %>
  <%@page import='java.sql.*' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DashBoard</title>
<link rel="stylesheet" type="text/css" href="css/dashboard.css">
</head>
<body>

<div class="sidenav">
<a href="">Welcome  <% out.print((String)session.getAttribute("name")); %>  !!!</a>
    <a href="/A4_WTL/dashboardStudent.html">Home</a>
  <a href="/A4_WTL/ProfileStudent.html">Profile</a>
  <a href="/A4_WTL/IndividualAssignmentStudent.html">Assignment</a>
  <a href="#calender">Calender</a>
 
  <a href="#logout">Logout</a>
</div>

<%
System.out.print((String)session.getAttribute("name"));
%>


<table  id="customers">
  <tr>
    <th>Subjects</th>
    <th>Number of assignment</th>
  </tr>
 	<%
 	try{
		Connection con=ConnectionProvider.con();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from classtea where class='"+(String)session.getAttribute("class")+"'"); 
		while(rs.next())
		{
 	%>
 	<tr>
	 	<td><%=rs.getString(3) %></td>
    	<td><%=rs.getString(5) %></td>
	<tr>
	
	<%}}catch(Exception e){
		System.out.print(e);		
	}%>
	
 	
 
</table>


</body>
</html>