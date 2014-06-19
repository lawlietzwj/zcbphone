package com.jczcb.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.jczcb.bean.Car;
import com.jczcb.bean.OverloadCase;
import com.jczcb.service.CarService;
import com.jczcb.service.CaseService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Lawliet
 */
public class CarCheckAction extends ActionSupport{
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
		CarService cs = new CarService();
		List<Car> carList = cs.getCarList(ss,keyword);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("carList", carList);
		return "success";
	}
}
