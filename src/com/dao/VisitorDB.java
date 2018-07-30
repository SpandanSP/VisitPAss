package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.bean.VisitorBean;

public class VisitorDB {

	public static int registerEntry(VisitorBean eb, String sql) {
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
			e.printStackTrace();
		}
		return i;
	}
	public static List<VisitorBean> visitorList(){
		Connection con = connection.createConnection();
		String sql = "SELECT v_id,v_fname,v_lname,v_add,date,intime,outtime FROM vpass.newv order by v_id desc";
		List<VisitorBean> visitorList = new ArrayList<VisitorBean>();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				VisitorBean bean = new VisitorBean();
				bean.setId(rs.getInt(1));
				bean.setV_fname(rs.getString(2));
				bean.setV_lname(rs.getString(3));
				bean.setV_add(rs.getString(4));
				bean.setDate(rs.getString(5));
				bean.setIntime(rs.getString(6));
				bean.setOuttime(rs.getString(7));
				visitorList.add(bean);
			}
		} catch (Exception e) {
		}
		return visitorList;
	}
	public static VisitorBean visitorById(int id) {
		Connection con = connection.createConnection();
		String sql = "SELECT * FROM vpass.newv where v_id = ?";
		VisitorBean bean = new VisitorBean();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				bean.setId(rs.getInt(1));
				bean.setV_fname(rs.getString(2));
				bean.setV_lname(rs.getString(3));
				bean.setV_add(rs.getString(4));
				bean.setGender(rs.getString(5));
				bean.setDate(rs.getString(6));
				bean.setIntime(rs.getString(7));
				bean.setOuttime(rs.getString(8));
				bean.setMno(rs.getString(9));
				bean.setEid(rs.getString(10));
				bean.setPurp(rs.getString(11));
				bean.setPerson(rs.getString(12));
				bean.setVctyp(rs.getString(13));
				bean.setVcno(rs.getString(14));
				
			}
		} catch (Exception e) {
		}
		return bean;
	}
	public static List<VisitorBean> visitorList(String name) {
		Connection con = connection.createConnection();
		String sql = "SELECT v_id,v_fname,v_lname,v_add,date,intime,outtime FROM vpass.newv where v_fname like ?";
		List<VisitorBean> visitorList = new ArrayList<VisitorBean>();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name+"%");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				VisitorBean bean = new VisitorBean();
				bean.setId(rs.getInt(1));
				bean.setV_fname(rs.getString(2));
				bean.setV_lname(rs.getString(3));
				bean.setV_add(rs.getString(4));
				bean.setDate(rs.getString(5));
				bean.setIntime(rs.getString(6));
				bean.setOuttime(rs.getString(7));
				visitorList.add(bean);
			}
		} catch (Exception e) {
		}
		return visitorList;
	}
	public static int submitExitTime(int id, String time) {
		Connection con = connection.createConnection();
		String sql = "UPDATE `vpass`.`newv` SET `outtime`=? WHERE `v_id`=?";
		int result = -1;
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, time);
			pst.setInt(2, id);
			pst.executeUpdate();
			result = 1;
			System.out.print(result);
		} catch (Exception e) {
		}
		return result;
	}
	public static VisitorBean getVisitorDetailsForPrint(String name,String date, String number) {
		Connection con = connection.createConnection();
		String sql = "SELECT v_id,v_fname,v_lname,date,intime,purp,vcno FROM vpass.newv where v_fname=? and date=? and mno=? ";
		VisitorBean bean = new VisitorBean();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, date);
			ps.setString(3, number);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				bean.setId(rs.getInt(1));
				bean.setV_fname(rs.getString(2));
				bean.setV_lname(rs.getString(3));
				bean.setDate(rs.getString(4));
				bean.setPurp(rs.getString(6));
				bean.setIntime(rs.getString(5));
				bean.setVcno(rs.getString(7));
			}
		} catch (Exception e) {
		}
		return bean;
		
	}
}

