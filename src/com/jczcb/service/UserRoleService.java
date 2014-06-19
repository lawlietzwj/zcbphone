package com.jczcb.service;

import com.jczcb.dao.LoginDao;

/**
 * @author Lawliet
 */
public class UserRoleService {
	public boolean loginControl(String username, String password) {
		LoginDao dao = new LoginDao();
		boolean flag = dao.loginControl(username, password);
		return flag;
	}
}
