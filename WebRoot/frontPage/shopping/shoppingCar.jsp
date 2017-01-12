<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTDHTML 4.01 Transitional//EN">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="<%=path %>/frontCss/car.css">
		<link rel="stylesheet" type="text/css" href="<%=path %>/frontCss/header_and_footer.css">
		<script type="text/javascript" src="<%=path %>/bootstrap/js/jquery-2.1.4.min.js"></script>
	</head>
	<body onload="window.parent.document.getElementById('index').height=document.body.scrollHeight;">
		<div class="nav_box">
		<div class="nav">
			<h1><a href="<%=path %>/frontPage/body.jsp">首页</a> &gt;</h1>
			<h1>购物车</h1>
			<div class="clearfix"></div>
		</div>
	</div>
		
	<div class="shoppingcart_box">
		<div>
			<input type="checkbox">
			<h3>全部</h3>
			<h1>商品</h1>
			<div class="assist_box">	
				<h2>价格</h2>
				<h2>数量</h2>
				<h2>小结</h2>
				<h2>操作</h2>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
<!--商品-->
	<div class="sc_commodity">
		<div class="boundary"></div>
		<input class="check_box" type="checkbox">
		<img src="<%=path %>/img/cart/commodity.png">
		<h1>新货【百草味】夏威夷果200g*3袋 坚果炒货零食干果 奶油味</h1>
		<div class="assist_box">
			<h2>￥39.9</h2>
			<div class="quantity">
				<img src="<%=path %>/img/detail/minus.png">
				<input onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')">
				<img src="<%=path %>/img/detail/plus.png">
				<div class="clearfix"></div>
			</div>
			<h2>￥39.9</h2>
			<h2>删除</h2>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="sc_commodity">
		<div class="boundary"></div>
		<input class="check_box" type="checkbox">
		<img src="<%=path %>/img/cart/commodity.png">
		<h1>新货【百草味】夏威夷果200g*3袋 坚果炒货零食干果 奶油味</h1>
		<div class="assist_box">
			<h2>￥39.9</h2>
			<div class="quantity">
				<img src="<%=path %>/img/detail/minus.png">
				<input onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')">
				<img src="<%=path %>/img/detail/plus.png">
				<div class="clearfix"></div>
			</div>
			<h2>￥39.9</h2>
			<h2>删除</h2>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="sc_commodity">
		<div class="boundary"></div>
		<input class="check_box" type="checkbox">
		<img src="<%=path %>/img/cart/commodity.png">
		<h1>新货【百草味】夏威夷果200g*3袋 坚果炒货零食干果 奶油味</h1>
		<div class="assist_box">
			<h2>￥39.9</h2>
			<div class="quantity">
				<img src="<%=path %>/img/detail/minus.png">
				<input onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')">
				<img src="<%=path %>/img/detail/plus.png">
				<div class="clearfix"></div>
			</div>
			<h2>￥39.9</h2>
			<h2>删除</h2>
		</div>
		<div class="clearfix"></div>
	</div>
	
<!--结算-->
	<div class="check_out_box">
		<div class="assist_box">
			<h1>共计￥39.9</h1>		
			<input type="button" value="结算">
		</div>
		<div class="clearfix"></div>
	</div>
	
<!--全部分类-->
<script>
	$(".classification_box").css("height",40)
	
	$(".classification").mouseenter(
		function(){
			$(".classification_box").css("height",490)	
		}
	)
	$(".classification_box").mouseleave(
		function(){
			$(".classification_box").css("height",40)
		}
	)
</script>
</body>
</html>
