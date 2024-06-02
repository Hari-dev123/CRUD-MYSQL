package com.crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Insert_values {
     public void Insert_vale(String email,String password) {
    	Db_connection obj = new Db_connection();
    	Connection con = obj.getConnection();
    	
    	PreparedStatement ps = null;
    	String query = "insert into users(email,password) values (?,?)";
    	try {
			ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2,password);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
      }
}
