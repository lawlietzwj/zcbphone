package com.jczcb.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.jczcb.bean.WeightInfo;
import com.jczcb.service.WeightService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Lawliet
 */
public class WeightCheckAction extends ActionSupport {
	private String ss;
	private String keyword;
	private String date;

	public String getSs() {
		return ss;
	}

	public void setSs(String ss) {
		this.ss = ss;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String check() {
		WeightService ws = new WeightService();
		List<WeightInfo> weightList = new ArrayList<WeightInfo>();
		if ((keyword == "" || keyword.equals(""))
				&& (date == "" || date.equals(""))) {
			weightList = null;
		} else {
			weightList = ws.getWeightList(ss, keyword, date);
		}
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("weightList", weightList);
		return "success";
	}
}
