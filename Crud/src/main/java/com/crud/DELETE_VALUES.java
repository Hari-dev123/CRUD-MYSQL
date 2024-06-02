package com.crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DELETE_VALUES {
       public void delete_user(String str) {
    	    Db_connection db = new Db_connection();
    	    Connection con = db.getConnection();
    	    String query = "delete from users where email=?";
    	    try {
				PreparedStatement ps = con.prepareStatement(query);
				ps.setString(1,str);
				ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	    
       }
}
