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
	<div class="nav_box">
		<div class="nav">
			<h1><a href="frontShopping_Index_bodyData" target="index">首页</a> &gt;</h1>
			<h1>公告</h1>
			<h1></h1>
		</div>
		<div class="clearfix"></div>
	</div>
	
	<div class="box">
		<div class="notice_list">
			<div class="category">
				<h1>标题</h1>
				<h2>日期</h2>
				<div class="clearfix"></div>
			</div>
			<div class="item">
				<h1 class="title"><a href="frontPage/shopping/dispAnnouncement.jsp">东北地区因雨雪天气延迟发货！</a></h1>
				<h2>2017.01.03</h2>
				<div class="clearfix"></div>
			</div>
			<div class="item">
				<h1 class="title"><a href="">东北地区因雨雪天气延迟发货！</a></h1>
				<h2>2017.01.03</h2>
				<div class="clearfix"></div>
			</div>
			<div class="item">
				<h1 class="title"><a href="">东北地区因雨雪天气延迟发货！</a></h1>
				<h2>2017.01.03</h2>
				<div class="clearfix"></div>
			</div><div class="item1">
				<h1 class="title"><a href="">东北地区因雨雪天气延迟发货！</a></h1>
				<h2>2017.01.03</h2>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="addBottomHei"></div>
  </body>
</html>
