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
<link type="text/css" rel="stylesheet"
	href="frontCss/header_and_footer.css">
<link type="text/css" rel="stylesheet" href="frontCss/user/message.css">
<style>
</style>
</head>

<body>
<form action="">
	<div class="leave_word_box">
		<textarea class="leave_word_frame"></textarea>
		<input class="send" type="submit" value="提交留言">
	</div>
</form>
	<h1 class="leave_word_headline">留言记录</h1>
	<div class="reply_box">
		<div class="reply_s_box">
			<p class="reply">回复：我是回复我是回复我是回复我是回复我是回复我是回复</p>
			<p class="leave_word_time">2017.01.12</p>
			<div class="clearfix"></div>
		</div>
		<div class="reply_s_box">
			<p class="leave_word">我是回复我是回复我是回复我是回复我是回复我是回复</p>
			<p class="leave_word_time">2017.01.12</p>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="reply_box">
		<div class="reply_s_box">
			<p class="reply">回复：我是回复我是回复我是回复我是回复我是回复我是回复</p>
			<p class="leave_word_time">2017.01.12</p>
			<div class="clearfix"></div>
		</div>
		<div class="reply_s_box">
			<p class="leave_word">我是回复我是回复我是回复我是回复我是回复我是回复</p>
			<p class="leave_word_time">2017.01.12</p>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="reply_box">
		<div class="reply_s_box">
			<p class="reply">回复：我是回复我是回复我是回复我是回复我是回复我是回复</p>
			<p class="leave_word_time">2017.01.12</p>
			<div class="clearfix"></div>
		</div>
		<div class="reply_s_box">
			<p class="leave_word">我是回复我是回复我是回复我是回复我是回复我是回复</p>
			<p class="leave_word_time">2017.01.12</p>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="reply_box">
		<div class="reply_s_box">
			<p class="reply">回复：我是回复我是回复我是回复我是回复我是回复我是回复</p>
			<p class="leave_word_time">2017.01.12</p>
			<div class="clearfix"></div>
		</div>
		<div class="reply_s_box">
			<p class="leave_word">我是回复我是回复我是回复我是回复我是回复我是回复</p>
			<p class="leave_word_time">2017.01.12</p>
			<div class="clearfix"></div>
		</div>
	</div>
</body>
</html>
