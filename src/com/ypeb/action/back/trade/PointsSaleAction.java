package com.ypeb.action.back.trade;

import com.opensymphony.xwork2.ActionSupport;

public class PointsSaleAction extends ActionSupport {
	private String destUrl;
	private int totalSale;//现在平台挂卖的积分总量
	
	public String saleInfo(){
		
		destUrl="backPage/trade/saleInfo.jsp";
		return "diyUrl";
	}
}
