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

<%
String code="";
try{
Connection con=ConnectionProvider.con();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("SELECT * FROM submission2 where idsubmission2="+request.getParameter("submitid")); 
while(rs.next()){
	code=rs.getString(3);
}}catch(Exception e){
	System.out.print(e);		
}
%>

<div  style="margin-top:50px;margin-left:550px;">

<label style="color:red;font-size:30px;">Code :</label>
<br>
<textarea id="code" name="code" rows="30" cols="60" >
<%=code %>
</textarea>
</div>

<div style="margin-left:500px;margin-top:50px;">
<form method="get" id="myForm1" action="IndividualAssignmentTeacher2.jsp">
<label style="color:red;font-size:30px;">Suggestions:</label>
<input type="text" id="suggestion" name="suggestion" >
<label style="color:red;font-size:30px;">Marks:</label>
<input type="number" name="marks">
 <input type="Hidden" name="submitid"  id="name" value="<%=request.getParameter("submitid") %>"> 
<button type="submit" style="background:yellow;">Submit</button>
</form>

</div>






</body>
</html>
