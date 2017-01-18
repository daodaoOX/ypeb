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
		action="backUser_UserManage_queryUser" method="post">
		<div class="searchBar">
			<ul class="searchContent">
				<li><label>用户手机号：</label> <input type="text" name="telephone"
					value="${telephone }" class="phone"/></li>
				
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
			<li><a class="edit"
				href="backShopping_GoodsOrder_delete?uid={sid_user} "
				target="ajaxTodo" title="确定要删除吗?"><span>升级商城会员</span></a></li>
			<li><a class="edit"
				href="backShopping_GoodsOrder_modifyPre?uid={sid_user}"
				target="dialog" width="900" height="300"><span>充值现金</span></a></li>
		</ul>

	</div>
	<table class="table" width="1160" layoutH="138">
		<thead>
			<tr>

				<th width="70" align="center">用户ID</th>
				<th width="100" align="center">电话</th>
				<th width="70" align="center">用户名</th>
				<th width="70" align="center">省</th>
				<th width="70" align="center">市</th>
				<th width="70" align="center">县(区)</th>
				<th width="70" align="center">用户等级</th>
				<th width="70" align="center">用户类型</th>
				<th width="70" align="center">推荐人</th>			
				<th width="70" align="center">现金余额</th>
				<th width="70" align="center">购物积分余额</th>
				<th width="70" align="center">冻结积分余额</th>
				<th width="70" align="center">交易积分余额</th>


			</tr>
		</thead>
		<tbody>

			<c:forEach items="${userList}" var="list">
				<tr target="sid_user" rel="${list.id }">
					<td>${list.id }</td>
					<td>${list.telephone }</td>
					<td>${list.name }</td>
					<td>${list.province }</td>
					<td>${list.city }</td>
					<td>${list.country }</td>
					<td>${list.level}</td>
					<td>${list.style }</td>
					<td>${list.user.telepone }</td>
					<td>${list.cash }</td>
					<td>${list.usingPoints }</td>
					<td>${list.icePoints }</td>
					<td>${list.tradePoints }</td>
					
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


