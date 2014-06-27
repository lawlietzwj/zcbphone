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
<script src="<%=path %>/datepicker/jquery-1.10.2.js"></script>
<script src="<%=path %>/datepicker/jquery-ui-1.10.4.custom.js"></script>
<link rel="stylesheet" href="<%=path %>/datepicker/jquery-ui-1.10.4.custom.css"/>
<script type="text/javascript"> 
//日期控件
$(function() {
	$( "#datepicker" ).datepicker({//添加日期选择功能    
         numberOfMonths:1,//显示几个月    
         showButtonPanel:true,//是否显示按钮面板    
         dateFormat: 'yy-mm-dd',//日期格式    
         clearText:"清除",//清除日期的按钮名称    
         closeText:"关闭",//关闭选择框的按钮名称    
         yearSuffix: '年', //年的后缀    
         showMonthAfterYear:true,//是否把月放在年的后面                
         monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],    
         dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],    
         dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],    
         dayNamesMin: ['日','一','二','三','四','五','六'],    
     });
});
//浮动按钮事件，.scroll 获取滚动条垂直距离
 $(window).scroll(function(){   
  	var top = $(window).scrollTop();
  	if(top <= 1000){
  		$("#to_top").css("display","none");
  	}else{
  		$("#to_top").css("display","");
  	}
   });
//下拉框选择
$(document).ready(function(){
	$("#SS").change(function(){
		var value = $("#SS").children('option:selected').val();
		if(value == "date"){
			$("p#date").css("display","");
			$("p#key").css("display","none");
		}else{
			$("p#date").css("display","none");
			$("p#key").css("display","");
		}
	});
});
</script> 

	<title>晋城市治理超限超载信息平台</title>
		
</head>
<body>
<div id="header" class="page_header">
  <div class="wrap clearfix"> <a href="javascript:history.back();" class="go_back"></a> 称重记录查询 <a href="<%=path %>/pages/main.jsp" class="go_home"></a> </div>
</div>

<div class="main">
  <div class="wrap">
  <s:form id="checkWeight" name="checkWeight" method="post" action="weightCheck.action">
    <div class="common_box">
      <p class="input_info">
        <label>查询类型：</label>
        <span id="PL_SS_SPAN">
        <select name="ss" id="SS" onchange="setJgwdSubslt(&#39;SS&#39;,&#39;CS&#39;);">
          <option value="all">请选择查询类型</option>         
          <option value="number">按检测单号</option>
          <option value="car">按车牌</option>
          <option value="date">按日期</option>
          <option value="fromW">按源头</option>
        </select>
        </span> </p>
      <p id="key" class="input_info">
        <label>关键字：</label>
        <input name="keyword" type="text" id="PL_ADDRESS"  placeholder="请输入关键字">
      </p>
	  <p id="date" class="input_info" style="display:none">
	  	<label>选择日期：</label>
	  	<input id="datepicker" name="date" type="text" readonly="readonly" placeholder="请选择日期"/>
	  </p>
      <p class="clearfix"> <a style="cursor:pointer" onclick="checkWeight.submit()" class="search_btn" id="PL_QUERY_BTN"><span>查&nbsp;&nbsp;询</span></a> </p>
    </div>
  </s:form>
    <!--common-box-->
    <c:choose>
    <c:when test="${!empty weightList}">
    <div class="common_box">
     <ul class="list" id="PL_DOCUMENT_LIST">
       <p style="text-align:center;color:blue">查询到  ${fn:length(weightList) }  条结果</p>
     	<c:forEach items="${weightList}" var="weight">
     	<li style="margin-left:1%">
     	<p>检测单号：${weight.number }</p>
     	<p>源头企业：${weight.resource } </p>
     	<p>车辆号牌：${weight.car }</p>
     	<p>车辆吨数：${weight.weight }</p>
     	<p>&nbsp称&nbsp重&nbsp员：${weight.weightMember }</p>
     	<p>&nbsp开&nbsp票&nbsp员：${weight.drawer }</p>
     	<p>&nbsp装&nbsp载&nbsp员：${weight.loadingMember }</p>
     	<p>称重日期：${weight.date }</p>
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