package com.jczcb.service;

import java.util.ArrayList;
import java.util.List;

import com.jczcb.bean.Car;
import com.jczcb.dao.CarDao;

/**
 * @author Lawliet
 */
public class CarService {
	private CarDao dao = new CarDao();

	public List<Car> getCarList(String ss, String keyword) {
		List<Car> list = new ArrayList<Car>();
		if (ss.equals("number") || ss == "number") {
			list = dao.getCarByNumber(keyword);
		} else if (ss.equals("axle") || ss == "axle") {
			list = dao.getCarByAxle(keyword);
		} else {
			list = dao.getCarAll();
		}
		return list;
	}

}
