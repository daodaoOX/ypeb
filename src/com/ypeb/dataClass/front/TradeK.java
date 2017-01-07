package com.ypeb.dataClass.front;

import java.sql.Date;

public class TradeK {
	/**
	 * @author jilin
	 * @date : 2017年1月7日 下午2:56:26
	 * @descripe :数据类，用来传送月K线图所需的数据。
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
