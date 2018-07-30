package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ALoginDB {
	
String sql = "select admin_id,admin_pass from admin where admin_id=? and admin_pass=?";
	
	public boolean check(String admin_id, String admin_pass) {
		
		Connection con = connection.createConnection();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, admin_id);
			ps.setString(2, admin_pass);
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
