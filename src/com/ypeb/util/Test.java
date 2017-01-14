package com.ypeb.util;

import java.util.List;

import com.ypeb.dataClass.front.QueryCondition;
import com.ypeb.model.trade.pointsSale.Pointssale;
import com.ypeb.model.trade.pointsSale.PointssaleDAO;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PointssaleDAO dao=new PointssaleDAO();
		QueryCondition queryCondition=new QueryCondition();
		queryCondition.setOrderDirection("desc");
		queryCondition.setOrderField("time");
		List<Pointssale> list=dao.comprehensiveQuery("3", "3", queryCondition);
		System.out.println(list.size());
		System.out.println(list.get(0).getId());

	}

}
