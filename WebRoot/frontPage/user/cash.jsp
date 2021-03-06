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
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<link rel="stylesheet" type="text/css"
	href="frontCss/header_and_footer.css">
<link rel="stylesheet" type="text/css"
	href="frontCss/user/Shopping_points.css">
<meta charset="utf-8">
<title>无标题文档</title>

</head>

<body>

	<!--交易明细-->
	<div class="reckoning_box">
		<div class="reckoning_tltle">
			<p>交易项目</p>
			<p>交易额</p>
			<p>时间</p>
			<p>余额&nbsp;&nbsp;${user.cash }</p>
			<div class="clearfix"></div>
		</div>
		<c:forEach items="${cashList }" var="list">
			<div class="reckoning">
				<div class="reckoning_line"></div>
				<p>
					<c:if test="${list.operate==true }">充值</c:if>
					<c:if test="${list.operate==false }">提现</c:if>
				</p>
				<p>${list.num }</p>
				<p><fmt:formatDate value="${list.time}"
						pattern="yyyy-MM-dd" /> </p>
				
				<div class="clearfix"></div>

			</div>
		</c:forEach>
	</div>
	</div>
	<!--交易明细_翻页按钮-->
	<div class="pagination_box">
		<span>1</span> <span>2</span> <span>3</span> <span>4</span>
		<p>......</p>
		<div class="clearfix"></div>
	</div>

</body>
</html>
