<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<head>
<base href="<%=basePath%>">

<title>商城订单管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<form id="pagerForm" method="post"
	action="backTrade_PointsSale_comprehensiveQuery">
	<input type="hidden" name="pageNum" value="1" /> <input type="hidden"
		name="numPerPage" value="50" /> <input type="hidden"
		name="orderField" value="${queryCondition.orderField}" /> <input
		type="hidden" name="orderDirection"
		value="${queryCondition.orderDirection}" />
</form>

<div class="pageHeader">

	<form rel="pagerForm" onsubmit="return navTabSearch(this);"
		class="pageForm required-validate"
		action="backShopping_GoodsOrder_comprehensiveQuery" method="post">
		<div class="searchBar">
			<ul class="searchContent">
			<li><label>订单号：</label> <input type="text"
					name="id" value="${order.id }" /></li>
				<li><label>购买人ID：</label> <input type="text"
					name="uid" value="${order.userId }" /></li>
				<li><label>商品ID：</label> <input type="text"
					name="goodsID" value="${order.goodsId }" /></li>
					</ul>
			<ul>
				<li><label>订单状态：</label><select class="combox"
					name="order.state">
						<option value="${order.state }">订单状态(${order.state })</option>
						<option value="1">待发货（1）</option>
						<option value="2">发货中（2）</option>
						<option value="3">发货完成（3）</option>
						<option value="4">确认完成（4）</option>
				</select></li>
			</ul>

			<div class="subBar">
				<ul>
					<li><div class="buttonActive">
							<div class="buttonContent">
								<button type="submit">检索</button>
							</div>
						</div></li>

				</ul>
			</div>
		</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="backPage/shopping/order/add.jsp"
				target="dialog" rel="addCategroy" width="900" height="400"><span>添加</span></a></li>
			<li><a class="delete"
				href="backShopping_GoodsOrder_delete?uid={sid_user} "
				target="ajaxTodo" title="确定要删除吗?"><span>删除</span></a></li>
			<li><a class="edit"
				href="backShopping_GoodsOrder_modifyPre?uid={sid_user}"
				target="dialog" width="900" height="300"><span>修改</span></a></li>
		</ul>

	</div>
	<table class="table" width="1160" layoutH="138">
		<thead>
			<tr>

				<th width="70" align="center">订单号</th>
				<th width="70" align="center">商品ID</th>
				<th width="70" align="center">购买人ID</th>
				<th width="70" align="center">单价</th>
				<th width="70" align="center">数量</th>
				<th width="70" align="center">总价</th>
				<th width="70" align="center">订单状态</th>
				<th width="70" align="center">订单类型</th>
				<th width="70" align="center">收货地址ID</th>


			</tr>
		</thead>
		<tbody>

			<c:forEach items="${orderList}" var="list">
				<tr target="sid_user" rel="${list.id }">
					<td>${list.id }</td>
					<td>${list.goodsId }</td>
					<td>${list.userId }</td>
					<td>${list.unitPrice }</td>
					<td>${list.num }</td>
					<td>${list.totalprice }</td>
					<td>${list.state }</td>
					<td>${list.style }</td>
					<td>${address }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="panelBar">
		<div class="pages">
			<span>每页显示 50条，共${totalCount}条</span>
		</div>

		<div class="pagination" targetType="navTab"
			totalCount="${page.totalCount }" numPerPage="${page.everyPage }"
			pageNumShown="10" currentPage="${page.currentPage }"></div>

	</div>
</div>


