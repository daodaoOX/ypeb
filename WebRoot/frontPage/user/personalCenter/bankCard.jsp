<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<base href="<%=basePath%>">
<script src="frontJs/jquery.js"></script>
<link type="text/css" rel="stylesheet" href="frontCss/user/bankCard.css">
<style>
</style>
</head>

<body>
	<div class="bankcard">
		<p>6233 xxxx xxxx 2364</p>
		<img src="img/personal_information/shanchu.png">
	<input class="add_bankcard" type="button" value="添加银行卡">
	</div>
	
		<div class="add_bankcards">
			<form action="">
				<p>请输入银行卡号：</p>
				<input type="text">
				<div class="clearfix"></div>
				<input class="add_button" type="submit" value="添加" />
			</form>
		</div>

	<script>
		$(".bankcard").siblings().hide();
		//点击事件
		$(".add_bankcard").click(function() {
			$(".add_bankcards").show().siblings().hide();
		});
	</script>
</body>
</html>
