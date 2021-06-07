 <%@page import='project.ConnectionProvider' %>
  <%@page import='java.sql.*' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assignment Page</title>
<link rel="stylesheet" type="text/css" href="css/ClassListTeacher.css">
</head>
<body>
<div class="sidenav">
<a href="">Welcome  <% out.print((String)session.getAttribute("name")); %>  !!!</a>
    <a href="/A4_WTL/dashboardStudent.jsp">Home</a>
 	<a href="/A4_WTL/compiler2.jsp">Compiler</a>
  <a href="/A4_WTL/index.html">Logout</a>
</div>


<h1 style="margin-left : 40%;">Submitted Assignments</h1>
<table  id="customers">
  <tr>
    <th>Subject Name</th>
    <th>Assignment</th>
    <th>Marks</th>
    <th>Remark</th>
  </tr>
 	<%
 	try{
		Connection con=ConnectionProvider.con();
		Statement st=con.createStatement();
		Statement st1=con.createStatement();
		
		ResultSet rs=st.executeQuery("select * from assignment where id="+request.getParameter("assignid")+"");
		ResultSet rs1=st1.executeQuery("select * from submission2 where assignid="+request.getParameter("assignid")+" and studid='"+session.getAttribute("enrollment")+"'");
		while(rs.next()&&rs1.next())
		{
 	%>
 	<tr>
	 	<td><%= rs.getString(4) %></td>
	 	<td><%= rs.getString(2) %></td>
	 	<td><%= rs1.getString(4) %></td>
	 	<td><%= rs1.getString(5) %></td>
    	
	</tr>
	
	<%}}catch(Exception e){
		System.out.print(e);		
	}%>
	
 	
 
</table>




              




     


</body>
</html>