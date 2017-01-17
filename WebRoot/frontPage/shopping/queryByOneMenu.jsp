<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<link rel="stylesheet" type="text/css" href="frontCss/shopping/query.css">
  </head>
  
  <body>
    <!--广告-->
<div class="query_all">
	<div class="path">
        <a href="<%=path %>/frontPage/body.jsp" target="index"><span>首页&gt;</span></a>
        <span>食品</span>
        <div class="clearfix"></div>
        <div class="path_line"></div>
    </div>

<!--筛选-->
    <div class="filter">
    	<span class="title">分类筛选:</span>
         <a href="<%=path %>/frontPage/shopping/queryByTwoMenu.jsp" target="index"><span class="name">酒类</span></a>
         <a href="<%=path %>/frontPage/shopping/queryByTwoMenu.jsp" target="index"><span class="name">零食</span></a>
         <a href="<%=path %>/frontPage/shopping/queryByTwoMenu.jsp" target="index"><span class="name">饮品</span></a>
        <div class="filter_line"></div>
    </div>
    
    <div class="relative_a_detail">
        <img src="img/xiajiao.png">
        <img src="img/xiajiao.png">
    </div>

<!-- 搜索结果 -->
<!--floor-->
<div class="floor">
	<div class="foot">
		<div class="img_box">
			<a href="<%=path %>/frontPage/shopping/detail.jsp" target="index">
				<img class="foot_img" src="img/index/foot_5.png">
			</a>
		</div>
		<h1 class="name">三只松鼠 小贱牛肉粒110g</h1>
		<h1 class="price">19.8</h1>
		<img class="foot_shopping_cart" src="img/index/foot_shopping_cart.png">
	</div>
	<div class="foot">
		<div class="img_box">
			<a href="<%=path %>/frontPage/shopping/detail.jsp" target="index">
				<img class="foot_img" src="img/index/foot_6.png">
			</a>
		</div>
		<h1 class="name">葡记 麦片巧克力500g*5袋</h1>
		<h1 class="price">￥29.9</h1>
		<img class="foot_shopping_cart" src="img/index/foot_shopping_cart.png">
	</div>
	<div class="clearfix"></div>
</div>
</div>
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
  </body>
</html>
