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
<link rel="stylesheet" href="frontCss/header_and_footer.css">
<link type="text/css" rel="stylesheet" href="frontCss/uesr/Recommended_member.css">
<title>无标题文档</title>
</head>

<body>
<div class="tuijian_box">
	<div class="zhuce_box">
		<p>帮好友注册</p>
		<input type="text" value="请输入注册的手机号">
		<input type="text" value="请设置新账号的密码">
		<input type="text" value="请确认密码">
		<input type="text" value="请输入验证码" style="width: 198px;float: left;">
		<img src="../img/Recommended_member/yanzhgengma.png" class="img_yanzheng">
		<div class="clearfix"></div>
		<!--地址-->
		<!--地址-->
		<div class="zhuce_btn">注册</div>
	</div>
	<div class="fenxiang_box">
		<div class="fenxiang">分享注册链接给好友</div>
		<p>注：好友通过你分享的注册链接<br>　　注册将会成为你推荐的会员</p>
	</div>
</div>	
</body>
</html>
