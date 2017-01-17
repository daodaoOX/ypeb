<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="frontCss/header_and_footer.css">
	<link rel="stylesheet" type="text/css" href="frontCss/shopping/pay.css">
	<script src="bootstrap/js/jquery-2.1.4.min.js"></script>
	<script src="frontJs/shopping/layer/layer.js"></script>
  </head>
  
  <body onload="window.parent.document.getElementById('index').height=document.body.scrollHeight;">
   	<!---->
	<div class="nav_box">
		<div class="nav">
			<h1><a href="frontPage/body.jsp" target="index">首页</a> &gt;</h1>
			<h1><a href="frontPage/shopping/shoppingCar.jsp" target="index">购物车</a>&gt;</h1>
			<h1>支付</h1>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>	
	
	<div class="site_box">
		<div class="site">
			<h1>小明（收）</h1>
			<h1>山东省 临沂市 兰山区 兰山街道 临西五路与成才路交汇 金谷大酒店</h1>
			<h1>131-9876-5432</h1>
			<input type="checkbox" checked="checked">
		</div>
		<input class="add_site" type="button" id="parentIframe" value="添加新地址">
		<input class="manage_site" type="button" value="管理地址">
		<div class="clearfix"></div>
	</div>
	
	
	<!--商品-->
	<div class="shoppingcart_box">
		<div>
			<h1>商品</h1>
			<div class="assist_box">	
				<h2>属性</h2>
				<h2>单价</h2>
				<h2>数量</h2>
				<h2>小结</h2>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	
    <!--商品-->
	<div class="sc_commodity">
		<div class="boundary"></div>
		<img src="img/shopping_car/commodity.png">
		<h1>新货【百草味】夏威夷果200g*3袋 坚果炒货零食干果 奶油味</h1>
		<div class="assist_box">
			<h2>￥<span>39.90</span></h2>
            <h2>x<span>1</span></h2>
			<h2>￥<span>39.90</span></h2>
			<h2>奶油味</h2>
		</div>
		<div class="clearfix"></div>
	</div>

<!--支付-->
	<div class="check_out_box">
		<div class="assist_box">
			<h1>积分余额</h1>
			<h1>共计￥39.9</h1>
			<h1>需支付 40 积分</h1>
			<input type="button" value="去支付">
		</div>
		<div class="clearfix"></div>
	</div>

<!--添加地址弹出框-->
	<script>
		$("#parentIframe").on("click", function(){
	 		layer.open({
	        type: 2,
	        title: "添加地址",
	        fix:false,
	        shadeClose:true,
	        maxmin:true,
	        area:["700px", "600px"],
	        content:"frontPage/shopping/address.jsp",
	    });
	});
	</script>
  </body>
</html>
