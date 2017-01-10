package com.ypeb;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import com.ypeb.model.trade.pointsTrade.Pointtrade;
import com.ypeb.model.trade.pointsTrade.PointtradeDAO;

public class Test {

	public static void main(String[] args) {

	
		Date start=new Date(110,2,1);
		Date end=new Date(110,2,2);
		PointtradeDAO dao=new PointtradeDAO();
		System.out.println(dao.findAll());
	//	List<Pointtrade> pointtradeList=dao.findByTime(start,end);
	//	System.out.println(pointtradeList.size());
		
		
 
			
	}

}
