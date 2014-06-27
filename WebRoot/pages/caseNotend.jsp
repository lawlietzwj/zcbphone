<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
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
<style type="text/css">
  .sub-button{
    cursor:pointer;
    border:1px solid #CCC;
    border-radius:3px;
    text-align:center;
    height:26px;
    width:30%;
    margin-left:24%;
    margin-top:1%;
    background-image:linear-gradient(#FFF, #F3F3F3);
    color:rgb(83, 255, 20);
  }
</style>
<title>晋城市治理超限超载信息平台</title>
</head>

<body>
<header class="page_header">
  <div class="wrap clearfix"> <a href="<%=path %>/pages/case.jsp" class="go_back"></a> 待处理案件 <a href="main.jsp" class="go_home"></a> </div>
</header>
<div class="main">
  <div class="wrap">
    <!--common-box-->
    <div class="common_box">
    <c:choose>
    <c:when test="${!empty caseList}">
     <ul class="list" id="PL_DOCUMENT_LIST">
     <p style="text-align:center;color:red">待处理案件  ${fn:length(caseList)} 件</p>
     <c:forEach items="${caseList}" var="olCase">
     <s:form id="dispose" name="disposeForm" method="post" action="caseNotend.action">
     <div style="margin-left:6%">
     <li>
		<input id="disposeid" name="disposeid" style="display:none" value="${olCase.id}"/>
     	<p>车辆号牌：${olCase.carNumber}</p>
     	<p>驾驶证号：${olCase.driverNumber}</p>
     	<p>超载限量：${olCase.quantity}</p>
     	<p>案件类型：<c:if test="${olCase.caseType==1}">超载</c:if><c:if test="${olCase.caseType==2}">超限</c:if></p>
     	<p>发生日期：<fmt:formatDate value="${olCase.date}" type="both"/></p>
     	<input class="sub-button" type="submit" value="处&nbsp&nbsp理"/>
     </li>
     </div>
     </s:form>
     </c:forEach> 
     </ul>
     </c:when>
     <c:otherwise>
     	<p style="text-align:center">没有未处理的案件！</p>
     </c:otherwise>
     </c:choose>
    </div>
  </div>
</div>
		<!-- 返回顶部浮动按钮 -->
     	<div id="to_top" style="right:10%;bottom:10%;position:fixed;display:none">
     	<a id="to_top" href="#">
     	  <img style="width:30px;height:30px" src="<%=path %>/images/top.png" alt="返回顶部"></img>
     	</a></div>
		
</body>
</html>
