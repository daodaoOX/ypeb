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
<base href="<%=basePath%>">

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
		<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="frontCss/header_and_footer.css">
<link rel="stylesheet" type="text/css"
	href="frontCss/shopping/detail.css">
<script src="bootstrap/js/jquery-2.1.4.min.js"></script>
</head>

<body >

	<div class="s_classification">
		<div class="boundary">
			<h1>全部&gt;</h1>
			<h1>${goods.goodscategory.name }&gt;</h1>
			<h1>${secondName }&gt;</h1>
			<h1>${goods.name }</h1>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!--商品信息-->
	<div class="commodity">
		<div class="commodity_img">
			<div class="commodity_s_img" id="box">
				<span id="img1"><img width="72px" height="72px" id="src1"
					src="upload/image/goods/${goods.imageUrl1 }"></span> 
				<span id="img2"><img width="72px" height="72px" id="src2"
					src="upload/image/goods/${goods.imageUrl1 }"></span> 
				<span id="img3"><img width="72px" height="72px" id="src3"
					src="upload/image/goods/${goods.imageUrl1 }"></span>
				<span id="img4"><img width="72px" height="72px" id="src4"
					src="upload/image/goods/${goods.imageUrl1 }"></span> 
				<span id="img5"><img width="72px" height="72px" id="src5"
					src="upload/image/goods/${goods.imageUrl1 }"></span>
			</div>
		</div>
		<div class="commodity_information">
			<h1 class="commodity_name">${goods.name }</h1>
			<h1 class="commodity_number">商品货号：${goods.code }</h1>
			<form action="">
			<div class="purchase_box">
				<div class="name">
					<h1 class="vip_price">商城会员价：</h1>
					<h1>价格：</h1>
					<h1>赠送积分：</h1>
					<h1>购买数量：</h1>
				</div>
				<div class="number">
					<h1 class="vip_price_number">￥${goods.discountPrice }</h1>
					<h1 class="price">￥${goods.price }</h1>
					<h1 class="integral">${goods.givePoints }</h1>
					<div class="quantity">
						<input name="numtext"
							class="am-num-text" type="text" value="1"
							onkeyup="this.value=this.value.replace(/\D/g,'')"
							onafterpaste="this.value=this.value.replace(/\D/g,'')">
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="divbuy">
					<a href="frontShopping_Goods_payPre?id=${goods.id }" target="index">
						<span type="submit" class="spanbuy" onclick="nowbuy();">立即购买</span>
					</a>
				</div>
				<div class="clearfix"></div>
					<div class="divcart">
						<a href="frontPage/shopping/shoppingCar.jsp" target="index">
							<span type="submit" class="spancart">加入购物车</span>
						</a>
					</div>
				<div class="clearfix"></div>
			</div>
			</form>
			<div class="clearfix"></div>
		</div>

		<div class="service">
			<h1>联系我们</h1>
			<h2>客服电话：0539-8888888</h2>
			<h2>客服QQ：123456789</h2>
			<h2>客服邮箱：123456789@qq.com</h2>
			<div class="guarantee">
				<img src="img/detail/guarantee_1.png"> <img
					src="img/detail/guarantee_2.png"> <img
					src="img/detail/guarantee_3.png">
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>

	<!--相关分类  商品详情-->
	<div class="relative_a_detail">
		<div class="foot_box">
			<div class="activty_box">
				<c:forEach items="${ adList}" var="list">
					<img src="upload/image/advertisement/${list.url }">
				</c:forEach>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="commodity_detail">
			<div>
				<h1>规格参数</h1>
				<div class="gray_border">
					${goods.specification }
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="image">
				<p>商品介绍：</p>
				${goods.description }
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!--商铺主图切换-->
	<script>
		
		window.onload = function() {
			var src1 = $("#src1").attr('src');
			var src2 = $("#src2").attr('src');
			var src3 = $("#src3").attr('src');
			var src4 = $("#src4").attr('src');
			var src5 = $("#src5").attr('src');
			var box = document.getElementById("box");
			function fun(imgs, bg) {
			box.style.backgroundImage = "url("+src1+")";
				var target = document.getElementById(imgs);
				target.onmouseover = function() {
					box.style.backgroundImage = bg;
					//alert(box.style.backgroundImage);
					target.onmouseout = function() {
						box.style.backgroundImage = bg;
					}
				}
			}
			fun("img1",  "url("+src1+")");
			fun("img2", "url("+src2+")");
			fun("img3", "url("+src3+")");
			fun("img4", "url("+src4+")");
			fun("img5", "url("+src5+")");
		}
	</script>

	<!-- 获得页面输入的数量 -->
	<script>
	function nowbuy(){
		var val = $("input[name='numtext']").val();
		alert(val);
		$.ajax({
		    url: "/action",
		    type: "post",
		    data: val,
		    success: function (result) {
		        //handle
		    }
		});
	}
	</script>
</body>
</html>
