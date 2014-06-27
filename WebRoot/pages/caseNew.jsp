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
<script type="text/javascript" src="<%=path %>/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var carNumber=/^[\u4e00-\u9fa5]{1}[A-Z]{1}[\dA-Z]{5}$/;
		var driverNumber=/(^\d{15}$)|(^\d{18}$)|(^\d{17}x$)/;
		var quantity=/(^[1-9][0-9]{0,2}\.[0-9]{2}$)|(^0\.[0-9][1-9]$)|(^0\.[1-9][0-9]$)/;
	
		$(".add_btn").click(function(){
			$(".warning").text("");
			if($("#SS").val()=="" || $("#SS").val()==0){
				$("#case_type").text("请选择案件类型");
			}else if($("#carNumber").val()=="" || !carNumber.test($("#carNumber").val())){
				$("#car_number").text("请输入正确的车牌号(例：晋A12345)");
			}else if($("#driverNumber").val()=="" || !driverNumber.test($("#driverNumber").val())){
				$("#driver_number").text("请输入正确的驾驶证号");
			}else if($("#quantity").val()=="" || !quantity.test($("#quantity").val())){
				$("#quantity_").text("请输入正确的超限超载量，保留两位小数。");
			}else{
			alert("增加成功！");
			caseForm.submit();
			}
		});
		
		$("#carNumber").blur(function(){
		    if($("#carNumber").val()=="" || !carNumber.test($("#carNumber").val())){
				$("#car_number").text("请输入正确的车牌号(例：晋A12345)");
			}else{
				$("#car_number").text("");
			}
		});
		
		$("#driverNumber").blur(function(){
			if($("#driverNumber").val()=="" || !driverNumber.test($("#driverNumber").val())){
				$("#driver_number").text("请输入正确的驾驶证号");
			}else{
				$("#driver_number").text("");
			}
		});
		
		$("#quantity").blur(function(){
			if($("#quantity").val()=="" || !quantity.test($("#quantity").val())){
				$("#quantity_").text("请输入正确的超限超载量，保留两位小数。");
			}else{
				$("#quantity_").text("");
			}
		});
	});
</script>
<title>晋城市治理超限超载信息平台</title>
<style type="text/css">
	.other{vertical-align:top}
	.addbtn{text-align:center}
	.input_info textarea{resize:none;width:63%}
</style>
</head>

<body>
<header class="page_header">
  <div class="wrap clearfix"> <a href="case.jsp" class="go_back"></a> 新增治超案件 <a href="main.jsp" class="go_home"></a> </div>
</header>
<div class="main">
  <div class="wrap">
  <s:form id="caseForm" name="caseForm" method="post" action="caseNew_add.action">
    <div class="common_box">
      <p class="input_info">
        <label>案件类型：</label>
        <span id="PL_SS_SPAN">
        <select name="overload.caseType" id="SS" onchange="setJgwdSubslt(&#39;SS&#39;,&#39;CS&#39;);">
          <option value="0">请选择案件类型</option>
          <option value="1">超载</option>
          <option value="2">超限</option>
        </select>
        </span> 
      </p>
        <p id="case_type" class="warning"></p>
      <p class="input_info">
        <label>车牌号：</label>
        <s:textfield id="carNumber" name="overload.carNumber" type="text"  placeholder="请输入车牌号"></s:textfield>
      </p>
       <p id="car_number" class="warning"></p>
      <p class="input_info">
      	<label>驾驶证号：</label>
      	<s:textfield id="driverNumber" name="overload.driverNumber" type="text" placeholder="请输入驾驶证号"></s:textfield>
      </p>
       <p id="driver_number" class="warning"></p>
      <p class="input_info">
        <label>超限/载量：</label>
        <s:textfield id="quantity" name="overload.quantity" type="text" placeholder="请输入超限/载量"></s:textfield>
      </p>
       <p id="quantity_" class="warning"></p>
      <p class="input_info">
      	<label class="other">备注：</label>
      	<s:textarea name="overload.other" rows="5" placeholder="请输入其他信息"></s:textarea>
      </p>
      <p class="clearfix">
      <a style="cursor:pointer" class="add_btn">增加</a>
      </p></div>
    </s:form>
    <!--common-box-->
   
    <p id="PL_SCROLL_P" style="display: none;"></p>
   
  </div>
</div>
</body>
</html>
