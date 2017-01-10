package com.ypeb.dataClass.front;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import com.ypeb.model.trade.pointsTrade.PointtradeDAO;

public class TradeK {
	/**
	 * @author jilin
	 * @date : 2017年1月7日 下午2:56:26
	 * @descripe :数据类,用来传送月K线图所需的数据。
	 */
	public double firtTrade;
	public double lastTrade;
	public double maxTrade;
	public double minTrade;
	
	public void calcuMonthK(Date date){
		/**
		 * @author jilin
		 * @date : 2017年1月7日 下午2:58:55
		 * @descripe: 方法用来查询date日期的K线数据,并给自身赋值
		 */
		
		//获得当前date时间
		Date currentDate=new Date();
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String currentTime=format.format(date);
		GregorianCalendar cal = new GregorianCalendar();  
			cal.setTime(currentDate);
		int currentDateDay = cal.get(GregorianCalendar.DAY_OF_MONTH);
		
		Calendar calendar = Calendar.getInstance();  
		calendar.set(Calendar.DAY_OF_MONTH, currentDateDay);  
		Date start = calendar.getTime(); 
		calendar.set(Calendar.DAY_OF_MONTH, currentDateDay+1);  
		Date end = calendar.getTime(); 
		
		PointtradeDAO dao = new PointtradeDAO();
		
		//List Trade = dao.findByTime();
		
	}

	public double getFirtTrade() {
		return firtTrade;
	}

	public void setFirtTrade(double firtTrade) {
		this.firtTrade = firtTrade;
	}

	public double getLastTrade() {
		return lastTrade;
	}

	public void setLastTrade(double lastTrade) {
		this.lastTrade = lastTrade;
	}

	public double getMaxTrade() {
		return maxTrade;
	}

	public void setMaxTrade(double maxTrade) {
		this.maxTrade = maxTrade;
	}

	public double getMinTrade() {
		return minTrade;
	}

	public void setMinTrade(double minTrade) {
		this.minTrade = minTrade;
	}
	
	
	
	

}
