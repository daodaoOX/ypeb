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
<meta charset="utf-8">
<link type="text/css" rel="stylesheet" href="frontCss/user/change_password.css">
<link type="text/css" rel="stylesheet" href="frontCss/universal.css">
<title>无标题文档</title>
</head>

<body>
	<div>
		<div class="change_sign_up">
			<p class="headline">修改登录密码</p>
			<div class="box">
				<p class="old_password">原登录密码：</p>
				<input type="text">
				<div class="clearfix"></div>
			</div>
			<div class="box">
				<p>请输入新密码：</p>
				<input type="password">
				<div class="clearfix"></div>
			</div>
			<div class="box">
				<p>请确认新密码：</p>
				<input type="password">
				<div class="clearfix"></div>
			</div>
			<input class="confirm" type="submit" value="确定修改">
		</div>
		<div class="change_sign_up">
			<p class="headline">修改支付密码</p>
			<div class="box">
				<p class="old_password">原支付密码：</p>
				<input type="text">
				<div class="clearfix"></div>
			</div>
			<div class="box">
				<p>请输入新密码：</p>
				<input type="password">
				<div class="clearfix"></div>
			</div>
			<div class="box">
				<p>请确认新密码：</p>
				<input type="password">
				<div class="clearfix"></div>
			</div>
			<input class="confirm" type="submit" value="确定修改">
		</div>
		<div class="clearfix"></div>
	</div>
</body>
</html>
