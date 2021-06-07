 <%@page import='project.ConnectionProvider' %>
  <%@page import='java.sql.*' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DashBoard</title>
<link rel="stylesheet" type="text/css" href="css/ClassListTeacher.css">
</head>
<body>

<div class="sidenav">
<a href="">Welcome  <% out.print((String)session.getAttribute("name")); %>  !!!</a>
    <a href="/A4_WTL/dashboardStudent.jsp">Home</a>
  
 	<a href="/A4_WTL/compiler2.jsp">Compiler</a>
  <a href="/A4_WTL/index.html">Logout</a>
</div>

<% String name=(String)session.getAttribute("name");
	String studclass=(String) session.getAttribute("class");
	String enroll=(String) session.getAttribute("enrollment");
%>


<table  id="customers">
  <tr>
    <th>Subjects</th>
    <th>Number of assignment</th>
    <th>View</th>
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
    	<form method="get" id="myForm1" action="AssignmentListStudent.jsp">
        <Input type="Hidden" name="subname"  id="name" value="<%=rs.getString(3) %>"> 
       	<td><Button type="submit" style="background:yellow;">View</Button></td>
   		 </form>
    		
	<tr>
	
	<%}}catch(Exception e){
		System.out.print(e);		
	}%>
	
 	
 
</table>


</body>
</html>