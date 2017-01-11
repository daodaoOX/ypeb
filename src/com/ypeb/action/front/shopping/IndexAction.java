package com.ypeb.action.front.shopping;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.ypeb.model.shopping.goods.Goods;
import com.ypeb.model.shopping.goodsCategory.Goodscategory;

public class IndexAction extends ActionSupport {
	/**
	 * @author jilin
	 * @date : 2017年1月11日 下午2:57:57
	 * @descripe:商城首页使用的action
	 */
	private List<Goodscategory> allCategoryList;
	private List<Goodscategory> floorCategoryList;
	private List<List<Goods>> goodsList;
	
	private String destUrl;
	
	public String indexData(){
		/**
		 * @author jilin
		 * @date : 2017年1月11日 下午3:08:31
		 * @descripe:进入首页使用的方法
		 */
		return "diyUrl";
	}
	
	
	

	public List<Goodscategory> getAllCategoryList() {
		return allCategoryList;
	}

	public void setAllCategoryList(List<Goodscategory> allCategoryList) {
		this.allCategoryList = allCategoryList;
	}

	public List<Goodscategory> getFloorCategoryList() {
		return floorCategoryList;
	}

	public void setFloorCategoryList(List<Goodscategory> floorCategoryList) {
		this.floorCategoryList = floorCategoryList;
	}

	public List<List<Goods>> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<List<Goods>> goodsList) {
		this.goodsList = goodsList;
	}

	public String getDestUrl() {
		return destUrl;
	}

	public void setDestUrl(String destUrl) {
		this.destUrl = destUrl;
	}
	
	

}
