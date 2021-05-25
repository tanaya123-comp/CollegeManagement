<%@page import='project.ConnectionProvider' %>
<%@page import='java.sql.*' %>

<%
String username=request.getParameter("Uname");
String enrollment=request.getParameter("en");
String num=request.getParameter("num");
String Cls=request.getParameter("class");
String password=request.getParameter("Pass");

try{
	Connection con=ConnectionProvider.con();
	Statement st=con.createStatement();
	st.executeUpdate("INSERT INTO student VALUES ('"+username+"','"+enrollment+"',"+num+",'"+Cls+"','"+password+"')");
	response.sendRedirect("index.html");
	
	
}catch(Exception e){
	System.out.print(e);	
}

%>