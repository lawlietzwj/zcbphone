<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
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
<script type="text/javascript" src="<%=path %>/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript"> 
//浮动按钮事件，.scroll 获取滚动条垂直距离
 $(window).scroll(function(){   
  	var top = $(window).scrollTop();
  	if(top <= 1000){
  		$("#to_top").css("display","none");
  	}else{
  		$("#to_top").css("display","");
  	}
   });
</script> 

	<title>晋城市治理超限超载信息平台</title>
		
</head>
<body>
<div id="header" class="page_header">
  <div class="wrap clearfix"> <a href="javascript:history.back();" class="go_back"></a> 驾驶员查询 <a href="<%=path %>/pages/main.jsp" class="go_home"></a> </div>
</div>

<div class="main">
  <div class="wrap">
  <s:form id="checkDriver" name="checkDriver" method="post" action="driverCheck.action">
    <div class="common_box">
      <p class="input_info">
        <label>查询类型：</label>
        <span id="PL_SS_SPAN">
        <select name="ss" id="SS" onchange="setJgwdSubslt(&#39;SS&#39;,&#39;CS&#39;);">
          <option value="all">请选择查询类型</option>         
          <option value="name">按姓名</option>
          <option value="idCard">按身份证</option>
        </select>
        </span> </p>
      <p class="input_info">
        <label>关键字：</label>
        <input name="keyword" type="text" id="PL_ADDRESS"  placeholder="请输入关键字">
      </p>
      <p class="clearfix"> <a style="cursor:pointer" onclick="checkDriver.submit()" class="search_btn" id="PL_QUERY_BTN"><span>查&nbsp;&nbsp;询</span></a> </p>
    </div>
  </s:form>
    <!--common-box-->
    <c:choose>
    <c:when test="${!empty driverList}">
    <div class="common_box">
     <ul class="list" id="PL_DOCUMENT_LIST">
       <p style="text-align:center;color:blue">查询到  ${fn:length(driverList) }  条结果</p>
     	<c:forEach items="${driverList}" var="driver">
     	<li style="margin-left:6%">
     	<p>身份证号：${driver.number }</p>
     	<p>司机姓名：${driver.name }</p>
     	<p>车辆号牌：${driver.carNo }</p>
     	</li>
     	</c:forEach>
            
     </ul>
     </div>
     </c:when>
     <c:otherwise>
     	<div class="common_box" style="padding-top:4%">
    	<p style="text-align:center;color:red">没有查询信息,请检查输入是否正确！</p>
    	</div>
     </c:otherwise>
     </c:choose>
          	<!-- 返回顶部浮动按钮 -->
     	<div id="to_top" style="right:10%;bottom:10%;position:fixed;display:none">
     	<a id="to_top" href="#">
     	  <img style="width:30px;height:30px" src="<%=path %>/images/top.png" alt="返回顶部"></img>
     	</a></div>
     
  </div>
</div>
</body>
</html>