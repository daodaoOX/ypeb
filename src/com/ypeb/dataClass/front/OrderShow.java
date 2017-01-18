package com.ypeb.dataClass.front;

import java.util.List;

import com.ypeb.model.shopping.goodsOrder.Order;

public class OrderShow {
	private Order order;
	String imageUrl;
	String goodsName;
	
	
	public OrderShow() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Order getOrder() {
		return order;
	}


	public void setOrder(Order order) {
		this.order = order;
	}


	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	
	

}
