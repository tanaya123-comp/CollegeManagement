 <%@page import='project.ConnectionProvider' %>
  <%@page import='java.sql.*' %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/ClassListTeacher.css">
<title>Insert title here</title>
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
			    <th>Assignment</th>
			    <th>View Assignment</th>
			  </tr>
  <%
	try{
		Connection con=ConnectionProvider.con();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from submission2 where studid='"+request.getParameter("en")+"' and subject='"+request.getParameter("subject")+"'"); 
		while(rs.next())
		{
	%>
	<tr>
		<td><%=rs.getString(2) %></td>
    	<form method="get" id="myForm1" action="IndividualAssignmentTeacher.jsp">
    	<Input type="Hidden" name="submitid"   value="<%=rs.getString(1) %>"> 
       	<td><Button type="submit" style="background:yellow;">View Assignment</Button></td>
   		 </form>
    	
    
	<tr>
	
	<%}}catch(Exception e){
		System.out.print(e);		
	}%>
	

	
	</table>



</body>
</html>