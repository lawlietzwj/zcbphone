package com.jczcb.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.jczcb.bean.WeightInfo;
import com.jczcb.dao.WeightDao;

/**
 * @author Lawliet
 */
public class WeightService {
	private WeightDao dao = new WeightDao();

	public List<WeightInfo> getWeightList(String ss, String keyword, String date) {
		List<WeightInfo> list = new ArrayList<WeightInfo>();
		if (ss.equals("number") || ss == "number") {
			list = dao.getWeightByNumber(keyword);
		} else if (ss.equals("car") || ss == "car") {
			list = dao.getWeightByCar(keyword);
		} else if (ss.equals("date") || ss == "date") {
			String dateAfter = getDayAfter(date);
			list = dao.getWeightByDate(date, dateAfter);
		} else if (ss.equals("fromW") || ss == "fromW") {
			list = dao.getWeightByFromW(keyword);
		} else {
			list = null;
		}
		return list;
	}

	private String getDayAfter(String afterDay) {
		Calendar c = Calendar.getInstance();
		Date date = null;
		try {
			date = new SimpleDateFormat("yy-MM-dd").parse(afterDay);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		c.setTime(date);
		int day = c.get(Calendar.DATE);
		c.set(Calendar.DATE, day + 1);
		String dayAfter = new SimpleDateFormat("yyyy-MM-dd")
				.format(c.getTime());
		return dayAfter;
	}
}
