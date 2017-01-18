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
<link rel="stylesheet" href="<%=path %>/frontCss/header_and_footer.css">
<link type="text/css" rel="stylesheet" href="<%=path %>/frontCss/user/recommended_member.css">
</head>

<body>
<div class="tuijian_box">
<form action="">
	<div class="zhuce_box">
		<p>帮好友注册</p>
		<input type="text" value=""maxlength="11" placeholder="请输入你的手机号" name="phone"
					onkeyup="this.value=this.value.replace(/[^\d]/g,'') " onafterpaste="this.value=this.value.replace(/[^\d]/g,'') " name="f_order"/>
		<input type="password" value="" name="pwdo" placeholder="请设置新账号的密码"/>
		<input type="password" value="" name="pwdt" placeholder="请确认密码">
		<input type="text" value=""  style="width: 198px;float: left;" placeholder="请输入验证码">
		<img src="img/user/yzm.png" class="img_yanzheng">
		<div class="clearfix"></div>
		<input type="submit" onClick="pwd();" />
		<!--地址-->
		<div class="zhuce_btn">
		</div>
	</div>
</form>
	<div class="fenxiang_box">
		<div class="fenxiang">分享注册链接给好友</div>
		<p>注：好友通过你分享的注册链接<br>　　注册将会成为你推荐的会员</p>
	</div>
</div>	
    <!-- 验证手机号和密码格式是否正确 -->
    <script>
	function pwd(){
		var phone = $("input[name='phone']").val();
		alert(phone);
		if(phone && /^1[3|4|5|7|8]\d{9}$/.test(phone)){
			//alert($("input[name='phone']").val());
		} else{
			alert("手机号码格式不正确!");
		}
    	if($("input[name='pwdo']").val()==$("input[name='pwdt']").val()){
			//alert("yes");
	    }else{
			alert("重复输入的密码不正确!");		
	  }
	}
    </script>
</body>
</html>
