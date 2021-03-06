package com.ypeb.model.shopping.goods;

import com.ypeb.model.trade.pointsSale.BaseHibernateDAO;
import com.ypeb.util.Page;

import java.util.List;

import org.hibernate.LockOptions;
import org.hibernate.Query;

import static org.hibernate.criterion.Example.create;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for Goods
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see com.ypeb.model.shopping.goods.Goods
 * @author MyEclipse Persistence Tools
 */
public class GoodsDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory.getLogger(GoodsDAO.class);
	// property constants
	public static final String NAME = "name";
	public static final String SPECIFICATION = "specification";
	public static final String DESCRIPTION = "description";
	public static final String IMAGE_URL1 = "imageUrl1";
	public static final String PRICE = "price";
	public static final String GIVE_POINTS = "givePoints";
	public static final String DISCOUNT_PRICE = "discountPrice";
	public static final String IS_SHOW = "isShow";
	public static final String PURCHACE_PRICE = "purchacePrice";
	public static final String ATTRIBUTE = "attribute";
	public static final String IMAGE_URL2 = "imageUrl2";
	public static final String IMAGE_URL3 = "imageUrl3";
	public static final String IMAGE_URL4 = "imageUrl4";
	public static final String IMAGE_URL5 = "imageUrl5";
	public static final String CODE = "code";
	public static final String SECOND_CATEG = "secondCateg";
	public static final String THIRD_CATEG = "thirdCateg";
	public static final String CATEGORY2 = "category2";
	public static final String TIME_MARK = "timeMark";
	public static final String TELEPHONE = "telephone";
	public static final String LINK_MAN = "linkMan";
	public static final String WEB_CHAT = "webChat";
	public static final String IS_DELETE = "isDelete";
	public static final String CATEGORY2NAME = "category2name";
	
	public List<Goods> findAllByPage(Page page) {
		log.debug("finding all Goods instances");
		try {
			getSession().clear();
			String queryString = "from Goods where isDelete=0 order by id desc";
			Query queryObject = getSession().createQuery(queryString);
			int first = (page.getCurrentPage() - 1) * page.getEveryPage();
			queryObject.setFirstResult(first);
			queryObject.setMaxResults(page.getEveryPage());
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	

	public int findCount() {
		log.debug("finding all goods count");
		try {
			getSession().clear();
			String hql = "select count(*) from Goods as inf where isDelete=0";
			Query query = getSession().createQuery(hql);
			System.out.println(((Number) query.uniqueResult()).intValue());
			return  ((Number) query.uniqueResult()).intValue();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}


	public void save(Goods transientInstance) {
		log.debug("saving Goods instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Goods persistentInstance) {
		log.debug("deleting Goods instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Goods findById(java.lang.Integer id) {
		log.debug("getting Goods instance with id: " + id);
		try {
			Goods instance = (Goods) getSession().get(
					"com.ypeb.model.shopping.goods.Goods", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<Goods> findByExample(Goods instance) {
		log.debug("finding Goods instance by example");
		try {
			List<Goods> results = (List<Goods>) getSession()
					.createCriteria("com.ypeb.model.shopping.goods.Goods")
					.add(create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Goods instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Goods as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<Goods> findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List<Goods> findBySpecification(Object specification) {
		return findByProperty(SPECIFICATION, specification);
	}

	public List<Goods> findByDescription(Object description) {
		return findByProperty(DESCRIPTION, description);
	}

	public List<Goods> findByImageUrl1(Object imageUrl1) {
		return findByProperty(IMAGE_URL1, imageUrl1);
	}

	public List<Goods> findByPrice(Object price) {
		return findByProperty(PRICE, price);
	}

	public List<Goods> findByGivePoints(Object givePoints) {
		return findByProperty(GIVE_POINTS, givePoints);
	}

	public List<Goods> findByDiscountPrice(Object discountPrice) {
		return findByProperty(DISCOUNT_PRICE, discountPrice);
	}

	public List<Goods> findByIsShow(Object isShow) {
		return findByProperty(IS_SHOW, isShow);
	}

	public List<Goods> findByPurchacePrice(Object purchacePrice) {
		return findByProperty(PURCHACE_PRICE, purchacePrice);
	}

	public List<Goods> findByAttribute(Object attribute) {
		return findByProperty(ATTRIBUTE, attribute);
	}

	public List<Goods> findByImageUrl2(Object imageUrl2) {
		return findByProperty(IMAGE_URL2, imageUrl2);
	}

	public List<Goods> findByImageUrl3(Object imageUrl3) {
		return findByProperty(IMAGE_URL3, imageUrl3);
	}

	public List<Goods> findByImageUrl4(Object imageUrl4) {
		return findByProperty(IMAGE_URL4, imageUrl4);
	}

	public List<Goods> findByImageUrl5(Object imageUrl5) {
		return findByProperty(IMAGE_URL5, imageUrl5);
	}

	public List<Goods> findByCode(Object code) {
		return findByProperty(CODE, code);
	}

	public List<Goods> findBySecondCateg(Object secondCateg) {
		return findByProperty(SECOND_CATEG, secondCateg);
	}

	public List<Goods> findByThirdCateg(Object thirdCateg) {
		return findByProperty(THIRD_CATEG, thirdCateg);
	}

	public List<Goods> findByCategory2(Object category2) {
		return findByProperty(CATEGORY2, category2);
	}

	public List<Goods> findByTimeMark(Object timeMark) {
		return findByProperty(TIME_MARK, timeMark);
	}

	public List<Goods> findByTelephone(Object telephone) {
		return findByProperty(TELEPHONE, telephone);
	}

	public List<Goods> findByLinkMan(Object linkMan) {
		return findByProperty(LINK_MAN, linkMan);
	}

	public List<Goods> findByWebChat(Object webChat) {
		return findByProperty(WEB_CHAT, webChat);
	}

	public List<Goods> findByIsDelete(Object isDelete) {
		return findByProperty(IS_DELETE, isDelete);
	}

	public List<Goods> findByCategory2name(Object category2name) {
		return findByProperty(CATEGORY2NAME, category2name);
	}

	public List findAll() {
		log.debug("finding all Goods instances");
		try {
			String queryString = "from Goods";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Goods merge(Goods detachedInstance) {
		log.debug("merging Goods instance");
		try {
			Goods result = (Goods) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Goods instance) {
		log.debug("attaching dirty Goods instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Goods instance) {
		log.debug("attaching clean Goods instance");
		try {
			getSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}