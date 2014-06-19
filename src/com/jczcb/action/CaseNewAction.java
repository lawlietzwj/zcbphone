package com.jczcb.action;

import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jczcb.bean.OverloadCase;
import com.jczcb.bean.UserRole;
import com.jczcb.service.CaseService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Lawliet
 */

public class CaseNewAction extends ActionSupport {
	private OverloadCase overload;
	
	@Resource
	// request对象
	private HttpServletRequest request;

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	// response对象
	private HttpServletResponse response;

	public HttpServletResponse getResponse() {
		return response;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	public OverloadCase getOverload() {
		return overload;
	}

	public void setOverload(OverloadCase overload) {
		this.overload = overload;
	}

	// session对象
	private Map session;

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public String add() {
		session = ActionContext.getContext().getSession();
		String userName = (String) session.get("userName");
		overload.setAddRole(userName);
		CaseService caseService = new CaseService();
		boolean flag = caseService.addCase(overload);
		if (flag) {
			return "success";
		} else {
			return "error";
		}
	}
	
}
