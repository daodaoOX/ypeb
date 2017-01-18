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
<title>无标题文档</title>
<script src="frontJs/jquery.js"></script>
<link type="text/css" rel="stylesheet"
	href="frontCss/header_and_footer.css">
<link type="text/css" rel="stylesheet" href="frontCss/user/address.css">
<style>
</style>
</head>

<body>
	<div class="ra_box">
		<!--我的地址-->
		<div class="my_ra">
			<c:forEach items="${addressList }" var="list">
				<div class="ra">
					<p>${list.name }（收）</p>

					<p>${list.telephone }</p>
					<p>${list.address }</p>
					<div class="ra_img">
						<a
							href="frontUser_PersonalCenter_deleteAddress?addressId=${list.id }">
							<img src="img/personal_information/shanchu.png">
						</a>
					</div>
				</div>
				<div class="clearfix"></div>
			</c:forEach>

			<div class="clearfix"></div>
			<div class="ra_add_btn">添加新地址</div>
			<div class="clearfix"></div>
		</div>
		<!--编辑地址-->
		<div class="chenge_ra_box">
			<div class="change_ra">
				<p>收件人</p>
				<input type="text">
				<div class="clearfix"></div>
			</div>
			<div class="change_ra">
				<p>手机号码</p>
				<input type="text">
				<div class="clearfix"></div>
			</div>
			<!--收件地址-->

			<!--收件地址-->
			<textarea class="input-1"></textarea>
			<input type="button" class="input-2" value="确认添加">
		</div>
		<!--添加地址-->
		<div class="add_ra_box">
			<form action="frontUser_PersonalCenter_addAddress" method="post">
				<div class="change_ra">
					<p>收件人</p>
					<input type="text" name="address.name">
					<div class="clearfix"></div>
				</div>
				<div class="change_ra">
					<p>手机号码</p>
					<input type="text" name="address.telephone">
					<div class="clearfix"></div>
				</div>
				<!--收件地址-->

				<!--收件地址-->
				<textarea class="input-1" name="address.address"></textarea>
				<input type="submit" class="input-2" value="确认更改">

			</form>
		</div>

	</div>
	<script>
		$(".my_ra").siblings().hide();
		//点击事件
		$(".ra_add_btn").click(function() {
			$(".add_ra_box").show().siblings().hide();
		});
		$(".bianji1").click(function() {
			$(".chenge_ra_box").show().siblings().hide();
		});
	</script>
</body>
</html>
