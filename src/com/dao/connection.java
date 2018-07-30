package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class connection {
	public static Connection createConnection() {
		Connection con = null;
		String url = "jdbc:mysql://localhost:3306/vpass";
		String username = "root";
		String password = "root";
		try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, username, password);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}