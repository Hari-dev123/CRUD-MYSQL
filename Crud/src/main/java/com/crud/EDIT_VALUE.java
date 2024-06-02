package com.crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EDIT_VALUE {
    public User_Bean get_values_of_users(String str) {
    	Db_connection db = new Db_connection();
    	Connection con = db.getConnection();
    	String query = "select * from users where email=?";
    	User_Bean us = new User_Bean();
    	try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1,str);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				us.setUsername(rs.getString("email"));
				us.setPassword(rs.getString("password"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return us;  
    }
    
    
    public void Update_user(User_Bean obj) {
    	   Db_connection db = new Db_connection();
    	   Connection con = db.getConnection();
    	   String query = "update users set password=? where email=?";
    	   try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, obj.getPassword());
			ps.setString(2, obj.getUsername());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    
    
    
    
    
    
    
    
}
