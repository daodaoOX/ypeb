package com.ypeb.action.front.user;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ypeb.dataClass.front.OrderShow;
import com.ypeb.model.hibernate.HibernateSessionFactory;
import com.ypeb.model.shopping.goods.Goods;
import com.ypeb.model.shopping.goods.GoodsDAO;
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
	private String imageUrl;
	private List<OrderShow> orderShowList=new ArrayList<OrderShow>();
	private String orderToSend;
	private String orderSending;
	private String orderSended;
	private Address address;
	private int addressId;

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

	public String myOrder() {

		String userID = (String) ActionContext.getContext().getSession()
				.get("userID");
		Integer uid = new Integer(userID);
		Order order=new Order();
		short state=1;
		order.setState(state);
		order.setUserId(uid.intValue());
		OrderDAO dao=new OrderDAO();
		orderToSend=orderToSend.valueOf(dao.findByExample(order).size());
		state=2;
		order.setState(state);
		orderSending=orderSending.valueOf(dao.findByExample(order).size());
		state=3;
		order.setState(state);
		orderSended=orderSended.valueOf(dao.findByExample(order).size());

		orderList = new OrderDAO().findByUserId(uid.intValue());
		for(Order list:orderList){
			OrderShow temp=new OrderShow();
			temp.setOrder(list);
			
			Goods goods=new Goods();
			goods=null;
			goods=new GoodsDAO().findById(list.getGoodsId());
		
			temp.setImageUrl(goods.getImageUrl1());
			temp.setGoodsName(goods.getName());
			orderShowList.add(temp);
		}
		destUrl = "frontPage/user/personalCenter/order.jsp";
		return "diyUrl";
	}
	
	public String addAddress() {

		String userID = (String) ActionContext.getContext().getSession()
				.get("userID");
		Integer uid = new Integer(userID);
		user = new UserDAO().findById(uid.intValue());
		address.setUser(user);
		new AddressDAO().save(address);
		destUrl = "frontUser_PersonalCenter_myAddress";
		return "nextAction";
	}
	
	public String deleteAddress() {
		AddressDAO dao=new AddressDAO();
		address=dao.findById(addressId);
		Transaction tx=HibernateSessionFactory.getSession().beginTransaction();
		address.setIsDelete(true);
		dao.merge(address);
		
		tx.commit();
		destUrl = "frontUser_PersonalCenter_myAddress";
		return "nextAction";
	}
	
	public String myAddress() {

		String userID = (String) ActionContext.getContext().getSession()
				.get("userID");
		Integer uid = new Integer(userID);
		user = new UserDAO().findById(uid.intValue());
		
		addressList = new AddressDAO().findByUser(user,false);
		destUrl = "frontPage/user/personalCenter/address.jsp";
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
		destUrl = "frontPage/user/personalCenter/message.jsp";
		return "diyUrl";
	}

	public String myRegister() {
		/**
		 * @author jilin
		 * @date : 2017年1月17日 下午1:04:05
		 * @descripe:会员推荐注册
		 */
		String userID = (String) ActionContext.getContext().getSession()
				.get("userID");
		Integer uid = new Integer(userID);
		user = new UserDAO().findById(uid.intValue());
		
		destUrl = "frontPage/user/personalCenter/myRegister.jsp";
		return "diyUrl";
	}

	public String myRecommend() {
		/**
		 * @author jilin
		 * @date : 2017年1月17日 下午1:04:32
		 * @descripe:我的推荐注册成功记录
		 */
		String userID = (String) ActionContext.getContext().getSession()
				.get("userID");
		Integer uid = new Integer(userID);
		user = new UserDAO().findById(uid.intValue());
		userList = new UserDAO().findByUser(user);
		destUrl = "frontPage/user/personalCenter/recommend.jsp";
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

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public List<OrderShow> getOrderShowList() {
		return orderShowList;
	}

	public void setOrderShowList(List<OrderShow> orderShowList) {
		this.orderShowList = orderShowList;
	}

	public String getOrderToSend() {
		return orderToSend;
	}

	public void setOrderToSend(String orderToSend) {
		this.orderToSend = orderToSend;
	}

	public String getOrderSending() {
		return orderSending;
	}

	public void setOrderSending(String orderSending) {
		this.orderSending = orderSending;
	}

	public String getOrderSended() {
		return orderSended;
	}

	public void setOrderSended(String orderSended) {
		this.orderSended = orderSended;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public int getAddressId() {
		return addressId;
	}

	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}

	

}
