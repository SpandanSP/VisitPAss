package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.SecurityBean;

public class SecurityDB {

	public static int sEntry(SecurityBean sb, String sql) {
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
			e.printStackTrace();
		}
		return i;
	}
	public static List<SecurityBean> securityList(){
		Connection con = connection.createConnection();
		String sql = "SELECT * FROM vpass.security";
		List<SecurityBean> securityList = new ArrayList<SecurityBean>();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				SecurityBean  bean = new SecurityBean();
				bean.setId(rs.getInt(1));
				bean.setFname(rs.getString(2));
				bean.setLname(rs.getString(3));
				bean.setAddr(rs.getString(4));
				bean.setMob(rs.getString(5));
				bean.setPass(rs.getString(7));
				securityList.add(bean);
			}
		} catch (Exception e) {
			
		}
		return securityList;
	}
	public static int deleteSecurity(int id) {
		Connection con = connection.createConnection();
		String sql = "DELETE FROM `vpass`.`security` WHERE `s_id`=?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			return ps.executeUpdate();
		} catch (Exception e) {
		}
		return 0;
	}

}
