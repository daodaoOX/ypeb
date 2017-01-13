<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
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
    <!-- 
     		************用户登录页面***************
    1.登录使用手机号和登录密码登录，信息存在user对象中
    2.警告信息alerts，使用boostrap实现。包括手机号错误（状态码state=201），密码错误（202）
    验证码错误（203），未知原因（205）。
    3.验证码。使用front_Login_verification方法处理,验证码存在SEESION里面。
     -->
     
     
     
  </body>
</html>
