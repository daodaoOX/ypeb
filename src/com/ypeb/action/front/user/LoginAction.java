package com.ypeb.action.front.user;

import com.opensymphony.xwork2.ActionSupport;
import com.ypeb.model.user.user.User;
import com.ypeb.model.user.user.UserDAO;

public class LoginAction extends ActionSupport {
	private String destUrl;
	private User user;

	public String login() {
		/**
		 * @author jilin
		 * @date : 2017年1月17日 上午3:28:42
		 * @descripe:用户登录处理 1.进行登录验证 2.通过往下执行，不通过返回提示信息 3.检查冻结积分并进行解冻
		 *                  4.检查购物订单并进行确认
		 */
		// 登录信息验证
		UserDAO dao = new UserDAO();
		// 1.检验验证码是否正确if()
		if (dao.findByTelephone(user.getTelephone()).size() > 0) {
			// 2.检查手机号正确
			User temp = dao.findByTelephone(user.getTelephone()).get(0);
			if (temp.getPassword().equals(user.getPassword())) {
				// 3.密码正确，
				if (temp.getStyle().equals(2)) {
					// 4.(1)商城会员处理，检查是否是商城会员进行解冻积分检查，
					//从points表中查询出没释放完的记录，一次释放平台发行积分
				} else {
					// 5.普通会员处理
				}
				//释放购物赠送积分
				
				//释放购物积分转交易积分期间的冻结积分
			} else {
				// 3.1密码错误处理
			}
		} else {
			// 2.1手机号错误处理

		}

		return "diyUrl";
	}
	
	public String register(){
		/**
		 * @author jilin
		 * @date : 2017年1月17日 上午3:47:52
		 * @descripe:简单注册的处理方法
		 */
		return "diyUrl";
	}
	
	public String addInfo(){
		/**
		 * @author jilin
		 * @date : 2017年1月17日 上午3:47:52
		 * @descripe:完善信息的处理方法
		 */
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

}
