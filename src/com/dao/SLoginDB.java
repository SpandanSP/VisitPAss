package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SLoginDB {
	
	String sql = "select s_id,pass from security where s_id=? and pass=?";
	
	public boolean check(String s_id, String pass) {
		
		Connection con = connection.createConnection();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, s_id);
			ps.setString(2, pass);
			ResultSet rs= ps.executeQuery();
			if(rs.next())
			{
				return true;
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
		
	}

}
