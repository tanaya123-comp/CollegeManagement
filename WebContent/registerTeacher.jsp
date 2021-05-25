<%@page import='project.ConnectionProvider' %>
<%@page import='java.sql.*' %>

<%
String username=request.getParameter("Uname");
String enrollment=request.getParameter("En");
String email=request.getParameter("email");
String password=request.getParameter("Pass");

try{
	Connection con=ConnectionProvider.con();
	Statement st=con.createStatement();
	st.executeUpdate("INSERT INTO teacher VALUES ('"+username+"','"+enrollment+"','"+"CN"+"','"+email+"','"+"TE1"+"','"+password+"')");
	response.sendRedirect("index.html");
	
	
}catch(Exception e){
	System.out.print(e);	
}

%>