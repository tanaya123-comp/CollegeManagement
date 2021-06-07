<%@page import='project.ConnectionProvider' %>
<%@page import='java.sql.*' %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%

String studclass=(String) session.getAttribute("class");
String enroll=(String) session.getAttribute("enrollment");
String assid= request.getParameter("assignid");
	
	out.println(studclass);
	out.println(enroll);
	
	StringBuffer text = new StringBuffer(request.getParameter("ta1"));
	  
    int loc = (new String(text)).indexOf('\n');
    while(loc > 0){
        text.replace(loc, loc+1, "<BR>");
        loc = (new String(text)).indexOf('\n');
   }
   //out.println(text);
   String textcov=text.toString();
   try{
	Connection con=ConnectionProvider.con();
	Statement st=con.createStatement();
	PreparedStatement ps=con.prepareStatement("insert into submission2(assignid,text,subject,class,studid) values(?,?,?,?,?);");
	ps.setInt(1,Integer.parseInt(assid));
	ps.setString(2,textcov);
	ps.setString(3,request.getParameter("sub"));
	ps.setString(4,studclass);
	ps.setString(5,enroll);
	
	
	
	ps.executeUpdate();
	response.sendRedirect("/A4_WTL/dashboardStudent.jsp");
	
	/*ResultSet rs=st.executeQuery("select * from submission");
	while(rs.next()){
		String text1=rs.getString(4);
		out.println(text1);
	}*/
	
	
	
}catch(Exception e){
	out.println(e);	
}
%>