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
<header class="page_header">
  <div class="wrap clearfix"> <a href="javascript:history.back();" class="go_back"></a> 治超黑名单 <a href="<%=path %>/pages/main.jsp" class="go_home"></a> </div>
</header>
<div class="main">
  <div class="wrap">
  <div class="common_box" style="text-align:center;color:red">
	<h3 style="padding-top:13px">黑名单库正在完善当中</h3>
  </div>
 </div>
 </div>
</body>
</html>
