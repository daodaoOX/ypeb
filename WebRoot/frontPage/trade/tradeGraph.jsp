<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>交易中心K线图</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body><!-- *********交易中心K线*************
  1.将月交易变化编程K线图，分别为每天第一笔交易"tradeK.firstTrade"，最后一笔"tradeK.lastTrade",
  最高一笔"tradeK.maxTrade",最低一笔"tradeK.minTrade"。本月的全放在tradeMRecodeList集合中。
  2.当前积分RMB兑换比率，
     -->
  </body>
</html>
