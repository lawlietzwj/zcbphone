package com.jczcb.service;

import java.util.ArrayList;
import java.util.List;

import com.jczcb.bean.Driver;
import com.jczcb.dao.DriverDao;

/**
 * @author Lawliet
 */
public class DriverService {
	private DriverDao dao = new DriverDao();

	public List<Driver> getDriverList(String ss, String keyword) {
		List<Driver> list = new ArrayList<Driver>();
		if (ss.equals("name") || ss == "name") {
			list = dao.getDriverByName(keyword);
		} else if (ss.equals("idCard") || ss == "idCard") {
			list = dao.getDriverByIdCard(keyword);
		} else {
			list = dao.getDriverAll();
		}
		return list;
	}
}
