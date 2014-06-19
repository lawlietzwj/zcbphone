package com.jczcb.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import com.jczcb.bean.Driver;
import com.jczcb.service.DriverService;

/**
 * @author Lawliet
 */
public class DriverCheckAction extends ActionSupport{
	private String ss;
	private String keyword;

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

	public String check(){
		DriverService ds = new DriverService();
		List<Driver> driverList = ds.getDriverList(ss,keyword);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("driverList", driverList);
		return "success";
	}
}
