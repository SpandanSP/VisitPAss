package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.EntryBean;

public class DaoEntry {

	public static int registerEntry(EntryBean eb, String sql) {
		// TODO Auto-generated method stub
		int i = 0;
		Connection con = connection.createConnection();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, eb.getV_fname());
			ps.setString(2, eb.getV_lname());
			ps.setString(3, eb.getV_add());
			ps.setString(4, eb.getGender());
			ps.setString(5, eb.getDate());
			ps.setString(6, eb.getIntime());
			ps.setString(7, eb.getOuttime());
			ps.setString(8, eb.getMno());
			ps.setString(9, eb.getEid());
			ps.setString(10, eb.getPurp());
			ps.setString(11, eb.getPerson());
			ps.setString(12, eb.getVctyp());
			ps.setString(13, eb.getVcno());
			
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

