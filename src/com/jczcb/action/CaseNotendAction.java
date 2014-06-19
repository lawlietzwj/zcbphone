package com.jczcb.action;

import java.util.Map;

import com.jczcb.bean.UserRole;
import com.jczcb.service.CaseService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Lawliet
 */
public class CaseNotendAction extends ActionSupport {
	// session∂‘œÛ
	private Map session;

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	private int disposeid;
	public int getDisposeid() {
		return disposeid;
	}

	public void setDisposeid(int disposeid) {
		this.disposeid = disposeid;
	}

	public String dispose(){
		session = ActionContext.getContext().getSession();
		String userName = (String) session.get("userName");
		CaseService caseService = new CaseService();
		caseService.disposeCase(userName, disposeid);
		return "success";
	}

}
