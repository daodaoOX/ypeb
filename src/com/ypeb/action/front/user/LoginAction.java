package com.ypeb.action.front.user;

import com.opensymphony.xwork2.ActionContext;
import com.ypeb.model.user.user.User;
import com.ypeb.model.user.user.UserDAO;


public class LoginAction {
	private User user;
	private String telephone;
	private String password;
	private String destURL;
	private UserDAO dao = new UserDAO();
	
	
	public String login() {
		
		return "diyurl";
	}

}
