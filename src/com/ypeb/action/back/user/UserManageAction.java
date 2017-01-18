package com.ypeb.action.back.user;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.ypeb.model.user.user.User;
import com.ypeb.model.user.user.UserDAO;

public class UserManageAction extends ActionSupport {
	private User user;
	private List<User> userList=new ArrayList<User>();
	private String destUrl;
	private String telephone;
	
	// JUI JSON返回
		private String statusCode;
		private String message;
		private String navTabId;
		private String callbackType;
		private String forwardUrl;
	
	public String queryUser(){
		/**
		 * @author jilin
		 * @date : 2017年1月18日 上午3:27:28
		 * @descripe:根据用户电话查询
		 */
		System.out.println("********************");
		userList=new UserDAO().findByTelephone(telephone);
		
		if(userList.size()>0){
		telephone=userList.get(0).getTelephone();
		}
		destUrl="backPage/user/list.jsp";
		return "diyUrl";
	}

	
	
	public List<User> getUserList() {
		return userList;
	}



	public void setUserList(List<User> userList) {
		this.userList = userList;
	}



	public String getTelephone() {
		return telephone;
	}



	public void setTelephone(String telephone) {
		this.telephone = telephone;
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



	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getDestUrl() {
		return destUrl;
	}

	public void setDestUrl(String destUrl) {
		this.destUrl = destUrl;
	}
	
}
