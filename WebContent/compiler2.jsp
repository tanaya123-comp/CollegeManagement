<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/ClassListTeacher.css">
</head>
<body>




<div class="sidenav">
<a href="">Welcome  <% out.print((String)session.getAttribute("name")); %>  !!!</a>
    <a href="/A4_WTL/dashboardStudent.jsp">Home</a>
  
 	<a href="/A4_WTL/compiler2.jsp">Compiler</a>
  <a href="/A4_WTL/index.html">Logout</a>
  
  
</div>

<div id="customers" >

<form method="get" id="myForm1" action="TestUploadStudent.jsp">
   <Input type="Hidden" name="assignid"  id="assignid" value="<%=request.getParameter("assignid") %>"> 
    <Input type="Hidden" name="sub"  id="sub" value="<%=request.getParameter("subj") %>"> 
	<input type="submit" style=" width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 17px;  
    padding-left: 7px;  
    color: black;  
    margin-left:450px;
    Background:yellow;" value="submit" id="log">
    </form>

 <div data-pym-src=
"https://www.jdoodle.com/embed/v0/2IhG?stdin=1&arg=0">
    </div>
  
    <!-- This script tag contains the 
        javascript code in the written URL -->
    <script src=
"https://www.jdoodle.com/assets/jdoodle-pym.min.js"
        type="text/javascript">
    </script>
    
    
   
   </div>
   
  
   
   
   
   

</body>
</html>