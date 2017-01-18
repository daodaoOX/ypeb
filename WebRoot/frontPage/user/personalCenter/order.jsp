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
				<span>${orderToSend }</span>
			</div>
			<div class="statistics">
				<p>待收货</p>
				<span>${orderSending }</span>
			</div>
			<div class="statistics">
				<p>配送完成</p>
				<span>${orderSended }</span>
			</div>
			<div class="clearfix"></div>
		</div>
		<!--订单-->
		<c:forEach items="${orderShowList}" var="list">
			<div class="list">
				<div class="list_line"></div>
				<img src="upload/image/goods/${list.imageUrl }">
				<p class="list_p1">${list.goodsName }</p>
				<p class="list_p2">x${list.order.num }</p>
				<p class="list_p3">￥${list.order.totalprice }元</p>
				<p class="list_p4">
					<c:if test="${list.order.state==0 }">待支付</c:if>
					<c:if test="${list.order.state==1 }">待发货</c:if>
					<c:if test="${list.order.state==2 }">配送中</c:if>
					<c:if test="${list.order.state==3 }">配送完成</c:if>
					<c:if test="${list.order.state==4 }">订单完成</c:if>
				</p>
				<p class="list_p5">操作</p>
				<div class="clearfix"></div>
			</div>
		</c:forEach>
		<!--交易明细_翻页按钮-->
		<div class="pagination_box">
			<span>1</span> <span>2</span> <span>3</span> <span>4</span>
			<p>......</p>
			<div class="clearfix"></div>
		</div>
	</div>
</body>
</html>
