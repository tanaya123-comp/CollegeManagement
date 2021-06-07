<%@page import='project.ConnectionProvider' %>
  <%@page import='java.sql.*' %>
<%@page import='project.ConnectionProvider' %>
  <%@page import='java.sql.*' %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%
    	
    try{
    	Connection con=ConnectionProvider.con();
    	Statement st=con.createStatement();
    	int x=st.executeUpdate("UPDATE submission2 SET marks="+request.getParameter("marks")+", remark='"+request.getParameter("suggestion")+"' where idsubmission2="+request.getParameter("submitid")+";"); 
    	response.sendRedirect("ClassesListTeacher.jsp");
    }catch(Exception e){
    	System.out.print(e);
    }
    
    %>
