package com.crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.mysql.cj.protocol.Resultset;
import java.util.ArrayList;
import java.util.List;
public class Read_values {
	public static void main(String[] args) {
	Read_values obj = new Read_values();
	obj.get_Values();
	User_Bean ob = new User_Bean();
	  System.out.println(ob.getUsername());
	}
   public List<User_Bean> get_Values() {
	   Db_connection obj = new Db_connection();
	   Connection con = obj.getConnection();
	   String  query = "select * from users";
	   PreparedStatement st = null;
	   
	   ResultSet rs = null;
	   List<User_Bean>  list = new ArrayList<User_Bean>();
	   try {
		st = con.prepareStatement(query);
		rs = st.executeQuery();
		while(rs.next()) {
			User_Bean obj2 = new User_Bean();
		     obj2.setUsername(rs.getString("email"));
		     obj2.setPassword(rs.getString("password"));
		     list.add(obj2);
//			System.out.println(rs.getString("email"));
//			System.out.println(rs.getString("password"));
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return list;
   }
}
