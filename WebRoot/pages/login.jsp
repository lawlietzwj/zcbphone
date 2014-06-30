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
		/* 通过获取焦点事件focus失去焦点事件blur来设置输入框属性placeholder实现活的焦点placeholder为空 */
		$(document).ready(function(){
			$("input").focus(function(){
				$(this).attr("placeholder","");
			});
			$("#roleName").blur(function(){
				$(this).attr("placeholder"," 用户名");
			});
			$("#rolePwd").blur(function(){
				$(this).attr("placeholder"," 密  码");
			});
		});

	</script>	
	<style type="text/css">
		.form_all{
			text-align:center;
		}
		.role_name{
			margin-top:6px;
			height:21px;
		}
		.role_pwd{
			margin-top:6px;
			height:21px;
		}
		.login{
			margin-top:6px;
		}
		.btn_submit{
			cursor:pointer;
   			border:1px solid #CCC;
    		border-radius:3px;
    		text-align:center;
    		height:26px;
    		width:30%;
     		background-image:linear-gradient(#FFF, #F3F3F3);
    		color:rgba(0, 0, 0, 0.6);	
		}
		.btn_submit:hover{
			background-image:linear-gradient(white, rgba(3, 255, 6, 0.1));
		}
	</style>
  </head>
<body style="background-color:#FFF">
<div id="wrapper">
  <div id="boc_index" class="boc_index"> 
    <!-- 头部 begin -->
    <div class="home_header">
      <div class="wrap clearfix">
        <section> <img class="logo" src="images/boc2013_logo.png">
          <div class="home_header_nav">
            <nav class="clearfix"> </nav>
            <p>服务热线：<span class="red">95566</span></p>
          </div>
        </section>
      </div>
    </div>
    <!-- 头部 end -->
    <!--公告内容-->
    <div class="home_header_news">
      <p class="wrap"><img src="images/boc2013_notice_icon.png">关于网上服务升级的公告</p>
    </div>
    <!--公告内容end-->
    <div id="" class="boc_main" tabindex="0" style="padding-top:15px">
      <div class="boc_content">
        <div class="common_box">
          <h3 class="title">手机平台</h3>
          <div class="box1 box" style=" height:100%;">
            <p class="title">登录晋城市治理超限超载信息平台</p>
            <s:form id="loginForm" name="loginForm" method="post" action="userRole_login.action">
            <div class="form_all">
              	<p>
              	<span style="color:red;font-size:2">
              		<strong><s:property value="#request.msg"></s:property></strong>
              	</span>	
              	</p>
                <input id="roleName" class="role_name" name="r.roleName" type="text" placeholder="&nbsp用户名"></input>
              	<input id="rolePwd" class="role_pwd" name="r.rolePwd" type="password" placeholder="&nbsp密&nbsp&nbsp码"></input>
				<div class="login">
              		<input class="btn_submit" type="submit" value="登&nbsp&nbsp录"></input>
				</div>
              	</tbody>
            </div>
            </s:form>
          </div> 
        </div>
      </div>
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
