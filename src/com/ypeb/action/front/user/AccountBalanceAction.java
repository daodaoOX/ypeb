package com.ypeb.action.front.user;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ypeb.model.user.cash.Cash;
import com.ypeb.model.user.cash.CashDAO;
import com.ypeb.model.user.user.User;
import com.ypeb.model.user.user.UserDAO;

public class AccountBalanceAction extends ActionSupport {
	private String destUrl;
	private User user;
	private List<Cash> cashList=new ArrayList<Cash>();
	
	public String myCash(){
		/**
		 * @author jilin
		 * @date : 2017年1月18日 上午2:38:29
		 * @descripe:查询账户剩余现金余额和充值记录
		 */
		String userID = (String) ActionContext.getContext().getSession()
				.get("userID");
		Integer uid = new Integer(userID);
		user=new UserDAO().findById(uid.intValue());
		cashList=new CashDAO().findByUserId(uid.intValue());
		destUrl="frontPage/user/cash.jsp";
		return "diyUrl";
	}
	
	public String myIcePoints(){
		/**
		 * @author jilin
		 * @date : 2017年1月18日 上午2:38:29
		 * @descripe:查询账户剩余冻结积分余额和记录
		 */
		String userID = (String) ActionContext.getContext().getSession()
				.get("userID");
		Integer uid = new Integer(userID);
		user=new UserDAO().findById(uid.intValue());
		cashList=new CashDAO().findByUserId(uid.intValue());
		destUrl="frontPage/user/cash.jsp";
		return "diyUrl";
	}
	
	public String myShoppingPoints(){
		/**
		 * @author jilin
		 * @date : 2017年1月18日 上午2:38:29
		 * @descripe:查询账户购物积分余额
		 */
		String userID = (String) ActionContext.getContext().getSession()
				.get("userID");
		Integer uid = new Integer(userID);
		user=new UserDAO().findById(uid.intValue());
		cashList=new CashDAO().findByUserId(uid.intValue());
		destUrl="frontPage/user/cash.jsp";
		return "diyUrl";
	}
	
	public String myTradePoints(){
		/**
		 * @author jilin
		 * @date : 2017年1月18日 上午2:38:29
		 * @descripe:查询账户交易积分余额
		 */
		String userID = (String) ActionContext.getContext().getSession()
				.get("userID");
		Integer uid = new Integer(userID);
		user=new UserDAO().findById(uid.intValue());
		cashList=new CashDAO().findByUserId(uid.intValue());
		destUrl="frontPage/user/cash.jsp";
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

	public List<Cash> getCashList() {
		return cashList;
	}

	public void setCashList(List<Cash> cashList) {
		this.cashList = cashList;
	}
	
}
