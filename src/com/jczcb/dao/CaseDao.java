package com.jczcb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jczcb.bean.OverloadCase;

/**
 * @author Lawliet
 */
public class CaseDao {
	private Conn conn;
	private List<OverloadCase> list = new ArrayList<OverloadCase>();

	public boolean addCase(OverloadCase olCase) {
		boolean flag = false;
		String sql = "insert overloadCase (case_type,status,other,date,add_role,driver_number,car_number,quantity) values(?,?,?,?,?,?,?,?)";
		try {
			conn = new Conn(sql);
			conn.setInt(1, olCase.getCaseType());
			conn.setInt(2, olCase.getStatus());
			conn.setString(3, olCase.getOther());
			conn.setTimestamp(4, olCase.getDate());
			conn.setString(5, olCase.getAddRole());
			conn.setString(6, olCase.getDriverNumber());
			conn.setString(7, olCase.getCarNumber());
			conn.setDouble(8, olCase.getQuantity());
			conn.executeUpdate();
			flag = true;
		} catch (SQLException e) {
			e.printStackTrace();
			flag = false;
		} finally {
			conn.close();
		}
		return flag;
	}

	public boolean disposeCase(String delRole, int id) {
		boolean flag = false;
		String sql = "update overloadCase set status=0,del_role=? where id=?";
		try {
			conn = new Conn(sql);
			conn.setString(1, delRole);
			conn.setInt(2, id);
			conn.executeUpdate();
			flag = true;
		} catch (SQLException e) {
			e.printStackTrace();
			flag = false;
		} finally {
			conn.close();
		}
		return flag;
	}

	public List<OverloadCase> getCaseAll() {
		String sql = "select * from overloadCase order by id desc";
		list = getCaseList(sql);
		return list;
	}

	public List<OverloadCase> getCaseByDriver(String driverNo) {
		String sql = "select * from overloadCase where driver_number like '%"
				+ driverNo + "%' or driver_number like '" + driverNo
				+ "%' or driver_number like '%" + driverNo + "'";
		list = getCaseList(sql);
		return list;
	}

	public List<OverloadCase> getCaseByCar(String carNo) {
		String sql = "select * from overloadCase where car_number like '%"
				+ carNo + "%' or car_number like '" + carNo
				+ "%' or car_number like '%" + carNo + "'";
		list = getCaseList(sql);
		return list;
	}

	private List<OverloadCase> getCaseList(String sql) {
		try {
			conn = new Conn(sql);
			ResultSet rs = conn.executeQuery();
			while (rs.next()) {
				OverloadCase olCase = new OverloadCase();
				olCase.setId(rs.getInt(1));
				olCase.setCaseType(rs.getInt(2));
				olCase.setStatus(rs.getInt(3));
				olCase.setOther(rs.getString(4));
				olCase.setDate(rs.getTimestamp(5));
				olCase.setAddRole(rs.getString(6));
				olCase.setDriverNumber(rs.getString(7));
				olCase.setCarNumber(rs.getString(8));
				olCase.setQuantity(rs.getDouble(9));
				olCase.setDelRole(rs.getString(10));
				list.add(olCase);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
