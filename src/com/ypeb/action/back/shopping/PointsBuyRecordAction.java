package com.ypeb.action.back.shopping;


import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import com.ypeb.model.points.points.Points;
import com.ypeb.model.points.points.PointsDAO;




public class PointsBuyRecordAction extends ActionSupport {
	private Points points;

	private String destUrl;
	private List<Points> pointsList=new ArrayList<Points>();
	private String totalNum;
	private String releaseTime;
	// JUI JSON返回
	private String statusCode;
	private String message;
	private String navTabId;
	private String callbackType;
	private String forwardUrl;

	private String uid;
	private String goodsID;
	private String id;

	public String list() {
		/**
		 * @author jilin
		 * @date : 2017年1月13日 上午11:40:28
		 * @descripe:查询所有发行记录
		 */

		pointsList = new PointsDAO().findAll();
		destUrl = "backPage/points/pointsBuyRecord/list.jsp";
		return "diyUrl";
	}
	
	public String listBuyRecord(){
		
		destUrl="backPage/points/pointsBuyRecord/list.jsp";
		return "diyUrl";
	}

	public Points getPoints() {
		return points;
	}

	public void setPoints(Points points) {
		this.points = points;
	}

	public String getDestUrl() {
		return destUrl;
	}

	public void setDestUrl(String destUrl) {
		this.destUrl = destUrl;
	}

	public List<Points> getPointsList() {
		return pointsList;
	}

	public void setPointsList(List<Points> pointsList) {
		this.pointsList = pointsList;
	}

	public String getTotalNum() {
		return totalNum;
	}

	public void setTotalNum(String totalNum) {
		this.totalNum = totalNum;
	}

	public String getReleaseTime() {
		return releaseTime;
	}

	public void setReleaseTime(String releaseTime) {
		this.releaseTime = releaseTime;
	}

	public String getStatusCode() {
		return statusCode;
	}

	public void setStatusCode(String statusCode) {
		this.statusCode = statusCode;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getNavTabId() {
		return navTabId;
	}

	public void setNavTabId(String navTabId) {
		this.navTabId = navTabId;
	}

	public String getCallbackType() {
		return callbackType;
	}

	public void setCallbackType(String callbackType) {
		this.callbackType = callbackType;
	}

	public String getForwardUrl() {
		return forwardUrl;
	}

	public void setForwardUrl(String forwardUrl) {
		this.forwardUrl = forwardUrl;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getGoodsID() {
		return goodsID;
	}

	public void setGoodsID(String goodsID) {
		this.goodsID = goodsID;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	
	
	

	

	
	

	

}
