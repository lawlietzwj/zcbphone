package com.jczcb.action;

import java.util.Map;
import javax.servlet.http.*;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.*;
import com.jczcb.bean.UserRole;
import com.jczcb.service.UserRoleService;


/**
 * @author Lawliet
 */
public class UserRoleAction extends ActionSupport{
	//request����
	private HttpServletRequest request;
	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	//response����
	private HttpServletResponse response;
	public HttpServletResponse getResponse() {
		return response;
	}
	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}
	//session����
	private Map<String, Object> session;
	public Map getSession() {
		return session;
	}
	public void setSession(Map session) {
		this.session = session;
	}

	//������Ϣmsg
	private String msg;
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}

	//UserRoleʵ��
	private UserRole r;
	public UserRole getR() {
		return r;
	}
	public void setR(UserRole r) {
		this.r = r;
	}
	
	public String login(){
		session = ActionContext.getContext().getSession();
		request = ServletActionContext.getRequest();
		String yzm = (String) session.get("rand");
		String username = r.getRoleName();
		String password = MD5andKL.KL(MD5andKL.MD5(r.getRolePwd()));
		UserRoleService urService = new UserRoleService();
		if(!urService.loginControl(username, password)){
			msg = "�û������������";
			request.setAttribute("msg", msg);
			return "error";
		}else if(!r.getRoleDesc().equals(yzm)){
			msg = "��֤�����";
			request.setAttribute("msg", msg);
			return "error";
		}else{
			session.put("userName", r.getRoleName());
			return "successLogin";
		}
	}

}
