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
<%
String studclass=(String) session.getAttribute("class");
String enroll=(String) session.getAttribute("enrollment");
int t;

%>


<table  id="customers">
  <tr>
    <th>Assignments</th>
    <th>View</th>
  </tr>
 	<%
 	try{
		Connection con=ConnectionProvider.con();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from assignment where subjectName='"+request.getParameter("subname")+"'");
		while(rs.next())
		{
 	%>
 	<tr>
	 	<td><%= rs.getString(2) %></td>
	 	<% 
	 	int assid= rs.getInt(1);
 	    int id= rs.getInt(1);
 	  	ResultSet rs1=st.executeQuery("select * from submission2 where assignid="+id+" and studid ='"+enroll+"'");
 	  	if(rs1.next()){
 		 %> <form method="get" id="myForm1" action="IndividualAssignmentStudent.jsp">
        <Input type="Hidden" name="assignid"  id="name" value="<%=assid %>"> 
       	<td><Button type="submit" style="background:yellow;">View Assignment</Button></td></td><% 
 	  	}
 	  	else{
 		 %> <form method="get" id="myForm1" action="compiler2.jsp">
        <Input type="Hidden" name="assignid"  id="name" value="<%=assid %>"> 
        <Input type="Hidden" name="subj"  id="name" value="<%=request.getParameter("subname") %>"> 
       	<td><Button type="submit" style="background:yellow;">Submit</Button></td><% 
 	  	}
	 	%>
	</tr>
	
	<%}}catch(Exception e){
		System.out.print(e);		
	}%>
	
 	
 
</table>





              




     


</body>
</html>