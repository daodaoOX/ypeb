<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<div class="header">
	<div class="header_top">
		<h1 class="welcome">欢迎进入沂品电子商务积分购物商城!</h1>
		<h1>
			<a class="sign_up" href="#">请登录</a>
		</h1>
		<h1>
			<a class="sign_in" href="#">免费注册</a>
		</h1>
		<h1>
			<a class="info" href="#">我的信息</a>
		</h1>
		<div class="clearfix"></div>
	</div>
	<div class="top_middle"></div>
	<div class="header_middle">
		<img class="logo" src="img/common/header/logo.png"> <input
			class="search_box"> <input class="search_button"
			type="submit" value="搜索">
		<div class="shopping_cart_box">
			<img class="shopping_cart" src="img/common/header/shopping_cart.png">
			<a href="frontPage/shopping/shoppingCar.jsp" target="index"><h1
					class="shopping_cart_text">购物车(3)</h1></a>
			<div class="classfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="header_bottom_bg">
		<div class="header_bottom">
			<div class="pros">
				<h2 class="classification">全部商品分类</h2>
				<ul class="classification_box prosul" id="proinfo">
					<c:forEach var="first" items="${categoryByLevel }">
						<li><a
							href="frontShopping_Goods_queryFCategory?categoryID=${first.id }">${first.name }</a>
							<div class="prosmore hide">
								<c:forEach var="second" items="${first.secCategoryList  }">
									<span><a href="">${second.name }</a></span>
								</c:forEach>
							</div></li>
					</c:forEach>
			</ul>
			</div>
			<h1>
				<a class="home" href="frontPage/body.jsp" target="index">首页</a>
			</h1>
			<h1>
				<a class="deal" href="frontPage/trade/tradeCenter.jsp"
					target="index">交易中心</a>
			</h1>
			<div class="clearfix"></div>
		</div>
	</div>
</div>

<script type="text/javascript">
	(function() {

		var $subblock = $(".subpage"), $head = $subblock.find('h2'), $ul = $("#proinfo"), $lis = $ul
				.find("li"), inter = false;

		$lis.hover(function() {
			if (!$(this).hasClass('nochild')) {
				$(this).addClass("prosahover");
				$(this).find(".prosmore").removeClass('hide');
			}
		}, function() {
			if (!$(this).hasClass('nochild')) {
				if ($(this).hasClass("prosahover")) {
					$(this).removeClass("prosahover");
				}
				$(this).find(".prosmore").addClass('hide');
			}
		});
	})();
</script>
<script>
	$(".classification_box").hide();
	$(".classification").mouseover(function() {
		$(".classification_box").show();
	}).mouseout(function() {
		$(".classification_box").hide();
	});
	$(".classification_box").mouseover(function() {
		$(".classification_box").show();
	}).mouseout(function() {
		$(".classification_box").hide();
	});
</script>
</html>
