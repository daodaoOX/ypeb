package com.ypeb.action.front.shopping;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.ypeb.dataClass.front.CategoryByLevel;
import com.ypeb.model.shopping.advertisement.Advertisement;
import com.ypeb.model.shopping.advertisement.AdvertisementDAO;
import com.ypeb.model.shopping.announcement.Announcement;
import com.ypeb.model.shopping.announcement.AnnouncementDAO;
import com.ypeb.model.shopping.goods.Goods;
import com.ypeb.model.shopping.goods.GoodsDAO;
import com.ypeb.model.shopping.goodsCategory.Goodscategory;
import com.ypeb.model.shopping.goodsCategory.GoodscategoryDAO;
import com.ypeb.model.shopping.roll.Roll;
import com.ypeb.model.shopping.roll.RollDAO;

public class IndexAction extends ActionSupport {
	/**
	 * @author jilin
	 * @date : 2017年1月11日 下午2:57:57
	 * @descripe:商城首页使用的action
	 */
	private List<Goodscategory> firstCategoryList;
	private ArrayList<List<Goodscategory>> secondCategoryList = new ArrayList<List<Goodscategory>>();
	private List<Goodscategory> floorCategoryList;
	private List<List<Goods>> goodsList;
	private List<Roll> rollList;
	private List<Advertisement> advertList;// 封装广告
	private List<Announcement> announList;
	private String announID;
	private Announcement announcement;
	private String goodsID;// 商品ID，用来查询商品详情
	private Goods goods;
	private ArrayList<CategoryByLevel> categoryByLevel = new ArrayList<CategoryByLevel>();

	private String destUrl;

	public String indexData(){
		GoodscategoryDAO categoryDao = new GoodscategoryDAO();
		GoodsDAO goodsDao = new GoodsDAO();
		short level = 1;
		firstCategoryList = categoryDao.findByLevel(level);
		for (Goodscategory first : firstCategoryList) {
			Goodscategory category = new Goodscategory();
			CategoryByLevel cate = new CategoryByLevel();
			cate.setId(first.getId());
			cate.setName(first.getName());
			category.setSuperId(first.getId());
			cate.setSecCategoryList(categoryDao.findBySuperId(first.getId()));
			categoryByLevel.add(cate);
		}
		destUrl="frontPage/index.jsp";
		return "diyUrl";
	}
	public String bodyData() {
		/**
		 * @author jilin
		 * @date : 2017年1月11日 下午3:08:31
		 * @descripe:进入首页使用的方法
		 */
		GoodscategoryDAO categoryDao = new GoodscategoryDAO();
		GoodsDAO goodsDao = new GoodsDAO();
		short level = 1;
		firstCategoryList = categoryDao.findByLevel(level);
		level = 2;
		for (Goodscategory first : firstCategoryList) {
			Goodscategory category = new Goodscategory();
			CategoryByLevel cate = new CategoryByLevel();
			cate.setId(first.getId());
			cate.setName(first.getName());
			category.setSuperId(first.getId());
			cate.setSecCategoryList(categoryDao.findBySuperId(first.getId()));
			categoryByLevel.add(cate);
		}

		floorCategoryList = categoryDao.findByIsFloor(true);
		Goods goods = new Goods();
		for (int i = 0; i < floorCategoryList.size(); i++) {
			// 先判断楼层栏目是不是有足够的8个商品，不足8个商品就只查出来有的
			goods.setGoodscategory(floorCategoryList.get(i));
			goods.setIsShow(true);
			int goodsNumInCateg = goodsDao.findByExample(goods).size();
			List<Goods> goodsOneFloor = goodsDao.findByExample(goods);
			for (int j = 0; j < (goodsNumInCateg >= 8 ? 8 : goodsNumInCateg); j++) {
				// 封装商品到楼层中
				goodsList.get(i).add(goodsOneFloor.get(j));
			}
		}
		rollList = new RollDAO().findAll();
		advertList = new AdvertisementDAO().findByType(1);
		announList = new AnnouncementDAO().findIndexAnnoun();
		destUrl = "frontPage/body.jsp";
		return "diyUrl";
	}

	public String moreAnnouncement() {
		/**
		 * @author jilin
		 * @date : 2017年1月12日 下午2:28:55
		 * @descripe:公告信息，点击“更多按钮处理方法”
		 */
		announList = new AnnouncementDAO().findAll();
		destUrl = "";
		return "diyUrl";
	}

	public String findAnnouncement() {
		/**
		 * @author jilin
		 * @date : 2017年1月12日 下午2:29:21
		 * @descripe:查询公告详细内容
		 */
		Integer id = new Integer(announID);
		announcement = new AnnouncementDAO().findById(id.intValue());
		destUrl = "";
		return "diyUrl";
	}

	public String showFoods() {
		/**
		 * @author jilin
		 * @date : 2017年1月12日 下午2:33:03
		 * @descripe:根据传来的goodsID跳转到商品的详情页面
		 */
		Integer id = new Integer(goodsID);
		goods = new GoodsDAO().findById(id.intValue());
		destUrl = "";
		return "diyUrl";
	}

	public List<Goodscategory> getFloorCategoryList() {
		return floorCategoryList;
	}

	public void setFloorCategoryList(List<Goodscategory> floorCategoryList) {
		this.floorCategoryList = floorCategoryList;
	}

	public List<List<Goods>> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<List<Goods>> goodsList) {
		this.goodsList = goodsList;
	}

	public String getDestUrl() {
		return destUrl;
	}

	public void setDestUrl(String destUrl) {
		this.destUrl = destUrl;
	}

	public List<Roll> getRollList() {
		return rollList;
	}

	public void setRollList(List<Roll> rollList) {
		this.rollList = rollList;
	}

	public List<Advertisement> getAdvertList() {
		return advertList;
	}

	public void setAdvertList(List<Advertisement> advertList) {
		this.advertList = advertList;
	}

	public List<Announcement> getAnnounList() {
		return announList;
	}

	public Announcement getAnnouncement() {
		return announcement;
	}

	public void setAnnouncement(Announcement announcement) {
		this.announcement = announcement;
	}

	public void setAnnounList(List<Announcement> announList) {
		this.announList = announList;
	}

	public String getAnnounID() {
		return announID;
	}

	public void setAnnounID(String announID) {
		this.announID = announID;
	}

	public String getGoodsID() {
		return goodsID;
	}

	public void setGoodsID(String goodsID) {
		this.goodsID = goodsID;
	}

	public List<Goodscategory> getFirstCategoryList() {
		return firstCategoryList;
	}

	public void setFirstCategoryList(List<Goodscategory> firstCategoryList) {
		this.firstCategoryList = firstCategoryList;
	}

	public ArrayList<List<Goodscategory>> getSecondCategoryList() {
		return secondCategoryList;
	}

	public void setSecondCategoryList(
			ArrayList<List<Goodscategory>> secondCategoryList) {
		this.secondCategoryList = secondCategoryList;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public ArrayList<CategoryByLevel> getCategoryByLevel() {
		return categoryByLevel;
	}

	public void setCategoryByLevel(ArrayList<CategoryByLevel> categoryByLevel) {
		this.categoryByLevel = categoryByLevel;
	}

}
