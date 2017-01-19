package com.ypeb.action.back.shopping;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ypeb.model.hibernate.HibernateSessionFactory;
import com.ypeb.model.shopping.goods.Goods;
import com.ypeb.model.shopping.goods.GoodsDAO;

public class GoodsAction extends ActionSupport {
	private Goods goods;
	private List<Goods> goodsList = new ArrayList<Goods>();
	private String destUrl;
	// JUI JSON返回
	private String statusCode;
	private String message;
	private String navTabId;
	private String callbackType;
	private String forwardUrl;

	private String uid;
	private String category2;

	private File image;// 封装上传文件域的属性
	private String imageContentType;// 封装上传文件类型
	private String imageFileName;// 封装上传文件名
	private static String savePath = "upload/image/goods/";

	private String diyContentType = "jpg/png/gif";

	public String comprehensiveQuery() {
		try {
			if (goods.getName().isEmpty())
				goods.setName(null);
			if (goods.getCode().isEmpty())
				goods.setCode(null);

			goodsList = new GoodsDAO().findByExample(goods);

		} catch (Exception e) {
			e.printStackTrace();
		}
		destUrl = "backPage/shopping/goods/list.jsp";
		return "diyUrl";
	}

	public String add() {
		GoodsDAO dao = new GoodsDAO();
		Transaction tx = null;
		try {
			if (ActionContext.getContext().getSession().get("timeMark") != null) {
				goods.setTimeMark((String) ActionContext.getContext()
						.getSession().get("timeMark"));
			}
			System.out.println(ActionContext.getContext().getSession()
					.get("timeMark"));
			ServletActionContext.getContext().getSession()
					.put("timeMark", null);
			System.out.println(ActionContext.getContext().getSession()
					.get("timeMark"));
			setImageFileName(System.currentTimeMillis() + getImageFileName());

			FileOutputStream fos = new FileOutputStream(ServletActionContext
					.getServletContext().getRealPath(
							getSavePath() + getImageFileName()));
			System.out.println(getImage());

			FileInputStream fis = new FileInputStream(getImage());
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = fis.read(buffer)) > 0) {
				fos.write(buffer, 0, len);
			}
			goods.setImageUrl1(imageFileName);

			tx = HibernateSessionFactory.getSession().beginTransaction();
			goods.setSecondCateg(goods.getGoodscategory().getId());
			dao.save(goods);
			tx.commit();
			fos.close();
			fis.close();
			statusCode = "200";
			message = "创建成功";
			navTabId = "goods";
			callbackType = "closeCurrent";
		} catch (Exception e) {
			e.printStackTrace();

			statusCode = "300";
			message = "未知原因，插入失败";
		} finally {
			HibernateSessionFactory.getSession().close();
		}

		return "ajaxdone";
	}

	public String delete() {
		/**
		 * @author jilin
		 * @date : 2017年1月13日 上午11:42:09
		 * @descripe:删除一个栏目
		 */
		Integer m = new Integer(uid);
		goods = new GoodsDAO().findById(m.intValue());
		try {
			Transaction tx = HibernateSessionFactory.getSession()
					.beginTransaction();
			try {
				File file = new File(ServletActionContext.getServletContext()
						.getRealPath(getSavePath() + goods.getImageUrl1()));

				file.delete();
				new GoodsDAO().delete(goods);

				tx.commit();
				if (goods.getTimeMark() != null) {
					String saveRealFilePath = ServletActionContext
							.getServletContext().getRealPath("/")
							+ savePath
							+ goods.getTimeMark();
					this.deleteFile(new File(saveRealFilePath));
				}
				System.out.println(goods.getId());

				HibernateSessionFactory.getSession().flush();
				HibernateSessionFactory.getSession().close();
				statusCode = "200";
				message = "成功删除";
				navTabId = "goods";
				forwardUrl = "";
			} catch (Exception e) {
				e.printStackTrace();
				statusCode = "200";
				message = "记录删除成功，图片删除失败";
				navTabId = "goods";
				forwardUrl = "";
			}

		} catch (Exception e) {
			statusCode = "300";
			message = "删除失败。可能原因：重复删除。";
			return "ajaxdone";
		}
		return "ajaxdone";
	}

	public String modifyPre() {
		/**
		 * @author jilin
		 * @date : 2017年1月13日 上午11:43:05
		 * @descripe:修改一个栏目信息的前置处理
		 */

		GoodsDAO dao = new GoodsDAO();
		Integer id = new Integer(uid);
		goods = dao.findById(id.intValue());

		destUrl = "backPage/shopping/goods/modify.jsp";
		return "diyUrl";
	}

	public String modify() {
		/**
		 * @author jilin
		 * @date : 2017年1月13日 上午11:43:05
		 * @descripe:修改一个栏目信息
		 */
		Transaction tx = null;
		try {
			tx = HibernateSessionFactory.getSession().beginTransaction();

			GoodsDAO dao = new GoodsDAO();
			// Integer id = new Integer(uid);
			// Goods goodsTemp=dao.findById(id);
			// goodsTemp=goods;
			dao.merge(goods);
			;
			statusCode = "200";
			message = "修改成功";
			navTabId = "goods";
			callbackType = "closeCurrent";
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
			statusCode = "300";
			message = "修改失败";
			navTabId = "goods";
			callbackType = "closeCurrent";
		} finally {
			tx.commit();
			HibernateSessionFactory.getSession().flush();
			HibernateSessionFactory.getSession().close();
		}
		return "ajaxdone";

	}

	// 删除文件夹和文件夹下面的文件
	public void deleteFile(File file) {
		if (file.isFile()) {// 表示该文件不是文件夹
			file.delete();
		} else {
			// 首先得到当前的路径
			System.out.println(file);
			String[] childFilePaths = file.list();
			for (String childFilePath : childFilePaths) {
				System.out
						.println(file.getAbsolutePath() + "/" + childFilePath);
				File childFile = new File(file.getAbsolutePath() + "/"
						+ childFilePath);
				deleteFile(childFile);
			}
			file.delete();
		}
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public List<Goods> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<Goods> goodsList) {
		this.goodsList = goodsList;
	}

	public String getDestUrl() {
		return destUrl;
	}

	public void setDestUrl(String destUrl) {
		this.destUrl = destUrl;
	}

	public String getStatusCode() {
		return statusCode;
	}

	public void setStatusCode(String statusCode) {
		this.statusCode = statusCode;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getNavTabId() {
		return navTabId;
	}

	public void setNavTabId(String navTabId) {
		this.navTabId = navTabId;
	}

	public String getCallbackType() {
		return callbackType;
	}

	public void setCallbackType(String callbackType) {
		this.callbackType = callbackType;
	}

	public String getForwardUrl() {
		return forwardUrl;
	}

	public void setForwardUrl(String forwardUrl) {
		this.forwardUrl = forwardUrl;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public static String getSavePath() {
		return savePath;
	}

	public static void setSavePath(String savePath) {
		GoodsAction.savePath = savePath;
	}

	public String getDiyContentType() {
		return diyContentType;
	}

	public void setDiyContentType(String diyContentType) {
		this.diyContentType = diyContentType;
	}

	public String getCategory2() {
		return category2;
	}

	public void setCategory2(String category2) {
		this.category2 = category2;
	}

}
