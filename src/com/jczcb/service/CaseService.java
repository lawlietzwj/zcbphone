package com.jczcb.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.jczcb.bean.OverloadCase;
import com.jczcb.dao.CaseDao;

/**
 * @author Lawliet
 */
public class CaseService {
	private CaseDao dao = new CaseDao();

	public boolean addCase(OverloadCase olCase) {
		boolean flag = false;
		olCase.setStatus(1);
		Timestamp t = new Timestamp(System.currentTimeMillis());
		olCase.setDate(t);
		flag = dao.addCase(olCase);
		return flag;
	}

	public List<OverloadCase> getUndisposedCaseList() {
		List<OverloadCase> list = new ArrayList<OverloadCase>();
		list = dao.getCaseAll();
		List<OverloadCase> delList = new ArrayList<OverloadCase>();
		for (OverloadCase olCase : list) {
			if (olCase.getStatus() == 0) {
				delList.add(olCase);
			}
		}
		list.removeAll(delList);
		return list;
	}

	public boolean disposeCase(String delRole, int id) {
		boolean flag = dao.disposeCase(delRole, id);
		return flag;
	}

	public List<OverloadCase> getCaseList(String ss, String keyword) {
		List<OverloadCase> list = new ArrayList<OverloadCase>();
		if (ss.equals("driver") || ss == "driver") {
			list = dao.getCaseByDriver(keyword);
		} else if (ss.equals("car") || ss == "car") {
			list = dao.getCaseByCar(keyword);
		} else {
			list = dao.getCaseAll();
		}
		return list;

	}
}
