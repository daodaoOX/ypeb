package com.ypeb.util;

import java.util.List;

import com.ypeb.dataClass.front.QueryCondition;
import com.ypeb.model.points.pointsPublish.Pointspublish;
import com.ypeb.model.trade.pointsSale.Pointssale;
import com.ypeb.model.trade.pointsSale.PointssaleDAO;
import com.ypeb.model.user.address.Address;
import com.ypeb.model.user.address.AddressDAO;
import com.ypeb.model.user.user.User;
import com.ypeb.model.user.user.UserDAO;

public class Test {

	public static void main(String[] args) {
		Address address=new Address();
		User user=new UserDAO().findById(1);
		address.setUser(user);
		List<Address> list=new AddressDAO().findByUser(user);
		System.out.println(list.size());

	}

}
