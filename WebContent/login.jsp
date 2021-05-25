<%@page import='project.ConnectionProvider' %>
<%@page import='java.sql.*' %>

<% 
String username=request.getParameter("Uname");
String password=request.getParameter("Pass");
char[] arr=username.toCharArray();

if(arr[0]=='S')
{
	try{
		Connection con=ConnectionProvider.con();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select name,Rollno,class from student where ENO ='"+username+"' and password ='"+password+"'"); 
		Boolean status=rs.next();
		System.out.print(status);
		if(status==true)
		{
			session.setAttribute("enrollment",username);
			session.setAttribute("name",rs.getString(1)); 
			session.setAttribute("class",rs.getString(3));
			System.out.print((String)session.getAttribute("name"));
			response.sendRedirect("dashboardStudent.jsp");
		}
		else
		{
			response.sendRedirect("index.html");
		}
		
		
	}catch(Exception e){
		System.out.print(e);	
	}

	
}else
{
	try{
		Connection con=ConnectionProvider.con();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select name,subject,Email,class from teacher where ENO='"+username+"' and password ='"+password+"'"); 
		Boolean status=rs.next();
		if(status==true)
		{
			session.setAttribute("enrollment",username);
			session.setAttribute("name",rs.getString(1)); 
			//System.out.print((String)session.getAttribute("name"));
			response.sendRedirect("ClassesListTeacher.jsp");
		}
		else
		{
			response.sendRedirect("index.html");
		}
		
		
	}catch(Exception e){
		System.out.print(e);		
	}

}



%>