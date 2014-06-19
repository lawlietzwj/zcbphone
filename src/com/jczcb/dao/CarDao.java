package com.jczcb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jczcb.bean.Car;

/**
 * @author Lawliet
 */
public class CarDao {
	private List<Car> list = new ArrayList<Car>();
	private Conn conn;

	public List<Car> getCarAll() {
		String sql = "select car_id,car_type,car_number,car_ownerName,car_axle,car_grossWeight,car_bizcertid,car_model,car_ownerLandName from dict_car";
		list = getCarList(sql);
		return list;
	}

	public List<Car> getCarByAxle(String axle) {
		String sql = "select car_id,car_type,car_number,car_ownerName,car_axle,car_grossWeight,car_bizcertid,car_model,car_ownerLandName from dict_car where car_axle like '%"
				+ axle
				+ "%' or car_axle like '"
				+ axle
				+ "%' or car_axle like '%" + axle + "'";
		list = getCarList(sql);
		return list;
	}

	public List<Car> getCarByNumber(String number) {
		String sql = "select car_id,car_type,car_number,car_ownerName,car_axle,car_grossWeight,car_bizcertid,car_model,car_ownerLandName from dict_car where car_number like '%"
				+ number
				+ "%' or car_number like '"
				+ number
				+ "%' or car_number like '%" + number + "'";
		list = getCarList(sql);
		return list;
	}

	private List<Car> getCarList(String sql) {
		try {
			conn = new Conn(sql);
			ResultSet rs = conn.executeQuery();
			while (rs.next()) {
				Car car = new Car();
				car.setId(rs.getInt(1));
				car.setType(rs.getInt(2));
				car.setNumber(rs.getString(3));
				car.setOwnerName(rs.getString(4));
				car.setAxle(rs.getInt(5));
				car.setGrossWeight(rs.getDouble(6));
				car.setBizcertid(rs.getString(7));
				car.setModel(rs.getString(8));
				car.setOwnerLandName(rs.getString(9));
				list.add(car);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
}
