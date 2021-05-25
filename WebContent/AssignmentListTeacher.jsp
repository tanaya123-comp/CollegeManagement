 <%@page import='project.ConnectionProvider' %>
  <%@page import='java.sql.*' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assignment Page</title>
<link rel="stylesheet" type="text/css" href="css/AssignmentListTeacher.css">
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
			    <th>Statement</th>
			    <th>Subject</th>
			  </tr>
  
  <%
	try{
		Connection con=ConnectionProvider.con();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from assignment "); 
		while(rs.next())
		{
	%>
	<tr>
	 	<td><%=rs.getString(2) %></td>
    	<td><%=rs.getString(4) %></td>

	<tr>
	
	<%}}catch(Exception e){
		System.out.print(e);		
	}%>
	

	
	</table>



</body>

</html>
