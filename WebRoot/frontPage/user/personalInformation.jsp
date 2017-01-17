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
<link type="text/css" rel="stylesheet" href="frontCss/user/personal_information.css">
<link rel="stylesheet" type="text/css" href="frontCss/header_and_footer.css">
<meta charset="utf-8">
<script src="js/jquery.js"></script>
<title>无标题文档</title>
<style>
	.hove .color{color:#ec1d23;}
	</style>
</head>

<body>
	<div class="personal_information_box">
	<!--左侧内容-->
	<div class="left_box">
		<!--面包屑路径-->
		<ul class="nav">
			<li>首页</li>
			<img src="img/personal_information/right_jiantou.png">
			<li>我的信息</li>
			<div class="clearfix"></div>
			<div class="nav_line"></div> 
		</ul>
		<!--个人资料-->
		<div class="my_message">
			<img src="img/personal_information/touxiang.png">
			<div class="vip_name">
				<p>会员名</p>
				<p>普通会员</p>
			</div>
			<div class="clearfix"></div>
			<p class="p1">退出登陆</p>
			<p class="p1">信息完善度</p>
			<div class="totality1">
				<div class="totality2"></div>
			</div>
			<div class="my_message_line"></div>
		</div>
		<!--会员中心-->
		<div class="vip_centrality">
			<img src="img/personal_information/vip.png">
			<ul class="hove">
				<span class="click_ul">会员中心</span>
				<a href="frontUser_PersonalCenter_myInfo" target="mytrade"><li class="color">我的信息</li></a>
				<a href="frontPage/user/personalCenter/changePassword.jsp" target="mytrade"><li>修改密码</li></a>
				<a href="frontUser_PersonalCenter_myOrder" target="mytrade"><li>我的订单</li></a>
				<a href="jsp/Receipt_address.html" target="mytrade"><li>收货地址</li></a>
				<a href="jsp/Recommended_member.html" target="mytrade"><li>推荐会员</li></a>
				<a href="jsp/recommend_record.html" target="mytrade"><li>推荐记录</li></a>
				<a href="jsp/bonus_record.html" target="mytrade"><li>奖金记录</li></a>
				<a href="jsp/leave_word.html" target="mytrade"><li>我的留言</li></a>
			</ul>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--右侧内容-->
	<div class="right_box">
		<!--资产中心-->
		<div class="asset_Center">
			<div class="property_box">
				<a target="mytrade" href="jsp/Shopping_points.html">
					<div class="property property_bor">
						<h2>账号余额</h2>
						<img src="img/personal_information/remainingSum.png" >
						<p>600元</p>
					</div>
				</a>
				<a target="mytrade" href="jsp/Shopping_points.html">
				<div class="property">
					<h2>购物积分</h2>
					<img src="img/personal_information/remainingSum2.png" >
					<p>220</p>
				</div>
				</a>
				<a target="mytrade" href="jsp/Freezing_integral.html">
					<div class="property">
						<h2>冻结积分</h2>
						<img src="img/personal_information/remainingSum3.png" >
						<p>300</p>
					</div>
				</a>
				<div class="property">
					<h2>交易积分</h2>
					<img src="img/personal_information/remainingSum4.png" >
					<p>100</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="iframe">
			<iframe name="mytrade" frameborder="no" width="720" height="900" scrolling="no" marginheight="0" marginwidth="0" src="frontUser_PersonalCenter_myInfo"></iframe>
		</div>
		
	</div>
	<div class="clearfix"></div>
</div> 
<script>
	$(".hove li").click(
		function(){
			$(".hove li").removeClass("color")
			$(this).addClass("color")
			
		}
	)
	$(".property").click(
		function(){
			$(".property").removeClass("property_bor")
			$(this).addClass("property_bor")
		}
	)
</script>
</body>
</html>
