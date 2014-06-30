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
<style type="text/css">
	.search_btn{

	}
	/* 按钮旋转  */
	.search_btn:hover{
		/* 圆角边框  */
		border-radius:100px;
		/* 辐射渐变  */
		background-image: radial-gradient(ellipse farthest-corner at 140px 24px , #00FFFF 0%, white 26%, yellow 100%);
		/* 线性渐变	
		第一个属性是渐变线角度（X轴正方向为0deg）
		颜色属性后面的百分号：起始结束颜色（颜色所占百分比）中间颜色（颜色开始位置）
		background: linear-gradient(90deg,red,yellow 30%,green);*/
		/* 添加动画 */
    	animation: btnRptate 0.1s linear 0s infinite normal;
	}
	@keyframes btnRptat{
		from {transform: rotateZ(0deg);}
		to {transform: rotateZ(360deg);}
	}

	@-moz-keyframes btnRptate /* Firefox */{
		from {-moz-transform: rotateZ(0deg);}
		to {-moz-transform: rotateZ(360deg);}
	}

	@-webkit-keyframes btnRptate /* Safari and Chrome */{
		from {-webkit-transform: rotateZ(0deg);}
		to {-webkit-transform: rotateZ(360deg);}
	}
</style>

<title>晋城市治理超限超载信息平台</title>
	
</head>
<body>
<div id="header" class="page_header">
  <div class="wrap clearfix"> <a href="javascript:history.back();" class="go_back"></a> 车辆查询 <a href="<%=path %>/pages/main.jsp" class="go_home"></a> </div>
</div>

<div class="main">
  <div class="wrap">
  <s:form id="checkCar" name="checkCar" method="post" action="carCheck.action">
    <div class="common_box">
      <p class="input_info">
        <label>查询类型：</label>
        <span id="PL_SS_SPAN">
        <select name="ss" id="SS" onchange="setJgwdSubslt(&#39;SS&#39;,&#39;CS&#39;);">
          <option value="all">请选择查询类型</option>         
          <option value="number">按车牌</option>
          <option value="axle">按车轴</option>
        </select>
        </span> </p>
      <p class="input_info">
        <label>关键字：</label>
        <input name="keyword" type="text" id="PL_ADDRESS"  placeholder="请输入关键字"/>
      </p>
      <p class="clearfix"> <a style="cursor:pointer" onclick="checkCar.submit()" class="search_btn" id="PL_QUERY_BTN"><span>查&nbsp;&nbsp;询</span></a> </p>
    </div>
  </s:form>
    <!--common-box-->
    <c:choose>
    <c:when test="${!empty carList}">
    <div class="common_box">
     <ul class="list" id="PL_DOCUMENT_LIST">
       <p style="text-align:center;color:blue">查询到  ${fn:length(carList) }  条结果</p>
     	<c:forEach items="${carList}" var="car">
     	<li style="margin-left:1%">
     	<p>车辆号牌：${car.number }</p>
     	<p>车辆轴数：${car.axle }  轴</p>
     	<p>车主姓名：${car.ownerName }</p>
     	<p>车辆吨数：${car.grossWeight }</p>
     	<p>道路运输证号：${car.bizcertid }</p>
     	<p>车辆型号：${car.model }</p>
     	<p>归属地：${car.ownerLandName }</p>
     	</li>
     	</c:forEach>
        <!-- 返回顶部浮动按钮 -->
     	<div id="to_top" style="right:10%;bottom:10%;position:fixed;display:none">
     	<a id="to_top" href="#">
     	  <img style="width:30px;height:30px" src="<%=path %>/images/top.png" alt="返回顶部"></img>
     	</a>
     	</div>    
     </ul>
     </div>
     </c:when>
     <c:otherwise>
     	<div class="common_box" style="padding-top:4%">
    	<p style="text-align:center;color:red">没有查询信息,请检查输入是否正确！</p>
    	</div>
     </c:otherwise>
     </c:choose>
  </div>
</div>
</body>
</html>