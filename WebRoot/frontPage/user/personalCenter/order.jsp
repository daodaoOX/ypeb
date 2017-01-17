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
<title>无标题文档</title>
<link rel="stylesheet" href="frontCss/header_and_footer.css">
<link rel="stylesheet" href="frontCss/user/My_order.css">
<style>
	
	</style>
</head>

<body>
	<div class="list_box">
	<!--订单统计-->
		<div class="statistics_box">
			<div class="list_line"></div>
			<div class="statistics">
				<p>待发货</p>
				<span>1</span>
			</div>
			<div class="statistics">
				<p>待收货</p>
				<span>3</span>
			</div>
			<div class="statistics">
				<p>已完成</p>
				<span>3</span>
			</div>
			<div class="clearfix"></div>
		</div>
		<!--订单-->
		<div class="list">
			<div class="list_line"></div>
			<img src="../img/my_order/My_order.html.png">
			<p class="list_p1">新货【白味草】夏威夷果</p>
			<p class="list_p2">x1</p>
			<p class="list_p3">￥39.9元</p>
			<p class="list_p4">物流信息</p>
			<p class="list_p5">查看详情</p>
			<div class="clearfix"></div>
		</div>
		<div class="list">
			<div class="list_line"></div>
			<img src="../img/my_order/My_order.html.png">
			<p class="list_p1">新货【白味草】夏威夷果</p>
			<p class="list_p2">x1</p>
			<p class="list_p3">￥39.9元</p>
			<p class="list_p4">物流信息</p>
			<p class="list_p5">查看详情</p>
			<div class="clearfix"></div>
		</div>
		<div class="list">
			<div class="list_line"></div>
			<img src="../img/my_order/My_order.html.png">
			<p class="list_p1">新货【白味草】夏威夷果</p>
			<p class="list_p2">x1</p>
			<p class="list_p3">￥39.9元</p>
			<p class="list_p4">物流信息</p>
			<p class="list_p5">查看详情</p>
			<div class="clearfix"></div>
		</div>
		<div class="list">
			<div class="list_line"></div>
			<img src="../img/my_order/My_order.html.png">
			<p class="list_p1">新货【白味草】夏威夷果</p>
			<p class="list_p2">x1</p>
			<p class="list_p3">￥39.9元</p>
			<p class="list_p4">物流信息</p>
			<p class="list_p5">查看详情</p>
			<div class="clearfix"></div>
		</div>
		<div class="list">
			<div class="list_line"></div>
			<img src="../img/my_order/My_order.html.png">
			<p class="list_p1">新货【白味草】夏威夷果</p>
			<p class="list_p2">x1</p>
			<p class="list_p3">￥39.9元</p>
			<p class="list_p4">物流信息</p>
			<p class="list_p5">查看详情</p>
			<div class="clearfix"></div>
		</div>
		<div class="list">
			<div class="list_line"></div>
			<img src="../img/my_order/My_order.html.png">
			<p class="list_p1">新货【白味草】夏威夷果</p>
			<p class="list_p2">x1</p>
			<p class="list_p3">￥39.9元</p>
			<p class="list_p4">物流信息</p>
			<p class="list_p5">查看详情</p>
			<div class="clearfix"></div>
		</div>
				<!--交易明细_翻页按钮-->
		<div class="pagination_box">
			<span>1</span>
			<span>2</span>
			<span>3</span>
			<span>4</span>
			<p>......</p>
			<div class="clearfix"></div>
		</div>
	</div>
	</body>
</html>
