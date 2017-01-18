<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<link rel="stylesheet" href="frontCss/shopping/announcement.css" />
  </head>
  
  <body>
    	<!--nav-->
	<div class="s_classification">
		<div class="boundary">
			<h1><a href="<%=path %>/frontPage/body.jsp" target="index">首页&gt;</a></h1>
			<h1><a href="<%=path %>/frontPage/shopping/listAnnouncement.jsp" target="index">公告&gt;</a></h1>
			<h1>东北地区因恶劣天气延迟发货！</h1>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div>
		<div class="box">
		<div class="activity_box">
			<img src="img/notice/activity.png">
		</div>
		<div class="notice_detail">
			<div class="notice">
				<h1>东北地区因恶劣天气延迟发货!</h1>
				<h2>尊敬的沂品商城用户：</h2>
				<p>我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容</p>
				<h3>感谢你对沂品商城的支持与厚爱。</h3>
				<div class="signature">
					<h4>沂品商城</h4>
					<h4>2017.01.02</h4>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	</div>
	<div class="addBottomHei"></div>
  </body>
</html>
