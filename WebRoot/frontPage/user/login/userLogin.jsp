<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<<<<<<< HEAD
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="frontCss/header_and_footer.css" type="text/css">
	<link rel="stylesheet" href="frontCss/user/login.css" type="text/css">
	<script src="bootstrap/js/jquery-2.1.4.min.js"></script>
	<!--引用城市插件-->
	<link href="frontJs/user/areaselect.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="frontJs/user/data.js"></script>
	<script type="text/javascript" src="frontJs/user/areaselect.js"></script>


  </head>
  
  <body>
    <!-- 
=======
<head>
<base href="<%=basePath%>">

<title>用户登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="frontCss/header_and_footer.css"
	type="text/css">
<link rel="stylesheet" href="frontCss/user/login.css" type="text/css">
<script src="bootstrap/js/jquery-2.1.4.min.js"></script>
<!--引用城市插件-->
<link href="frontJs/user/areaselect.css" type="text/css"
	rel="stylesheet" />
<script type="text/javascript" src="frontJs/user/data.js"></script>
<script type="text/javascript" src="frontJs/user/areaselect.js"></script>


</head>

<body>
	<!-- 
>>>>>>> 3299adf096613fd1725e88358ee80c3f7216472e
     		************用户登录页面***************
    1.登录使用手机号和登录密码登录，信息存在user对象中
    2.警告信息alerts，使用boostrap实现。包括手机号错误（状态码state=201），密码错误（202）
    验证码错误（203），未知原因（205）。
    3.验证码。使用front_Login_verification方法处理,验证码存在SEESION里面。
     -->


	<div class="logo1">
		<img src="img/user/logo.png">

	</div>
	<div class="bg_box">
		<img src="img/user/banner_bg.png" class="bg_img">
		<!--登陆-->


		<div class="login_box">
			<h1>会员登陆</h1>
			<h2>免费注册&gt;</h2>
			<div class="clearfix"></div>

			<form action="frontUser_Login_login" method="post">
				<div class="login1">
					<span>手机号</span> <input type="text"
						style="background-image: url(img/user/yonghu.png)" class="input5"
						name="user.telephone">
					<div class="clearfix"></div>
				</div>
				<div class="login1">
					<span>密 码</span> <input type="text" class="input6"
						name="user.password">
					<div class="clearfix"></div>
				</div>
				<div class="login1">
					<span>验证码</span> <input type="text" style="width: 154px"
						class="input7"> <img src="img/user/yzm.png"
						class="login_img">
					<div class="clearfix"></div>
				</div>
				<p class="wjmm">
					忘记密码</span>
				<div class="clearfix"></div>
				<div class="login_btn">登 录</div>
			</form>
		</div>
		<!--注册-->

		<div class="regsiter_box">
			<h1>会员注册</h1>
			<h2>登录&gt;</h2>
			<div class="clearfix"></div>

			<form action="" method="post">
				<div class="name">
					<span class="username">用户名</span> <input type="text" value=""
						placeholder="请输入用户名" class="input0" name="user.name" />
				</div>
				<div class="regsiter">
					<span>手机号</span> <input type="text" value="" name="user.telephone"
						placeholder="请输入你的手机号" class="input1" />
					<div class="clearfix"></div>
				</div>
				<div class="regsiter">
					<span>设置密码</span> <input type="text" value="" name="pwdo"
						placeholder="请输入8~16位新密码" class="input2" name="user.password" />
					<div class="clearfix"></div>
				</div>
				<div class="regsiter">
					<span>确认密码</span> <input type="text" value="" name="pwdt"
						placeholder="请重新输入8~16位新密码" class="input3" />
					<div class="clearfix"></div>
				</div>
				<div class="regsiter">
					<span>验证码 </span> <input type="text" style="width: 170px" value=""
						placeholder="请输入验证码" class="input4" /> <img
						src="img/user/yzm.png" class="login_img">
					<div class="clearfix"></div>
				</div>
				<br />
				<div class="cityaddr">
					<span>地址</span>
				</div>
				<!--选择省市县-->
				<div class="mycity">
					<input id="pr2" type="text" placeholder="省份" name="user.province" />
					<input id="ci2" type="text" placeholder="城市" name="user.city" /> <input
						id="co2" type="text" placeholder="县级" name="user.country" />
				</div>
				<!--选择省市县 end-->
				<br />
				<div class="login_btn" onClick="pwd();">
					<span type="submit">注&nbsp;&nbsp;册</span>
				</div>
			</form>
		</div>
	</div>
	<!-- 验证手机号和密码格式是否正确 -->
	<script>
		function pwd() {
			var phone = $("input[name='phone']").val();
			if (phone && /^1[3|4|5|7|8]\d{9}$/.test(phone)) {
				//alert($("input[name='phone']").val());
				if ($("input[name='pwdo']").val() == $("input[name='pwdt']")
						.val()) {
					//alert("yes");
				} else {
					alert("重复输入的密码不正确!");
				}
			} else {
				alert("手机号码格式不正确!");

			}

		}
	</script>
	<!-- 注册选择城市 -->
	<script type="text/javascript">
		new locationCard({
			ids : [ 'pr1', 'ci1', 'co1' ]
		}).init();
		new locationCard({
			ids : [ 'pr2', 'ci2', 'co2' ]
		}).init();
	</script>
	<script>
		//注册登陆切换
		$(".regsiter_box").hide()
		$(".login_box h2").click(function() {
			$(".login_box").hide()
			$(".regsiter_box").show()
		})

		$(".regsiter_box h2").click(function() {
			$(".login_box").show()
			$(".regsiter_box").hide()
		})
	</script>

</body>
</html>
