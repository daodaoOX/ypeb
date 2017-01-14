<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="<%=path %>/frontCss/index.css">
		<link rel="stylesheet" type="text/css" href="<%=path %>/frontCss/header.css">
		<link rel="stylesheet" type="text/css" href="<%=path %>/frontCss/bottom.css">
		<script type="text/javascript" src="<%=path %>/bootstrap/js/jquery-2.1.4.min.js"></script>
	  </head>
  <body >
    	<div class="" >
		<div class="header_bottom">
          <div class="pros">
			<ul class="classification_box prosul" id="proinfo" style="margin-top:0px;">
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
                        <a href="#"><img src="<%=path %>/img/common/header/floor_2_ad.png" ></a>
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
                        <a href="#"><img src="<%=path %>/img/common/header/floor_5_ad.png" /></a>
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
                        <a href="#"><img src="<%=path %>/img/common/header/floor_3_ad.png" /></a>
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
                        <a href="#"><img src="<%=path %>/img/common/header/floor_2_ad.png" ></a>
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
                        <a href="#"><img src="<%=path %>/img/common/header/floor_3_ad.png" /></a>
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
                        <a href="#"><img src="<%=path %>/img/common/header/floor_3_ad.png" /></a>
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
                        <a href="#"><img src="<%=path %>/img/common/header/floor_3_ad.png" /></a>
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
                        <a href="#"><img src="<%=path %>/img/common/header/floor_2_ad.png" ></a>
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
                        <a href="#"><img src="<%=path %>/img/common/header/floor_3_ad.png" /></a>
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
                        <a href="#"><img src="<%=path %>/img/common/header/floor_3_ad.png" /></a>
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
                        <a href="#"><img src="<%=path %>/img/common/header/floor_2_ad.png" ></a>
                    </div>
                </li>
			</ul>
			</div>
		
			<div class="clearfix"></div>
		</div>
	</div>
  	<div class="banner_box">
		<div class="banner">
			<img class="banner1" src="<%=path %>/img/common/header/banner1.png">
			<img class="banner2" src="<%=path %>/img/common/header/banner2.png">
			<img class="banner3" src="<%=path %>/img/common/header/banner3.png">
			<img class="banner4" src="<%=path %>/img/common/header/banner4.png">
			<div class="clearfix"></div>
		</div>
		<span class="arrow_left"><img src="<%=path %>/img/common/header/left.png"></span>
		<span class="arrow_right"><img src="<%=path %>/img/common/header/right.png"></span>
		<div class="ctrl_span">
			<span class="current"></span>
			<span></span>
			<span></span>
			<span></span>
		</div>
	</div>

	<div class="AD_box">
	<img class="AD_1" src="<%=path %>/img/index/ad1.png">
	<img src="<%=path %>/img/index/ad2.png">
	<div class="notice">
		<div>
			<h1 class="headline">商城公告</h1>
			<h1 class="more"><a href="#">更多></a></h1>
			<div class="clearfix"></div>
		</div>
		<h3><a href="#">东北气度因雨雪天气延迟配送！</a></h3>
		<h3><a href="#">东北气度因雨雪天气延迟配送！</a></h3>
		<h3><a href="#">东北气度因雨雪天气延迟配送！</a></h3>
		<h3><a href="#">东北气度因雨雪天气延迟配送！</a></h3>
		<h3><a href="#">东北气度因雨雪天气延迟配送！</a></h3>
		<h3><a href="#">东北气度因雨雪天气延迟配送！</a></h3>
	</div>
	<div class="clearfix"></div>
</div>

<!--floor-->
<div class="floor">
	<div>
		<img class="floor_number" src="<%=path %>/img/index/1F.png">
		<h1 class="floor_name">食品副食</h1>
		<div class="clearfix"></div>
	</div>
	<div class="boundary"></div>
	<img class="floor_ad" src="<%=path %>/img/index/floor_1_ad.png">
	<div class="foot">
		<div class="img_box"> <a href="<%=path %>/frontPage/shopping/detail.jsp" target="index"><img class="foot_img" src="<%=path %>/img/index/foot_1.png"></a></div>
		<h1 class="name">新疆薄皮核桃</h1>
		<h1 class="price">￥21.9</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/foot_2.png"></div>
		<h1 class="name">山核桃味瓜子500g*4袋</h1>
		<h1 class="price">￥42.9</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/foot_3.png"></div>
		<h1 class="name">唇动巧克力蛋糕点心500g*2</h1>
		<h1 class="price">￥39</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/foot_4.png"></div>
		<h1 class="name">安徽特产黄山烧饼40个</h1>
		<h1 class="price">￥19.9</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/foot_5.png"></div>
		<h1 class="name">三只松鼠 小贱牛肉粒110g</h1>
		<h1 class="price">19.8</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/foot_6.png"></div>
		<h1 class="name">葡记 麦片巧克力500g*5袋</h1>
		<h1 class="price">￥29.9</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/foot_7.png"></div>
		<h1 class="name">牛肉干内蒙古正宗手撕</h1>
		<h1 class="price">￥59.8</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/foot_8.png"></div>
		<h1 class="name">达利园瑞士卷香蕉味蛋糕3斤</h1>
		<h1 class="price">￥29.9</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="clearfix"></div>
</div>

<div class="floor">
	<div>
		<img class="floor_number" src="<%=path %>/img/index/2F.png">
		<h1 class="floor_name">数码 /家电</h1>
		<div class="clearfix"></div>
	</div>
	<div class="boundary"></div>
	<img class="floor_ad" src="<%=path %>/img/index/floor_2_ad.png">
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/appliance_1.png"></div>
		<h1 class="name">vivo X9星空灰智能手机</h1>
		<h1 class="price">￥2999</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/appliance_2.png"></div>
		<h1 class="name">三星 Gear S3 智能手表</h1>
		<h1 class="price">￥2799</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/appliance_3.png"></div>
		<h1 class="name">iPad Pro 平板电脑 12.9英寸</h1>
		<h1 class="price">￥5888</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/appliance_4.png"></div>
		<h1 class="name">Huawei/华为 P9 plus手机</h1>
		<h1 class="price">￥3988</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/appliance_5.png"></div>
		<h1 class="name">三星 Galaxy S7 Edge</h1>
		<h1 class="price">￥4899</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/appliance_6.png"></div>
		<h1 class="name">Haier 216升三门WIFI智能控制</h1>
		<h1 class="price">￥1699</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/appliance_7.png"></div>
		<h1 class="name">西门子 8KG滚筒洗衣机</h1>
		<h1 class="price">￥3990</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/appliance_8.png"></div>
		<h1 class="name">美的 蒸汽洗大吸力抽油烟机</h1>
		<h1 class="price">￥2999</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="clearfix"></div>
</div>

<div class="floor">
	<div>
		<img class="floor_number" src="<%=path %>/img/index/3F.png">
		<h1 class="floor_name">服装服饰</h1>
		<div class="clearfix"></div>
	</div>
	<div class="boundary"></div>
	<img class="floor_ad" src="<%=path %>/img/index/floor_3_ad.png">
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/clothes_1.png"></div>
		<h1 class="name">波司登 薄款新款立领羽绒服</h1>
		<h1 class="price">￥399</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/clothes_2.png"></div>
		<h1 class="name">EyesonU 秋季新款外套</h1>
		<h1 class="price">￥238</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/clothes_3.png"></div>
		<h1 class="name">然与纯秋冬直筒长裤卷边垮裤</h1>
		<h1 class="price">￥158</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/clothes_4.png"></div>
		<h1 class="name">GXG 修身时尚黑色羽绒服</h1>
		<h1 class="price">￥1019</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/clothes_5.png"></div>
		<h1 class="name">中年休闲翻领PU皮夹克</h1>
		<h1 class="price">￥349</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/clothes_6.png"></div>
		<h1 class="name">lilbetter 潮牌青年束脚裤</h1>
		<h1 class="price">￥187</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/clothes_7.png"></div>
		<h1 class="name">杰克琼斯修身男士格纹衬衣</h1>
		<h1 class="price">￥249</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/clothes_8.png"></div>
		<h1 class="name">唐狮春季束脚裤男束口哈伦裤</h1>
		<h1 class="price">￥119</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="clearfix"></div>
</div>

<div class="floor">
	<div>tt
		<img class="floor_number" src="<%=path %>/img/index/4F.png">
		<h1 class="floor_name">鞋靴 / 箱包</h1>
		<div class="clearfix"></div>
	</div>
	<div class="boundary"></div>
	<img class="floor_ad" src="<%=path %>/img/index/floor_4_ad.png">
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/shoe_1.png"></div>
		<h1 class="name">2016冬季保暖圆头真皮女靴</h1>
		<h1 class="price">￥469</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/shoe_2.png"></div>
		<h1 class="name">防滑棉靴子学生雪地靴</h1>
		<h1 class="price">￥148</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/shoe_3.png"></div>
		<h1 class="name">马丁靴女英伦风 2016秋冬棉鞋</h1>
		<h1 class="price">￥168</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/shoe_4.png"></div>
		<h1 class="name">卡卡妮亚K高跟鞋女春2016新款</h1>
		<h1 class="price">￥179</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/shoe_5.png"></div>
		<h1 class="name">七匹狼 青年真皮短款</h1>
		<h1 class="price">￥99</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/shoe_6.png"></div>
		<h1 class="name">磨砂链条小包包2016新款冬季</h1>
		<h1 class="price">￥348</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/shoe_7.png"></div>
		<h1 class="name">FION/菲安妮包包2016新款</h1>
		<h1 class="price">￥2998</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/shoe_8.png"></div>
		<h1 class="name">House Of Hello时尚经典款</h1>
		<h1 class="price">￥2799</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="clearfix"></div>
</div>

<div class="floor">
	<div>
		<img class="floor_number" src="<%=path %>/img/index/5F.png">
		<h1 class="floor_name">家居家纺</h1>
		<div class="clearfix"></div>
	</div>
	<div class="boundary"></div>
	<img class="floor_ad" src="<%=path %>/img/index/floor_5_ad.png">
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/house_1.png"></div>
		<h1 class="name">康尔馨酒店床上用品四件套</h1>
		<h1 class="price">￥598</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/house_2.png"></div>
		<h1 class="name">水星家纺 全棉加厚磨毛四件套</h1>
		<h1 class="price">￥549</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/house_3.png"></div>
		<h1 class="name">现代美式简约家具布艺沙发</h1>
		<h1 class="price">￥999</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/house_4.png"></div>
		<h1 class="name">欧式复古树脂墙面装饰壁挂</h1>
		<h1 class="price">￥79</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/house_5.png"></div>
		<h1 class="name">美式复古做旧墙面装饰挂画</h1>
		<h1 class="price">￥229</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/house_6.png"></div>
		<h1 class="name">韩式公主白色纱蕾丝纯色窗纱</h1>
		<h1 class="price">￥65</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/house_7.png"></div>
		<h1 class="name">诺伊曼椰棕弹簧床垫椰棕床垫</h1>
		<h1 class="price">￥1498</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box"><img class="foot_img" src="<%=path %>/img/index/house_8.png"></div>
		<h1 class="name">北欧客厅简约现代茶几沙发地毯</h1>
		<h1 class="price">￥599</h1>
		<img class="foot_shopping_cart" src="<%=path %>/img/common/foot_shopping_cart.png">
	</div>
	<div class="clearfix"></div>
</div>
<!-- 列表二级菜单显示 -->
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
<!-- 轮播图显示 -->
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

</body>
</html>
