package com.crud;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import jakarta.servlet.http.HttpServlet;

public class Db_connection extends HttpServlet{
    
	public static void main(String[] args) {
		Db_connection obj = new Db_connection();
		System.out.println(obj.getConnection());
	}
	
	public Connection getConnection() {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root","1807");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return con;
		
	}
	
	
}
