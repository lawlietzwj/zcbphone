<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"/>
		<link rel="stylesheet" href="<%=path %>/images/boc2013_boc.css"/>		
		<title>晋城市治理超限超载信息平台</title>
	</head>

	<body>
		<div id="wrapper">
			<div id="boc_index" class="boc_index">
				<!-- 头部 begin -->
				<header class="page_header">
				<div class="wrap clearfix">
					<a href="main.jsp" class="go_back"></a> 案件处理
					<a href="main.jsp" class="go_home"></a>
				</div>
				</header>
				<!-- 头部 end -->

				<div id="" class="boc_main" tabindex="0">
					<div class="boc_content">
						<!-- 手机银行功能模块 -->
						<s:form id="caseForm" name="caseForm" method="post">
						<div class="common_box">

							<div class="box1 box">
								<p class="title">
									在线办公
								</p>
								<ul class="clearfix">

									<li>
										<a href="caseNew.jsp">新增</a>
									</li>

									<li>
										<a style="cursor:pointer" onclick="caseForm.action='case.action';caseForm.submit()">处理</a>
									</li>

									<li>
										<a href="caseCheck.jsp">案件查询</a>
									</li>
								</ul>
							</div>

						</div>

					</div>
					</s:form>
					<!--boc_content-->
				</div>
				<!--boc_main-->
				<!-- footer begin -->
				<div class="footer_info">
				<p>
					服务热线
					<span class="red"></span><span class="red">2057168</span>
				</p>
				<p class="footer_border">
					晋ICP证 060399 号
				</p>
				</div>
				<!-- footer end -->
			</div>
		</div>

	</body>
</html>

