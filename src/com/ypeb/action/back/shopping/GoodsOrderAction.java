package com.ypeb.action.back.shopping;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionSupport;
import com.ypeb.dataClass.front.OrderAddress;
import com.ypeb.model.hibernate.HibernateSessionFactory;
import com.ypeb.model.shopping.goods.Goods;
import com.ypeb.model.shopping.goods.GoodsDAO;
import com.ypeb.model.shopping.goodsOrder.Order;
import com.ypeb.model.shopping.goodsOrder.OrderDAO;
import com.ypeb.model.user.address.Address;
import com.ypeb.model.user.address.AddressDAO;
import com.ypeb.model.user.user.User;
import com.ypeb.model.user.user.UserDAO;

public class GoodsOrderAction extends ActionSupport {
	private Order order;
	private List<Order> orderList = new ArrayList<Order>();
	private List<OrderAddress> orderAddress=new ArrayList<OrderAddress>();
	private String destUrl;
	
	// JUI JSON返回
	private String statusCode;
	private String message;
	private String navTabId;
	private String callbackType;
	private String forwardUrl;

	private String uid;
	private String goodsID;
	private String id;
	
	public String sendGoods(){
		/**
		 * @author jilin
		 * @date : 2017年1月18日 下午8:43:19
		 * @descripe:修改订单状态为已发货
		 */
		return "ajaxdone";
	}
	
	public String list(){
		/**
		 * @author jilin
		 * @date : 2017年1月18日 下午8:43:52
		 * @descripe:查询订单
		 */
		return "diyUrl";
	}
	
	public String listToSend() {
		try {
			short tem=1;
			orderList = new OrderDAO().findByState(tem);
			for(Order list:orderList){
				OrderAddress temp=new OrderAddress();
				temp.setOrder(list);
				Goods goods=new Goods();
				goods=null;
				User user=new User();
				goods=null;
				Address address=new Address();
				address=null;
				goods=new GoodsDAO().findById(list.getGoodsId());
				user=new UserDAO().findById(list.getUserId());
				temp.setGoodsName(goods.getName());
				temp.setUserName(user.getName());
			
				address=new AddressDAO().findById(list.getAddress());
				
				temp.setAddress(address.getAddress());
				temp.setTelephone(address.getTelephone());
				temp.setConsignee(address.getName());				
				orderAddress.add(temp);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		destUrl = "backPage/shopping/order/list.jsp";
		return "diyUrl";
	}

	public String comprehensiveQuery() {
		try {
			if (!id.isEmpty()) {
				Integer orderid = new Integer(id);
				order.setId(orderid);
			
			}
			if (!uid.isEmpty()) {
				Integer userid = new Integer(uid);
				order.setUserId(userid);
			}
			if (!goodsID.isEmpty()) {
				Integer gid = new Integer(goodsID);
				order.setGoodsId(gid);
			}
			orderList = new OrderDAO().findByExample(order);
			for(Order list:orderList){
				OrderAddress temp=new OrderAddress();
				temp.setOrder(list);
				Goods goods=new Goods();
				goods=null;
				User user=new User();
				goods=null;
				Address address=new Address();
				address=null;
				goods=new GoodsDAO().findById(list.getGoodsId());
				user=new UserDAO().findById(list.getUserId());
				temp.setGoodsName(goods.getName());
				temp.setUserName(user.getName());
			
				address=new AddressDAO().findById(list.getAddress());
				
				temp.setAddress(address.getAddress());
				temp.setTelephone(address.getTelephone());
				temp.setConsignee(address.getName());				
				orderAddress.add(temp);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		destUrl = "backPage/shopping/order/list.jsp";
		return "diyUrl";
	}

	public String add() {
		/**
		 * @author jilin
		 * @date : 2017年1月13日 上午11:42:04
		 * @descripe:添加一个栏目
		 */
		try {

			new OrderDAO().save(order);
			statusCode = "200";
			message = "创建成功";
			navTabId = "order";
			callbackType = "closeCurrent";
		} catch (Exception e) {
			e.printStackTrace();
			statusCode = "300";
			message = "创建失败";
			navTabId = "order";
			callbackType = "closeCurrent";
		}
		return "ajaxdone";

	}

	public String delete() {
		/**
		 * @author jilin
		 * @date : 2017年1月13日 上午11:42:09
		 * @descripe:删除一个栏目
		 */
		Transaction tx = null;
		try {
			tx = HibernateSessionFactory.getSession().beginTransaction();
			OrderDAO dao = new OrderDAO();
			Integer id = new Integer(uid);
			order = dao.findById(id.intValue());
			dao.delete(order);
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
			statusCode = "300";
			message = "删除失败";
			navTabId = "order";
			callbackType = "closeCurrent";
		} finally {
			tx.commit();
			HibernateSessionFactory.getSession().close();
		}
		return "ajaxdone";
	}

	public String modifyPre() {
		/**
		 * @author jilin
		 * @date : 2017年1月13日 上午11:43:05
		 * @descripe:修改一个栏目信息的前置处理
		 */

		OrderDAO dao = new OrderDAO();
		Integer id = new Integer(uid);
		order = dao.findById(id.intValue());

		destUrl = "backPage/shopping/order/modify.jsp";
		return "diyUrl";
	}

	public String modify() {
		/**
		 * @author jilin
		 * @date : 2017年1月13日 上午11:43:05
		 * @descripe:修改一个栏目信息
		 */
		Transaction tx = null;
		try {
			tx = HibernateSessionFactory.getSession().beginTransaction();

			OrderDAO dao = new OrderDAO();
			// Integer id = new Integer(uid);
			// Order orderTemp=dao.findById(id);
			// orderTemp=order;
			dao.merge(order);			
			statusCode = "200";
			message = "修改成功";
			navTabId = "order";
			callbackType = "closeCurrent";
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
			statusCode = "300";
			message = "修改失败";
			navTabId = "order";
			callbackType = "closeCurrent";
		} finally {
			tx.commit();
			HibernateSessionFactory.getSession().flush();
			HibernateSessionFactory.getSession().close();
		}
		return "ajaxdone";

	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public List<Order> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<Order> orderList) {
		this.orderList = orderList;
	}

	public String getDestUrl() {
		return destUrl;
	}

	public void setDestUrl(String destUrl) {
		this.destUrl = destUrl;
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

	public List<OrderAddress> getOrderAddress() {
		return orderAddress;
	}

	public void setOrderAddress(List<OrderAddress> orderAddress) {
		this.orderAddress = orderAddress;
	}

}
