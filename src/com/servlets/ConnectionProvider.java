package com.servlets;
import java.sql.*;

public class ConnectionProvider {
	
	public static Connection con() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wtl?useSSL=false&allowPublicKeyRetrieval=true","root","password");
			return con;
			
		}catch(Exception e) {
			System.out.print(e);
			return null;
		}
		
	
	}

}
