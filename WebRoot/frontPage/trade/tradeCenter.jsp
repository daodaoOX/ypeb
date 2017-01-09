<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>积分交易所</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <!-- ************交易所页面***********
    iframe布局。
   1. 左侧。
   		左侧为“交易中心”，“积分买卖”、“交易记录”三个栏目。
   		处理方法为front_TradeCenter_tradeCenter,front_TradeCenter_dealList,
   		front_TradeCenter_queryRecord(把userId带到后台).
   	2.右侧。
   		右侧为局部刷新。局部刷新页面分别为tradeGraph.jsp,tradeDeal,tradeRecord。
    
     -->
  </body>
</html>
