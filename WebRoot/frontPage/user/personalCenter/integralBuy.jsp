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
<link type="text/css" rel="stylesheet" href="frontCss/user/integralBuy.css">
<style>
</style>
</head>

<body>
	
	<!--积分交易-->
	<div class="integral_deal_box">
		<div class="integral_deal">
			<div class="category">
				<h1>发行编号</h1>
				<h5>发行时间</h5>
				<h2>发行量</h2>
				<h3>剩余量</h3>
				<h4>单价</h4>
				<div class="clearfix"></div>
			</div>
			<div class="item">
				<h1>S7WH3</h1>
				<h5>2017.01.01-2017.01.29</h5>
				<h2>20000</h2>
				<h3>2450</h3>
				<h4>10积分/元</h4>
				<div class="clearfix"></div>
			</div>
	<form action="">
			<div class="purchase_quantity">
				<p>请输入你要购买的积分数量：</p>
				<input type="text" onkeyup="this.value=this.value.replace(/[^\d]/g,'') " onafterpaste="this.value=this.value.replace(/[^\d]/g,'') "/>
				<div class="clearfix"></div>
			</div>
			<div class="pay_cash">
				<p>需支付现金：</p>
				<p class="pay_cash_number">20元</p>
				<div class="clearfix"></div>
			</div>
			<button class="buy"  type="submit" >购买</button>
	</form>
		</div>
	</div>
</body>
</html>
