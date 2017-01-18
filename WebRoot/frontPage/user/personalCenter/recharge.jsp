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
<link type="text/css" rel="stylesheet" href="frontCss/user/recharge.css">
<style>
</style>
</head>

<body>
<form action="">
	<div class="headline">
		<p>请输入申请的微信昵称：</p>
		<p>请输入你需要充值的金额：</p>
	</div>
	<div class="number">
		<input class="number1" type="text" />
		<input class="number2" type="text" />
	</div>
	<div class="clearfix"></div>
	<input class="apply_for" type="submit" value="确认申请">
</form>
</body>
</html>
