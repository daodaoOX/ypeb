<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册</title>
    
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
	**********用户简单注册界面**************
	注册流程：
	1、注册信息。输入手机号作为登录名，用户名只用作别称，区域包括：省市县，使用下拉框插件实现
	用户登录密码，密码确认，！！要检查密码和手机号是否符合规范(密码6-11位，包含数字和字符)!!。
	注册信息全部存在user对象里面提交给front_Login_simpleRegist方法处理。
	2、验证码。使用front_Login_verification方法处理,验证码存在SEESION里面。
	3、推荐人ID。推荐人ID在页面获取之后赋值给user.referrer，如果没有要给其赋值"0"。
	4、返回信息。提交之后如果手机号已经被注册要有提示行。
	
	  -->
  </body>
</html>
