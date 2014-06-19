package com.jczcb.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.jczcb.bean.OverloadCase;
import com.jczcb.service.CaseService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Lawliet
 */
public class CaseCheckAction extends ActionSupport {
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

	public String check() {
		CaseService cs = new CaseService();
		List<OverloadCase> caseList = cs.getCaseList(ss,keyword);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("caseList", caseList);
		return "success";
	}
	
}
