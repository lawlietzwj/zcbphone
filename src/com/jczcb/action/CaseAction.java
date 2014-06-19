package com.jczcb.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.jczcb.bean.OverloadCase;
import com.jczcb.service.CaseService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Lawliet
 */
public class CaseAction extends ActionSupport{
	
	public String check(){
		CaseService cs = new CaseService();
		List<OverloadCase> caseList = cs.getUndisposedCaseList();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("caseList", caseList);
		return "success";
	}
}
