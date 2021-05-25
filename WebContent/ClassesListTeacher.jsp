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
	<a href="" style="color:white;">Welcome  <% out.print((String)session.getAttribute("name"));  %> !!!</a>
   <a href="ClassesListTeacher.jsp">Home</a>
  <a href="/A4_WTL/AssignmentListTeacher.jsp">Assignments</a>
  <a href="/A4_WTL/compiler.jsp">Compiler</a> 
  <a href="/A4_WTL/index.html">Logout</a>
  </div>
  
  
  
  <table  id="customers" >
 
			  <tr>
			    <th>Class </th>
			    <th>Subject</th>
			    <th>View Students</th>
			  </tr>
  
  <%
	try{
		Connection con=ConnectionProvider.con();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from classtea where tid='"+(String)session.getAttribute("enrollment")+"'"); 
		while(rs.next())
		{
	%>
	<tr>
		
	 	<td><%=rs.getString(4) %></td>
    	<td><%=rs.getString(3) %></td>
    	<form method="get" id="myForm1" action="StudentListTeacher.jsp">
        <Input type="Hidden" name="class"  id="name" value="<%=rs.getString(4) %>"> 
        <Input type="Hidden" name="subject"  id="rollNo" value="<%=rs.getString(3) %>"> 
       	<td><Button type="submit" style="background:yellow;">View</Button></td>
   		 </form>
    	
    
	<tr>
	
	<%}}catch(Exception e){
		System.out.print(e);		
	}%>
	

	
	</table>
	

  
  
  

