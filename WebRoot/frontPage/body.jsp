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
<link rel="stylesheet" type="text/css"
	href="<%=path%>/frontCss/index.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/frontCss/header.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/frontCss/bottom.css">
<script type="text/javascript"
	src="<%=path%>/bootstrap/js/jquery-2.1.4.min.js"></script>
</head>
<body
	onload="window.parent.document.getElementById('index').height=document.body.scrollHeight;">
	<div class="">
		<div class="header_bottom">
			<div class="pros">
				<ul class="classification_box prosul" id="proinfo"
					style="margin-top:0px;">
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

			<div class="clearfix"></div>
		</div>
	</div>
	<div class="banner_box">
		<div class="banner">
			<c:forEach items="${rollList }" var="roll">
				<img class="banner1" src="<%=path%>upload/image/roll/banner1.png">
			</c:forEach>
			<div class="clearfix"></div>
		</div>
		<span class="arrow_left"><img
			src="<%=path%>/img/common/header/left.png"></span> <span
			class="arrow_right"><img
			src="<%=path%>/img/common/header/right.png"></span>
		<div class="ctrl_span">
			<span class="current"></span> <span></span> <span></span> <span></span>
		</div>
	</div>

	<div class="AD_box">
		<img class="AD_1" src="<%=path%>upload/image/roll/ad1.png"> <img
			src="<%=path%>/img/index/ad2.png">
		<div class="notice">
			<div>
				<h1 class="headline">商城公告</h1>
				<h1 class="more">
					<a href="#">更多></a>
				</h1>
				<div class="clearfix"></div>
			</div>
			<c:forEach items="${announList }" var="announcement">
				<h3>
					<a href="?id=${announcement.id }">${announcement.title }</a>
				</h3>
			</c:forEach>
			<h3>
				<a href="#">东北气度因雨雪天气延迟配送！</a>
			</h3>

		</div>
		<div class="clearfix"></div>
	</div>

	<!--floor-->
	<div class="floor">
		<div>
			<img class="floor_number" src="<%=path%>/img/index/1F.png">
			<h1 class="floor_name">食品副食</h1>
			<div class="clearfix"></div>
		</div>
		<div class="boundary"></div>
		<img class="floor_ad" src="<%=path%>/img/index/floor_1_ad.png">
		<div class="foot">
			<div class="img_box">
				<img class="foot_img" src="<%=path%>/img/index/foot_1.png">
			</div>
			<h1 class="name">新疆薄皮核桃</h1>
			<h1 class="price">￥21.9</h1>
			<img class="foot_shopping_cart"
				src="<%=path%>/img/common/foot_shopping_cart.png">
		</div>
		<div class="foot">
			<div class="img_box">
				<img class="foot_img" src="<%=path%>/img/index/foot_2.png">
			</div>
			<h1 class="name">山核桃味瓜子500g*4袋</h1>
			<h1 class="price">￥42.9</h1>
			<img class="foot_shopping_cart"
				src="<%=path%>/img/common/foot_shopping_cart.png">
		</div>
		<div class="foot">
			<div class="img_box">
				<img class="foot_img" src="<%=path%>/img/index/foot_3.png">
			</div>
			<h1 class="name">唇动巧克力蛋糕点心500g*2</h1>
			<h1 class="price">￥39</h1>
			<img class="foot_shopping_cart"
				src="<%=path%>/img/common/foot_shopping_cart.png">
		</div>
		<div class="foot">
			<div class="img_box">
				<img class="foot_img" src="<%=path%>/img/index/foot_4.png">
			</div>
			<h1 class="name">安徽特产黄山烧饼40个</h1>
			<h1 class="price">￥19.9</h1>
			<img class="foot_shopping_cart"
				src="<%=path%>/img/common/foot_shopping_cart.png">
		</div>
		<div class="foot">
			<div class="img_box">
				<img class="foot_img" src="<%=path%>/img/index/foot_5.png">
			</div>
			<h1 class="name">三只松鼠 小贱牛肉粒110g</h1>
			<h1 class="price">19.8</h1>
			<img class="foot_shopping_cart"
				src="<%=path%>/img/common/foot_shopping_cart.png">
		</div>
		<div class="foot">
			<div class="img_box">
				<img class="foot_img" src="<%=path%>/img/index/foot_6.png">
			</div>
			<h1 class="name">葡记 麦片巧克力500g*5袋</h1>
			<h1 class="price">￥29.9</h1>
			<img class="foot_shopping_cart"
				src="<%=path%>/img/common/foot_shopping_cart.png">
		</div>
		<div class="foot">
			<div class="img_box">
				<img class="foot_img" src="<%=path%>/img/index/foot_7.png">
			</div>
			<h1 class="name">牛肉干内蒙古正宗手撕</h1>
			<h1 class="price">￥59.8</h1>
			<img class="foot_shopping_cart"
				src="<%=path%>/img/common/foot_shopping_cart.png">
		</div>
		<div class="foot">
			<div class="img_box">
				<img class="foot_img" src="<%=path%>/img/index/foot_8.png">
			</div>
			<h1 class="name">达利园瑞士卷香蕉味蛋糕3斤</h1>
			<h1 class="price">￥29.9</h1>
			<img class="foot_shopping_cart"
				src="<%=path%>/img/common/foot_shopping_cart.png">
		</div>
		<div class="clearfix"></div>
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
		$(".banner img").hide()
		$(".banner img").eq(0).show(100)
		var n = 0
		function toFade() {
			if (n < 3) {
				n = n + 1
			} else {
				n = 0
			}
			$(".banner img").fadeOut(700)
			$(".banner img").eq(n).fadeIn(700)

			$(".ctrl_span span").removeClass("current")
			$(".ctrl_span span").eq(n).addClass("current")
		}
		var t1 = setInterval(toFade, 3000)

		$(".arrow_left").click(function() {
			if (n > 0) {
				n = n - 1
			} else {
				n = 3
			}
			$(".banner img").fadeOut(700)
			$(".banner img").eq(n).fadeIn(700)
			$(".ctrl_span span").removeClass("current")
			$(".ctrl_span span").eq(n).addClass("current")
		})
		$(".arrow_right").click(function() {
			if (n < 3) {
				n = n + 1
			} else {
				n = 0
			}
			$(".banner img").fadeOut(700)
			$(".banner img").eq(n).fadeIn(700)
			$(".ctrl_span span").removeClass("current")
			$(".ctrl_span span").eq(n).addClass("current")
		})
		$(".ctrl_span span").click(function() {
			n = $(this).index()
			$(".banner img").fadeOut(700)
			$(".banner img").eq(n).fadeIn(700)
			$(".ctrl_span span").removeClass("current")
			$(".ctrl_span span").eq(n).addClass("current")
		})

		$(".banner_box").mouseenter(function() {
			clearInterval(t1)
		}).mouseleave(function() {
			t1 = setInterval(toFade, 3000)
		})
	</script>
</body>
</html>
