<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  	<div class="header">
	<div class="header_top">
		<h1 class="welcome">欢迎进入沂品电子商务积分购物商城!</h1>
		<h1><a class="sign_up" href="#">请登录</a></h1>
		<h1><a class="sign_in" href="#">免费注册</a></h1>
		<h1><a class="info" href="#">我的信息</a></h1>
		<div class="clearfix"></div>
	</div>
	<div class="top_middle"></div>
	<div class="header_middle">
		<img class="logo" src="img/common/header/logo.png">
		<input class="search_box">
		<input class="search_button" type="submit" value="搜索">
		<div class="shopping_cart_box">
			<img class="shopping_cart" src="img/common/header/shopping_cart.png">
			<h1 class="shopping_cart_text">购物车（0）</h1>
			<div class="classfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="header_bottom_bg">
		<div class="header_bottom">
          <div class="pros">
        	<h2>全部商品分类</h2>
			<ul class="classification_box prosul" id="proinfo">
				
				<li><a href="#">数码 / 家电</a>
                    <div class="prosmore hide">
                        <span><a href="#">火锅</a></span>
                        <span><a href="#">烧烤</a></span>
                        <span><a href="#">西餐</a></span>
                        <span><a href="#">海鲜</a></span>
                        <span><a href="#">地方菜</a></span><br />
                        <span><a href="#">日韩料理</a></span>
                        <span><a href="#">快餐</a></span>
                        <span><a href="#">蛋糕</a></em></span>
                        <span><a href="#">快餐</a></span>
                        <span><a href="#">蛋糕</a></em></span><br />
                        <span><a href="#">火锅</a></span>
                        <span><a href="#">烧烤</a></span>
                        <span><a href="#">西餐</a></span>
                        <span><a href="#">海鲜</a></span>
                        <span><a href="#">地方菜</a></span><br />
                        <span><a href="#">日韩料理</a></span>
                        <span><a href="#">快餐</a></span>
                        <span><a href="#">蛋糕</a></em></span>
                        <span><a href="#">快餐</a></span>
                        <span><a href="#"></a></em></span><br />
                        <a href="#"><img src="img/common/header/floor_2_ad.png" ></a>
                    </div>
                </li>
				<li><a href="#">家居 / 家纺</a>
                	<div class="prosmore hide">
                        <span><a href="#">被子</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">电视柜</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">被子</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">电视柜</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#"></a></span><br />
                        <a href="#"><img src="img/common/header/floor_5_ad.png" /></a>
                    </div>
                </li>
				<li><a href="#">男装 / 女装 / 童装</a>
                	<div class="prosmore hide">
                        <span><a href="#">被子</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">电视柜</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">被子</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">电视柜</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#"></a></span><br />
                        <a href="#"><img src="img/common/header/floor_3_ad.png" /></a>
                    </div>
                </li>
				<li><a href="#">女鞋 / 男鞋 / 箱包</a>
                	<div class="prosmore hide">
                        <span><a href="#">火锅</a></span>
                        <span><a href="#">烧烤</a></span>
                        <span><a href="#">西餐</a></span>
                        <span><a href="#">海鲜</a></span>
                        <span><a href="#">地方菜</a></span><br />
                        <span><a href="#">日韩料理</a></span>
                        <span><a href="#">快餐</a></span>
                        <span><a href="#">蛋糕</a></em></span>
                        <span><a href="#">快餐</a></span>
                        <span><a href="#">蛋糕</a></em></span><br />
                        <span><a href="#">火锅</a></span>
                        <span><a href="#">烧烤</a></span>
                        <span><a href="#">西餐</a></span>
                        <span><a href="#">海鲜</a></span>
                        <span><a href="#">地方菜</a></span><br />
                        <span><a href="#">日韩料理</a></span>
                        <span><a href="#">快餐</a></span>
                        <span><a href="#">蛋糕</a></em></span>
                        <span><a href="#">快餐</a></span>
                        <span><a href="#"></a></em></span><br />
                        <a href="#"><img src="img/common/header/floor_2_ad.png" ></a>
                    </div>
                </li>
				<li><a href="#">日用洗化 / 清洁用品</a>
                	<div class="prosmore hide">
                        <span><a href="#">被子</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">电视柜</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">被子</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">电视柜</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#"></a></span><br />
                        <a href="#"><img src="img/common/header/floor_3_ad.png" /></a>
                    </div>
                </li>
				<li><a href="#">酒水饮料</a>
                	<div class="prosmore hide">
                        <span><a href="#">被子</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">电视柜</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">被子</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">电视柜</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#"></a></span><br />
                        <a href="#"><img src="img/common/header/floor_3_ad.png" /></a>
                    </div>
                </li>
				<li><a href="#">汽车用品</a>
                	<div class="prosmore hide">
                        <span><a href="#">被子</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">电视柜</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">被子</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">电视柜</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#"></a></span><br />
                        <a href="#"><img src="img/common/header/floor_3_ad.png" /></a>
                    </div>
                </li>
				<li><a href="#">营养保健</a>
                	<div class="prosmore hide">
                        <span><a href="#">火锅</a></span>
                        <span><a href="#">烧烤</a></span>
                        <span><a href="#">西餐</a></span>
                        <span><a href="#">海鲜</a></span>
                        <span><a href="#">地方菜</a></span><br />
                        <span><a href="#">日韩料理</a></span>
                        <span><a href="#">快餐</a></span>
                        <span><a href="#">蛋糕</a></em></span>
                        <span><a href="#">快餐</a></span>
                        <span><a href="#">蛋糕</a></em></span><br />
                        <span><a href="#">火锅</a></span>
                        <span><a href="#">烧烤</a></span>
                        <span><a href="#">西餐</a></span>
                        <span><a href="#">海鲜</a></span>
                        <span><a href="#">地方菜</a></span><br />
                        <span><a href="#">日韩料理</a></span>
                        <span><a href="#">快餐</a></span>
                        <span><a href="#">蛋糕</a></em></span>
                        <span><a href="#">快餐</a></span>
                        <span><a href="#"></a></em></span><br />
                        <a href="#"><img src="img/common/header/floor_2_ad.png" ></a>
                    </div>
                </li>
				<li><a href="#">干果 / 鲜果</a>
                	<div class="prosmore hide">
                        <span><a href="#">被子</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">电视柜</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">被子</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">电视柜</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#"></a></span><br />
                        <a href="#"><img src="img/common/header/floor_3_ad.png" /></a>
                    </div>
                </li>
				<li><a href="#">手机 / 运营商</a>
                	<div class="prosmore hide">
                        <span><a href="#">被子</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">电视柜</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">被子</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#">茶几</a></span><br />
                        <span><a href="#">电视柜</a></span>
                        <span><a href="#">被罩</a></span>
                        <span><a href="#">棉绒枕头</a></span>
                        <span><a href="#">丝绒床单</a></span>
                        <span><a href="#"></a></span><br />
                        <a href="#"><img src="img/common/header/floor_3_ad.png" /></a>
                    </div>
                </li>
				<li><a href="#">眼镜 / 腕表 / 首饰</a>
                	<div class="prosmore hide">
                        <span><a href="#">火锅</a></span>
                        <span><a href="#">烧烤</a></span>
                        <span><a href="#">西餐</a></span>
                        <span><a href="#">海鲜</a></span>
                        <span><a href="#">地方菜</a></span><br />
                        <span><a href="#">日韩料理</a></span>
                        <span><a href="#">快餐</a></span>
                        <span><a href="#">蛋糕</a></em></span>
                        <span><a href="#">快餐</a></span>
                        <span><a href="#">蛋糕</a></em></span><br />
                        <span><a href="#">火锅</a></span>
                        <span><a href="#">烧烤</a></span>
                        <span><a href="#">西餐</a></span>
                        <span><a href="#">海鲜</a></span>
                        <span><a href="#">地方菜</a></span><br />
                        <span><a href="#">日韩料理</a></span>
                        <span><a href="#">快餐</a></span>
                        <span><a href="#">蛋糕</a></em></span>
                        <span><a href="#">快餐</a></span>
                        <span><a href="#"></a></em></span><br />
                        <a href="#"><img src="img/common/header/floor_2_ad.png" ></a>
                    </div>
                </li>
			</ul>
			</div>
			<h1><a class="home" href"#">首页</a></h1>
			<h1><a class="deal" href"#">交易中心</a></h1>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<div class="banner_box">
	<div class="banner">
		<img class="banner1" src="img/common/header/banner1.png">
		<img class="banner2" src="img/common/header/banner2.png">
		<img class="banner3" src="img/common/header/banner3.png">
		<img class="banner4" src="img/common/header/banner4.png">
		<div class="clearfix"></div>
	</div>
	<span class="arrow_left"><img src="img/common/header/left.png"></span>
	<span class="arrow_right"><img src="img/common/header/right.png"></span>
	<div class="ctrl_span">
		<span class="current"></span>
		<span></span>
		<span></span>
		<span></span>
	</div>
</div>

<script>
$(".banner img").hide()
$(".banner img").eq(0).show(100)
var n=0
function toFade(){
	if(n<3){
		n=n+1
	}else{
		n=0
	}
	$(".banner img").fadeOut(700)
	$(".banner img").eq(n).fadeIn(700)
	
	$(".ctrl_span span").removeClass("current")
	$(".ctrl_span span").eq(n).addClass("current")
}
var t1=setInterval(toFade,3000)

$(".arrow_left").click(
	function(){
		if(n>0){
			n=n-1
			}else{
				n=3
				}
		$(".banner img").fadeOut(700)
		$(".banner img").eq(n).fadeIn(700)
		$(".ctrl_span span").removeClass("current")
		$(".ctrl_span span").eq(n).addClass("current")
	}
)
$(".arrow_right").click(
	function(){
		if(n<3){
			n=n+1
			}else{
				n=0
				}
		$(".banner img").fadeOut(700)
		$(".banner img").eq(n).fadeIn(700)
		$(".ctrl_span span").removeClass("current")
		$(".ctrl_span span").eq(n).addClass("current")
	}
)
$(".ctrl_span span").click(
	function(){
		n=$(this).index()
		$(".banner img").fadeOut(700)
		$(".banner img").eq(n).fadeIn(700)
		$(".ctrl_span span").removeClass("current")
		$(".ctrl_span span").eq(n).addClass("current")
	}
)

$(".banner_box").mouseenter(
	function(){
	clearInterval(t1)
	}
)
.mouseleave(
	function(){
		t1=setInterval(toFade,3000)
	}
)
</script>
<script type="text/javascript">
	(function(){
		
		var $subblock = $(".subpage"), $head=$subblock.find('h2'), $ul = $("#proinfo"), $lis = $ul.find("li"), inter=false;
	
		$lis.hover(function(){
			if(!$(this).hasClass('nochild')){
				$(this).addClass("prosahover");
				$(this).find(".prosmore").removeClass('hide');
			}
		},function(){
			if(!$(this).hasClass('nochild')){
				if($(this).hasClass("prosahover")){
					$(this).removeClass("prosahover");
				}
				$(this).find(".prosmore").addClass('hide');
			}
		});
	})();
</script>
  
</html>
