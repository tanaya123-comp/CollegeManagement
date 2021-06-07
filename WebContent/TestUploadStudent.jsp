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




<div>
<h1 style=" margin-left: 400px">Enter your code here</h1>
<form action="TestUploadStudent2.jsp" method="get">
<textarea rows="30" cols="100" style=" margin-left: 400px" name="ta1">Text Sample</textarea>
<br><br>
 <Input type="Hidden" name="assignid"  id="assignid" value="<%=request.getParameter("assignid") %>"> 
 <Input type="Hidden" name="sub"  id="sub" value="<%=request.getParameter("sub") %>"> 
<input type="submit" style=" width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 17px;  
    padding-left: 7px;  
    color: black;  
    margin-left:450px;
    Background:yellow;" value="submit" id="log">
</form>
              




     


</body>
</html>