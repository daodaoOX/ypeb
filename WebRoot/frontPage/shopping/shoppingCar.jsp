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
<body>
    <div class="nav_box">
		<div class="nav">
			<h1><a href="<%=path %>/frontPage/body.jsp" target="index">首页</a> &gt;</h1>
			<h1>购物车</h1>
			<div class="clearfix"></div>
		</div>
	</div>
	
    <div class="shoppingcart_box">
        <div>
      		 <input type="checkbox" class="goods-check" id="AllCheck" >
            <h3>全部</h3>
            <h1>商品</h1>
            <div class="assist_box">	
                <h2>价格</h2>
                <h2>数量</h2>
                <h2>操作</h2>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
	</div>
    
<form action="" method="get">
  <div class="one-shop">
      <!--商品--> 
	<div class="sc_commodity one-goods">
      <div class="goods-msg">
		<div class="boundary"></div>
		<input class="check_box goods-check GoodsCheck"  type="checkbox"  name="check_goods" value="1" data-age="11">
		<img src="<%=path %>/img/shopping_car/commodity.png"/>
		<h1>新货【百草味】夏威夷果200g*3袋 坚果炒货零食干果 奶油味</h1>
		<div class="assist_box">
			<h2 class="del">删除</h2>
			<h2></h2>
			<div class="quantity">
				<!-- <img src="<%=path %>/img/detail/minus.png" class="minus"> -->
				<input class="am-num-text" name="goodssum" data-age="11" type="text" value="1"
				onkeyup="value=(parseInt((value=value.replace(/[^1-9]/g,''))==''||parseInt((value=value.replace(/\D/g,''))==0)?'1':value,10))" 
				onafterpaste="value=(parseInt((value=value.replace(/[^1-9]/g,''))==''||parseInt((value=value.replace(/\D/g,''))==0)?'1':value,10))">
				<!-- <img src="<%=path %>/img/detail/plus.png" class="plus"> -->
				<div class="clearfix"></div>
			</div>
			<div class="addtype">
				<h2>￥<span class="shop-total-amount GoodsPrice">20.00</span></h2>
			</div>
		</div>
		<div class="clearfix"></div>
      </div>
	</div>
    
    
    <div class="sc_commodity one-goods">
      <div class="goods-msg">
		<div class="boundary"></div>
		<input class="check_box goods-check GoodsCheck" type="checkbox" name="check_goods" value="2" data-age="12">
		<img src="<%=path %>/img/shopping_car/commodity.png"/>
		<h1>新货【百草味】夏威夷果200g*3袋 坚果炒货零食干果 奶油味</h1>
		<div class="assist_box">
			<h2 class="del">删除</h2>
			<h2></h2>
			<div class="quantity">
				<!--  <img src="<%=path %>/img/detail/minus.png" class="minus">-->
				<input class="am-num-text" name="goodssum" data-age="12" type="text" value="1"
				onkeyup="value=(parseInt((value=value.replace(/[^1-9]/g,''))==''||parseInt((value=value.replace(/\D/g,''))==0)?'1':value,10))" 
				onafterpaste="value=(parseInt((value=value.replace(/[^1-9]/g,''))==''||parseInt((value=value.replace(/\D/g,''))==0)?'1':value,10))">
				<!-- <img src="<%=path %>/img/detail/plus.png" class="plus">-->
				<div class="clearfix"></div>
			</div>
			<div class="addtype">
				<h2>￥<span class="shop-total-amount GoodsPrice">20.00</span></h2>
			</div>
		</div>
		<div class="clearfix"></div>
      </div>
	</div>
    
    <div class="sc_commodity one-goods">
      <div class="goods-msg">
		<div class="boundary"></div>
		<input class="check_box goods-check GoodsCheck" type="checkbox" name="check_goods" value="3" data-age="13">
		<img src="<%=path %>/img/shopping_car/commodity.png"/>
		<h1>新货【百草味】夏威夷果200g*3袋 坚果炒货零食干果 奶油味</h1>
		<div class="assist_box">
			<h2 class="del">删除</h2>
			<h2></h2>
			<div class="quantity">
				<!-- <img src="<%=path %>/img/detail/minus.png" class="minus"> -->
				<input class="am-num-text" data-age="13" name="goodssum" type="text" value="1" 
				onkeyup="value=(parseInt((value=value.replace(/[^1-9]/g,''))==''||parseInt((value=value.replace(/\D/g,''))==0)?'1':value,10))" 
				onafterpaste="value=(parseInt((value=value.replace(/[^1-9]/g,''))==''||parseInt((value=value.replace(/\D/g,''))==0)?'1':value,10))">
				<!-- <img src="<%=path %>/img/detail/plus.png" class="plus"> -->
				<div class="clearfix"></div>
			</div>
			<div class="addtype">
				<h2>￥<span class="shop-total-amount GoodsPrice">20.00</span></h2>
			</div>
		</div>
		<div class="clearfix"></div>
      </div>
	</div>
    
    <div class="sc_commodity one-goods">
      <div class="goods-msg">
		<div class="boundary"></div>
		<input class="check_box goods-check GoodsCheck" type="checkbox" name="check_goods" value="4" data-age="14">
		<img src="<%=path %>/img/shopping_car/commodity.png"/>
		<h1>新货【百草味】夏威夷果200g*3袋 坚果炒货零食干果 奶油味</h1>
		<div class="assist_box">
			<h2 class="del">删除</h2>
			<h2></h2>
			<div class="quantity">
				<!-- <img src="<%=path %>/img/detail/minus.png" class="minus"> -->
				<input class="am-num-text" data-age="14" name="goodssum" type="text"  value="1" 
				onkeyup="value=(parseInt((value=value.replace(/[^1-9]/g,''))==''||parseInt((value=value.replace(/\D/g,''))==0)?'1':value,10))" 
				onafterpaste="value=(parseInt((value=value.replace(/[^1-9]/g,''))==''||parseInt((value=value.replace(/\D/g,''))==0)?'1':value,10))">
				<!-- <img src="<%=path %>/img/detail/plus.png" class="plus"> -->
				<div class="clearfix"></div>
			</div>
			<div class="addtype">
				<h2>￥<span class="shop-total-amount GoodsPrice">20.00</span></h2>
			</div>
		</div>
		<div class="clearfix"></div>
      </div>
	</div>
    
	<!--结算-->
	<div class="check_out_box">
		<h1>共计￥<span class="shop-total-amount ShopTotal">0</span></h1>
		<div class="assist_box">
					
			<a id="dela" href="<%=path %>/frontPage/shopping/pay.jsp" onclick="parentGoTop();" target="index">
				<div class="divsum" onclick="checksum();">
					<span type="submit" class="spansum" >结算</span>
				</div>
			</a>
		</div>
		<div class="clearfix"></div>
	</div>
  </div>
</form>
<!-- 判断复选框是否选中,选中商品和数量提交后台操作 -->
<script>
	function checksum(){
		//var a = frontPage/shopping/pay.jsp; 
	    var allprice = 0; //总价
	    $(".one-shop").each(function() { //循环每个店铺
	      var oprice = 0; //店铺总价
	      $(this).find(".GoodsCheck").each(function() { //循环店铺里面的商品
	        if ($(this).is(":checked")) { //如果该商品被选中
	          var num = parseInt($(this).parents(".one-goods").find(".am-num-text").val()); //得到商品的数量
	          var price = parseFloat($(this).parents(".one-goods").find(".GoodsPrice").text()); //得到商品的单价
	          var total = price * num; //计算单个商品的总价
	          oprice += total; //计算该店铺的总价
	        }
	        $(this).closest(".one-shop").find(".ShopTotal").text(oprice.toFixed(2)); //显示被选中商品的店铺总价
	      });
	      var oneprice = parseFloat($(this).find(".ShopTotal").text()); //得到每个店铺的总价
	      allprice += oneprice; //计算所有店铺的总价
	    });
	    $("#AllTotal").text(allprice.toFixed(2));
	    //输出全部总价
		//alert(allprice.toFixed(2));
		if (allprice.toFixed(2)!=0){
			$("#dela").attr("href","<%=path %>/frontPage/shopping/pay.jsp");  
		}
		else {
			$('#dela').removeAttr('href');
			alert("请选择要结算的商品!");
		}
	   
	   //获得选中的复选框的value值;
	 	var check_goods = { 'info': [] };
		$("input[name='check_goods']:checked").each(function (i, n) {
			//check_goods['info'].push(n.value);
			checkvalue = n.value;
			//alert(checkvalue);
			//获得选中的复选框的data-age值
			checkdata = $(n).attr('data-age');
			//alert(checkdata);
		//获得数量的value值和data-age值;
		var goodssum = { 'info': []};
		$("input[name='goodssum']").each(function (i, n) {
			goodssum['info'].push(n.value);
			sumvalue = n.value;
			//alert(sumvalue);
			//获得选中的复选框的data-age值
			sumdata = $(n).attr('data-age');
			//alert(sumdata);
		//判断复选框的data-age与数量的data-age属性是否相同
		if(checkdata == sumdata){
				//alert(checkvalue+" "+sumvalue);
				var end = checkvalue+" "+sumvalue;
				check_goods ['info'].push(end);
			}
		});
	});	
	
		$.ajax({
			//type: "get",
		    url: "/action",
		    type: "post",
		   // data: "check_goods":check_goods,
		    success: function (result) {
		        //handle
		    }
		});
	 }
</script> 
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
  // 点击单选商品按钮
  $(".GoodsCheck").click(function() {
    var goods = $(this).closest(".one-shop").find(".GoodsCheck"); //获取本店铺的所有商品
    var goodsC = $(this).closest(".one-shop").find(".GoodsCheck:checked"); //获取本店铺所有被选中的商品
    var Shops = $(this).closest(".one-shop").find(".ShopCheck"); //获取本店铺的全选按钮
    if (goods.length == goodsC.length) { //如果选中的商品等于所有商品
      Shops.prop('checked', true); //店铺全选按钮被选中
      if ($(".ShopCheck").length == $(".ShopCheck:checked").length) { //如果店铺被选中的数量等于所有店铺的数量
        $("#AllCheck").prop('checked', true); //全选按钮被选中
        TotalPrice();
      } else {
        $("#AllCheck").prop('checked', false); //else全选按钮不被选中 
        TotalPrice();
      }
    } else { //如果选中的商品不等于所有商品
      Shops.prop('checked', false); //店铺全选按钮不被选中
      $("#AllCheck").prop('checked', false); //全选按钮也不被选中
      // 计算
      TotalPrice();
      // 计算
    }
  });

  // 点击全选按钮
  $("#AllCheck").click(function() {
    if ($(this).prop("checked") == true) { //如果全选按钮被选中
      $(".goods-check").prop('checked', true); //所有按钮都被选中
      TotalPrice();
    } else {
      $(".goods-check").prop('checked', false); //else所有按钮不全选
      TotalPrice();
    }
    $(".ShopCheck").change(); //执行店铺全选的操作
  });

  function TotalPrice() {
    var allprice = 0; //总价
    $(".one-shop").each(function() { //循环每个店铺
      var oprice = 0; //店铺总价
      $(this).find(".GoodsCheck").each(function() { //循环店铺里面的商品
        if ($(this).is(":checked")) { //如果该商品被选中
          var num = parseInt($(this).parents(".one-goods").find(".am-num-text").val()); //得到商品的数量
          var price = parseFloat($(this).parents(".one-goods").find(".GoodsPrice").text()); //得到商品的单价
          var total = price * num; //计算单个商品的总价
          oprice += total; //计算该店铺的总价
        }
        $(this).closest(".one-shop").find(".ShopTotal").text(oprice.toFixed(2)); //显示被选中商品的店铺总价
      });
      var oneprice = parseFloat($(this).find(".ShopTotal").text()); //得到每个店铺的总价
      allprice += oneprice; //计算所有店铺的总价
    });
    $("#AllTotal").text(allprice.toFixed(2)); //输出全部总价
  };
  
  	//删除商品
	$(".del").click(function() {
		var ret = window.confirm("确认要删除商品吗?");
		//当点击确定时 返回 true 
		if(ret){
			//do something 点确定
		}

	})
  </script>
  	<!-- 解决iframe跳转页面时位置如何返回顶部问题 -->
	<script type="text/javascript">
		function parentGoTop(){
		parent.scrollTo(0,0);
		}
	</script>
</body>
</html>