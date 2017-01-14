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
	<!--
		<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="frontCss/header_and_footer.css">
	<link rel="stylesheet" type="text/css" href="frontCss/shopping/detail.css">
	<script src="bootstrap/js/jquery-2.1.4.min.js"></script>
  </head>
  
  <body onload="window.parent.document.getElementById('index').height=document.body.scrollHeight;">
  
  <div class="s_classification">
	<div class="boundary">
		<h1>全部&gt;</h1>
		<h1>食品副食&gt;</h1>
		<h1>新货【百草味】夏威夷果200g*3袋 坚果炒货零食干果 奶油味</h1>
		<div class="clearfix"></div>
	</div>
	<div class="clearfix"></div>
</div>
    <!--商品信息-->
<div class="commodity">
	<div class="commodity_img">
		<div class="commodity_s_img" id="box">
			<span id="img1"><img src="img/detail/commodity_s_1.png"></span>
			<span id="img2"><img src="img/detail/commodity_s_2.png"></span>
			<span id="img3"><img src="img/detail/commodity_s_3.png"></span>
			<span id="img4"><img src="img/detail/commodity_s_4.png"></span>
			<span id="img5"><img src="img/detail/commodity_s_5.png"></span>
		</div>
	</div>
	<div class="commodity_information">
		<h1 class="commodity_name">新货【百草味】夏威夷果200g*3袋 坚果炒货零食干果 奶油味</h1>
		<h1 class="commodity_number">商品货号：123456</h1>
		<div class="purchase_box">
			<div class="name">
				<h1 class="vip_price">会员价：</h1>
				<h1>价格：</h1>
				<h1>赠送积分：</h1>
				<h1>购买数量：</h1>
			</div>
			<div class="number">
				<h1 class="vip_price_number">￥38.9</h1>
				<h1 class="price">￥49</h1>
				<h1 class="integral">50</h1>
				<div class="quantity">
					<img src="img/detail/minus.png" class="minus">
                    <input class="am-num-text" type="text" value="1" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')">
					<img src="img/detail/plus.png" class="plus">
					<div class="clearfix"></div>
				</div>
			</div>
			<a href="frontPage/shopping/pay.jsp" target="index">
				<div class="divbuy">
					<span type="submit" class="spanbuy">立即购买</span>
				</div>
			</a>
			<div class="clearfix"></div>
			<a href="frontPage/shopping/shoppingCar.jsp" target="index">
				<div class="divcart">
					<span type="submit" class="spancart">加入购物车</span>
				</div>
			</a>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
     
	<div class="service">
		<h1>联系我们</h1>
		<h2>客服电话：0539-8888888</h2>
		<h2>客服QQ：123456789</h2>
		<h2>客服邮箱：123456789@qq.com</h2>
		<div class="guarantee">
			<img src="img/detail/guarantee_1.png">
			<img src="img/detail/guarantee_2.png">
			<img src="img/detail/guarantee_3.png">
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="clearfix"></div>
</div>

<!--相关分类  商品详情-->
<div class="relative_a_detail">
	<div class="foot_box">
		<div class="foot">
			<div class="img_box"><img class="foot_img" src="img/index/foot_1.png"></div>
			<h1 class="name">新疆薄皮核桃</h1>
			<h1 class="foot_price">￥21.9</h1>
			<div class="clearfix"></div>
		</div>
		<div class="foot">
			<div class="img_box"><img class="foot_img" src="img/index/foot_1.png"></div>
			<h1 class="name">新疆薄皮核桃</h1>
			<h1 class="foot_price">￥21.9</h1>
			<div class="clearfix"></div>
		</div>
		<div class="foot">
			<div class="img_box"><img class="foot_img" src="img/index/foot_1.png"></div>
			<h1 class="name">新疆薄皮核桃</h1>
			<h1 class="foot_price">￥21.9</h1>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="commodity_detail">
		<div>
			<h1>规格参数</h1>
			<div class="gray_border">
				<ul class="list">
					<li>商品名称：新货【百草味】夏威夷果200g*3袋 坚果炒货零食干果 奶油味</li>
					<li>上架时间：2016.12.03</li>
					<li>净重量：0.6g</li>
				</ul>
				<ul class="list">
					<li>储藏方法：常温储存</li>
					<li>保质期：240天</li>
					<li>口味：奶油味</li>
				</ul>
				<ul class="list">
					<li>品牌：粒上皇</li>
					<li>库存：233</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="image">
			<img src="img/detail/detail.png">
		</div>
	</div>
	<div class="clearfix"></div>
</div>
    <!--商铺主图切换-->
<script>
	window.onload = function(){
		var box = document.getElementById("box");
		function fun(imgs,bg){
			var target = document.getElementById(imgs);
			 target.onmouseover = function(){
				box.style.backgroundImage = bg;
				target.onmouseout = function(){
					box.style.backgroundImage = bg;
				}
			}
		}
		fun ("img1","url(img/detail/commodity_1.png)");
		fun ("img2","url(img/detail/commodity_2.png)");
		fun ("img3","url(img/detail/commodity_3.png)");
		fun ("img4","url(img/detail/commodity_4.png)");
		fun ("img5","url(img/detail/commodity_5.png)");
	}
</script>
 
 <!-- 商品购买数量增加减少 -->   
<script> 
      // 数量减
  $(".minus").click(function() {
	    var t = $(this).parent().find('.am-num-text');
	    t.val(parseInt(t.val()) - 1);
	    if (t.val() <= 1) {
	      t.val(1);
	    }
	    TotalPrice();
  });
  // 数量加
  $(".plus").click(function() {
	    var t = $(this).parent().find('.am-num-text');
	    t.val(parseInt(t.val()) + 1);
	    if (t.val() <= 1) {
	      t.val(1);
	    }
	    TotalPrice();
  });
</script>
  </body>
</html>
