package com.jczcb.filter;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;

/**
 * @author Lawliet
 */
public class LoginFilter extends HttpServlet implements Filter {

	public void destroy() {

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		HttpSession session = req.getSession();
		String url = req.getServletPath();//获得项目名后的地址
		String contextPath = req.getContextPath();//获得项目名：/zcbphone
		if (url.startsWith("/pages") && !url.startsWith("/pages/login") && !url.startsWith("/pages/CheckCode")) {
			String username = (String) session.getAttribute("userName");
			if (username == null) {
				res.sendRedirect(contextPath + "/pages/login.jsp");
			}
		}else {
			session.invalidate();
		}
		chain.doFilter(request, response);
	}

	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
