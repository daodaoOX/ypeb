package com.ypeb.action.front.trade;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.ypeb.dataClass.front.DealRequest;
import com.ypeb.dataClass.front.TradeK;

public class TradeCenterAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private String destUrl;
	
	private List<TradeK> tradeKList;
	
	private List<DealRequest> dealRequestList;
	
	private int userId;
	
	public String tradeCenter() throws Exception{
		/**
		 * @author jilin
		 * @date : 2017年1月7日 下午3:07:51
		 * @descripe:用来查询月K线数据的方法。
		 * 1、计算到系统时间为止有多少天，
		 * 2、使用TradeK.calcuMonthK()方法计算出每天的数据，
		 * 3、分装到tradeKList集合中。
		 * 4、循环计算出本月K线（到系统时间前一天数据即可）的所有数据。
		 * 5、重定向到显示页面
		 */
		
    GregorianCalendar sysTime=new GregorianCalendar();
    
		int sysDay = sysTime.get(GregorianCalendar.DAY_OF_MONTH);
		
		for(int day=1; day<=sysDay; day++){
			
		}
		
		return "diyUrl";
	}
	
	public String dealList(){
		/**
		 * @author jilin
		 * @date : 2017年1月7日 下午3:12:59
		 * @descripe:查询当前时间的购买挂卖记录。
		 * 挂卖记录：
		 * 1.按降序查出六个不同售卖价格，生成6个DealRequest对象（通过循环），放到dealRequestList集合中；
		 * 2.计算每个售卖价格的总积分数量，存到对应对象中；
		 * 查询integerList=poinsSaleDAO.queryDealRequest();(public 	List<Integer> queryDealRequest())
		 * new DealRequest=dealRequst;
		 * dealRequest.setPoints(integerList.1);
		 * dealRequest.setNum( poinsSaleDAO.queryPointsNum(double price1) )    sum select residue from pointsSale where price= price1
		 * dealRequest.setRequest(1);
		 * 购买请求记录：
		 * 参考售卖记录，也存到dealRequestList集合中。
		 */
		
		return "diyUrl";
	}
	
	public String queryRecordByPage(){
		/**
		 * @author jilin
		 * @date : 2017年1月7日 下午3:41:44
		 * @descripe:分页查询查询该用户的积分交易记录
		 * 
		 * 1.获取userID，分页查询buyId或者saleID等于userID的记录；
		 * 2.封装到pointsTradeList对象中。
		 * 3.重定向到显示页面
		 */
		return "diyUrl";
	}

	public String getDestUrl() {
		return destUrl;
	}

	public void setDestUrl(String destUrl) {
		this.destUrl = destUrl;
	}

	public List<TradeK> getTradeKList() {
		return tradeKList;
	}

	public void setTradeKList(List<TradeK> tradeKList) {
		this.tradeKList = tradeKList;
	}

	public List<DealRequest> getDealRequestList() {
		return dealRequestList;
	}

	public void setDealRequestList(List<DealRequest> dealRequestList) {
		this.dealRequestList = dealRequestList;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	
}
