package com.jczcb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jczcb.bean.Driver;

/**
 * @author Lawliet
 */
public class DriverDao {
	private List<Driver> list = new ArrayList<Driver>();
	private Conn conn;

	public List<Driver> getDriverByName(String name) {
		String sql = "select driver_id,driver_number,driver_carno,driver_name from dict_driver where driver_name like '%"
				+ name
				+ "%' or driver_name like '"
				+ name
				+ "%' or driver_name like '%" + name + "'";
		list = getDriverList(sql);
		return list;
	}

	public List<Driver> getDriverByIdCard(String idCard) {
		String sql = "select driver_id,driver_number,driver_carno,driver_name from dict_driver where driver_number like '%"
				+ idCard
				+ "%' or driver_number like '"
				+ idCard
				+ "%' or driver_number like '%" + idCard + "'";
		list = getDriverList(sql);
		return list;
	}

	public List<Driver> getDriverAll() {
		String sql = "select driver_id,driver_number,driver_carno,driver_name from dict_driver";
		list = getDriverList(sql);
		return list;
	}

	private List<Driver> getDriverList(String sql) {
		try {
			conn = new Conn(sql);
			ResultSet rs = conn.executeQuery();
			while (rs.next()) {
				Driver driver = new Driver();
				driver.setId(rs.getInt(1));
				driver.setNumber(rs.getString(2));
				driver.setCarNo(rs.getString(3));
				driver.setName(rs.getString(4));
				list.add(driver);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
