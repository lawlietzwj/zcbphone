<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
    <header class="home_header">
      <div class="wrap clearfix">
        <section> <img class="logo" src="<%=path %>/images/boc2013_logo.png">
          <div class="home_header_nav">
            <nav class="clearfix"> </nav>
            <p>服务热线：<span class="red">95566</span></p>
          </div>
        </section>
      </div>
    </header>
    <!-- 头部 end --> 
    <!--公告内容-->
    <div class="home_header_news">
      <p class="wrap"><img src="<%=path %>/images/boc2013_notice_icon.png"><a href="#">关于网上服务升级的公告</a></p>
    </div>
    <!--公告内容end-->
    <div id="" class="boc_main" tabindex="0" style="padding-top:15px">
      <div class="boc_content"> 
        <!-- 手机银行功能模块 -->
        <div class="common_box">
					<h3 class="title">手机平台</h3>
					<div class="box1 box">
						<p class="title">信息查询</p>
						<ul class="clearfix">
						
							<li><a href="<%=basePath%>pages/carCheck.jsp">车辆查询</a></li>
						
							<li><a href="<%=basePath%>pages/weightCheck.jsp">称重查询</a></li>
						<!--
							<li><a href="qiye.html">源头查询</a></li>
						-->
                       		<li><a href="<%=basePath%>pages/driverCheck.jsp">驾驶员查询</a></li>
						</ul>
					</div>
					
					<div class="box3 box">
						<p class="title">在线办公</p>
						<ul class="clearfix">
						
							<li><a href="<%=basePath%>pages/case.jsp">案件处理</a></li>
						
							<li><a href="<%=basePath%>pages/blackList.jsp">黑名单</a></li>
						
							<!--li><a href="case_up.html">超载上报</a--></li>
						
						</ul>
					</div>
					
				</div>
       
      </div>
      <!--boc_content--> 
    </div>
    <!--boc_main--> 
    <!-- footer begin -->
    <footer class="footer_info">
      <p>服务热线 <span class="red"></span><span class="red">2057168</span></p>
      <p class="footer_border">晋ICP证 060399 号</p>
    </footer>
    <!-- footer end --> 
  </div>
</div>

</body>
</html>

