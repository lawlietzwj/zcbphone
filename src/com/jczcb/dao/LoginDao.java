package com.jczcb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;


/**
 * @author Lawliet
 */
public class LoginDao {
	private Conn conn;
	public boolean loginControl(String username, String password) {
		boolean flag = false;
		String sql = "select role_id from userRole where role_name=? and role_pwd=?";
		try {
			conn = new Conn(sql);
			conn.setString(1, username);
			conn.setString(2, password);
			ResultSet rs = conn.executeQuery();
			while (rs.next()) {
				flag = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		conn.close();
		return flag;
	}
}
