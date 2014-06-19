<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>手机治超平台</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
	<link rel="stylesheet" href="<%=path %>/images/boc2013_boc.css">
	<script type="text/javascript" src="<%=path %>/js/jquery-1.4.2.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function(){
			if(top.location!=self.location){
				top.location="login.jsp";
			}
	});
	</script>	
  </head>
<body style="background-color:#FFF">
<div id="wrapper">
  <div id="boc_index" class="boc_index"> 
    <!-- 头部 begin -->
    <header class="home_header">
      <div class="wrap clearfix">
        <section> <img class="logo" src="images/boc2013_logo.png">
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
      <p class="wrap"><img src="images/boc2013_notice_icon.png">关于网上服务升级的公告</p>
    </div>
    <!--公告内容end-->
    <div id="" class="boc_main" tabindex="0">
      <div class="boc_content"> 
        <div class="common_box">
          <h3 class="title">手机平台</h3>
          <div class="box1 box" style=" height:100%;">
            <p class="title">登录晋城市治理超限超载信息平台</p>
            <s:form id="loginForm" name="loginForm" method="post" action="userRole_login.action">
              <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
              	<tr>
              		<td height="30" align="center" colspan="2">
              			<span style="color:red;font-size:2">
              				<strong><s:property value="#request.msg"></s:property></strong>
              			</span>
              		</td>
              	</tr>
                <tr>
                  <td width="50%" height="24" align="right" valign="middle">用户名：</td>
                  <td align="left" valign="middle"><s:textfield id="roleName" name="r.roleName" size="10"></s:textfield></td>
                </tr>
                <tr>
                  <td height="24" align="right" valign="middle">密&nbsp;&nbsp;&nbsp;码：</td>
                  <td align="left" valign="middle"><s:password id="rolePwd" name="r.rolePwd" size="11"></s:password></td>
                </tr>
                <tr>
                  <td height="24" align="right" valign="middle">验证码：</td>
                  <td align="left" valign="middle">
                 <s:textfield id="roleDesc" name="r.roleDesc" size="4"></s:textfield>&nbsp;<img src="pages/CheckCode.jsp" alt="验证码,看不清楚?请点击刷新验证码" style="cursor : pointer;mar;height: 15px;width: 45px;" onClick="this.src='pages/CheckCode.jsp'" />
                  </td>
                </tr>
                <tr>
                  <td colspan="2" align="center" valign="middle">
                  <s:submit id="btnlogin" name="btnlogin"value="登录"></s:submit>
                  </td>
                </tr>
              </table>
            </s:form>
          </div> 
        </div>
        
      </div>
      <!--boc_content--> 
    </div>
    <!--boc_main--> 
    <!-- footer begin -->
    <div class="footer_info">
      <p>服务热线 <span class="red">95566</span></p>
      <p class="footer_border">晋ICP证 060399 号</p>
    </div>
    <!-- footer end --> 
  </div>
</div>
</body>
</html>
