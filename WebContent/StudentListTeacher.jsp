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
			    <th>Student Name </th>
			    <th>Roll Num</th>
			    <th>Enrollment Num</th>
			  </tr>
  
  <%
	try{
		Connection con=ConnectionProvider.con();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from student where class='"+request.getParameter("Class")+"'"); 
		while(rs.next())
		{
	%>
	<tr>
		<td><%=rs.getString(1) %></td>
	 	<td><%=rs.getString(3) %></td>
    	<td><%=rs.getString(2) %></td>
    	<form method="get" id="myForm1" action="StudentListTeacher.jsp">
       	<td><Button type="submit" style="background:yellow;">View Assignments</Button></td>
   		 </form>
    	
    
	<tr>
	
	<%}}catch(Exception e){
		System.out.print(e);		
	}%>
	

	
	</table>




              




     


</body>
</html>