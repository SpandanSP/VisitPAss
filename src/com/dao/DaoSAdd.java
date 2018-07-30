package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.SBean;

public class DaoSAdd {

	public static int sEntry(SBean sb, String sql) {
		// TODO Auto-generated method stub
		int i = 0;
		Connection con = connection.createConnection();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, sb.getFname());
			ps.setString(2, sb.getLname());
			ps.setString(3, sb.getAddr());
			ps.setString(4, sb.getMob());
			ps.setString(5, sb.getEmail());
			ps.setString(6, sb.getPass());
	
			i = ps.executeUpdate();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
	}

}
