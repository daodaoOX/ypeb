
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  	<div class="header">
	<div class="header_top">
		<h1 class="welcome">欢迎进入沂品电子商务积分购物商城!</h1>
		<h1><a class="sign_up" href="frontPage/user/login/userLogin.jsp">请登录</a></h1>
		<h1><a class="sign_in" href="frontPage/user/login/userLogin.jsp">免费注册</a></h1>
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
			<a href="frontPage/shopping/shoppingCar.jsp" target="index" ><h1 class="shopping_cart_text">购物车(3)</h1></a>
			<div class="classfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="header_bottom_bg">
		<div class="header_bottom">
          <div class="pros">
        	<h2 class="classification">全部商品分类</h2>
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
			<h1><a class="home" href="frontPage/body.jsp" target="index">首页</a></h1>
			<h1><a class="deal" href="frontPage/trade/tradeCenter.jsp" target="index">交易中心</a></h1>
			<div class="clearfix"></div>
		</div>
	</div>
</div>

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
  <script>
  		$(".classification_box").hide();
		$(".classification").mouseover(function (){  
            $(".classification_box").show();  
        }).mouseout(function (){  
            $(".classification_box").hide();  
        }); 
        $(".classification_box").mouseover(function (){  
            $(".classification_box").show();  
        }).mouseout(function (){  
            $(".classification_box").hide();  
        }); 
	</script>
		<!-- 解决iframe跳转页面时位置如何返回顶部问题 -->
	<script type="text/javascript">
		function parentGoTop(){
		parent.scrollTo(0,0);
		}
		function addClick(){
		var aList=document.getElementsByTagName("a");
		for(var i=0;i<aList.length;i++){
		    aList[i].onclick=function(){parentGoTop();}
		    }
		}
		window.onload=function(){addClick();}
	</script>
</html>
