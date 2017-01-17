package com.ypeb.action.front.user;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ypeb.model.shopping.goodsOrder.Order;
import com.ypeb.model.shopping.goodsOrder.OrderDAO;
import com.ypeb.model.user.address.Address;
import com.ypeb.model.user.address.AddressDAO;
import com.ypeb.model.user.award.Award;
import com.ypeb.model.user.award.AwardDAO;
import com.ypeb.model.user.message.Message;
import com.ypeb.model.user.message.MessageDAO;
import com.ypeb.model.user.user.User;
import com.ypeb.model.user.user.UserDAO;

public class PersonalCenterAction extends ActionSupport {

	private String destUrl;
	private User user;
	private List<Order> orderList = new ArrayList<Order>();
	private List<Address> addressList = new ArrayList<Address>();
	private List<User> userList = new ArrayList<User>();
	private List<Award> awardList = new ArrayList<Award>();
	private List<Message> messageList = new ArrayList<Message>();

	public String infoCenter() {

		String userID = (String) ActionContext.getContext().getSession()
				.get("userID");
		Integer uid = new Integer(userID);
		user = new UserDAO().findById(uid.intValue());

		destUrl = "frontPage/user/personalInformation.jsp";
		return "diyUrl";
	}

	public String myInfo() {

		String userID = (String) ActionContext.getContext().getSession()
				.get("userID");
		Integer uid = new Integer(userID);
		user = new UserDAO().findById(uid.intValue());

		destUrl = "frontPage/user/personalCenter/myInfo.jsp";
		return "diyUrl";
	}

	public String myOder() {

		String userID = (String) ActionContext.getContext().getSession()
				.get("userID");
		Integer uid = new Integer(userID);

		orderList = new OrderDAO().findByUserId(uid.intValue());
		destUrl = "frontPage/user/personalCenter/order.jsp";
		return "diyUrl";
	}

	public String myAddress() {

		String userID = (String) ActionContext.getContext().getSession()
				.get("userID");
		Integer uid = new Integer(userID);
		user = new UserDAO().findById(uid.intValue());
		addressList = new AddressDAO().findByUser(user);
		destUrl = "frontPage/user/personalCenter/order.jsp";
		return "diyUrl";
	}
	
	public String myAward() {

		String userID = (String) ActionContext.getContext().getSession()
				.get("userID");
		Integer uid = new Integer(userID);
		
		awardList = new AwardDAO().findByGetAwardId(uid.intValue());
		destUrl = "frontPage/user/personalCenter/order.jsp";
		return "diyUrl";
	}
	
	public String myMessage() {

		String userID = (String) ActionContext.getContext().getSession()
				.get("userID");
		Integer uid = new Integer(userID);
		user = new UserDAO().findById(uid.intValue());
		messageList = new MessageDAO().findByUserId(uid.intValue());
		destUrl = "frontPage/user/personalCenter/order.jsp";
		return "diyUrl";
	}
	public String myRecommend() {

		String userID = (String) ActionContext.getContext().getSession()
				.get("userID");
		Integer uid = new Integer(userID);
		user = new UserDAO().findById(uid.intValue());
		userList = new UserDAO().findByUser(user);
		destUrl = "frontPage/user/personalCenter/order.jsp";
		return "diyUrl";
	}


	public String getDestUrl() {
		return destUrl;
	}

	public void setDestUrl(String destUrl) {
		this.destUrl = destUrl;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Order> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<Order> orderList) {
		this.orderList = orderList;
	}

	public List<Address> getAddressList() {
		return addressList;
	}

	public void setAddressList(List<Address> addressList) {
		this.addressList = addressList;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

	public List<Award> getAwardList() {
		return awardList;
	}

	public void setAwardList(List<Award> awardList) {
		this.awardList = awardList;
	}

	public List<Message> getMessageList() {
		return messageList;
	}

	public void setMessageList(List<Message> messageList) {
		this.messageList = messageList;
	}

}
