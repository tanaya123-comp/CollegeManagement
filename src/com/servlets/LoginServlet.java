package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
	
	
	
	public void  doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		String enrollment=(req.getParameter("Uname"));
		String password=(req.getParameter("Pass"));
		
		System.out.print("In here");
		
		PrintWriter out=res.getWriter();
		
		out.print(enrollment+" "+password);
		
		//HttpSession session=req.getSession()
		//session.setAttribute(key,value)
		//(type cast)session.getAttribute(key)
		//session.removeAttribute(key)
		
		
		
		
		//request dispatcher to go from one servlet to other
		//redirect session management
		
	}
	
	public void  doGet(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		String enrollment=(req.getParameter("Uname"));
		String password=(req.getParameter("Pass"));
		
		System.out.print("In here");
		
		PrintWriter out=res.getWriter();
		
		out.print(enrollment+" "+password);
		
	}

}
