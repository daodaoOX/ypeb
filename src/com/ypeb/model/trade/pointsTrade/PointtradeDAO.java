package com.ypeb.model.trade.pointsTrade;

import com.ypeb.model.trade.pointsSale.BaseHibernateDAO;

import java.sql.Timestamp;
import java.util.List;

import org.hibernate.LockOptions;
import org.hibernate.Query;

import static org.hibernate.criterion.Example.create;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for
 * Pointtrade entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.ypeb.model.trade.pointsTrade.Pointtrade
 * @author MyEclipse Persistence Tools
 */
public class PointtradeDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory
			.getLogger(PointtradeDAO.class);
	// property constants
	public static final String SALE_ID = "saleId";
	public static final String BUY_ID = "buyId";
	public static final String NUM = "num";
	public static final String PRICE = "price";
	public static final String ALLPRICE = "allprice";
	public static final String ICE_TIME = "iceTime";

	public void save(Pointtrade transientInstance) {
		log.debug("saving Pointtrade instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Pointtrade persistentInstance) {
		log.debug("deleting Pointtrade instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Pointtrade findById(java.lang.Integer id) {
		log.debug("getting Pointtrade instance with id: " + id);
		try {
			Pointtrade instance = (Pointtrade) getSession().get(
					"com.ypeb.model.points.pointsTrade.Pointtrade", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<Pointtrade> findByExample(Pointtrade instance) {
		log.debug("finding Pointtrade instance by example");
		try {
			List<Pointtrade> results = (List<Pointtrade>) getSession()
					.createCriteria(
							"com.ypeb.model.points.pointsTrade.Pointtrade")
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
		log.debug("finding Pointtrade instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Pointtrade as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<Pointtrade> findBySaleId(Object saleId) {
		return findByProperty(SALE_ID, saleId);
	}

	public List<Pointtrade> findByBuyId(Object buyId) {
		return findByProperty(BUY_ID, buyId);
	}

	public List<Pointtrade> findByNum(Object num) {
		return findByProperty(NUM, num);
	}

	public List<Pointtrade> findByPrice(Object price) {
		return findByProperty(PRICE, price);
	}

	public List<Pointtrade> findByAllprice(Object allprice) {
		return findByProperty(ALLPRICE, allprice);
	}

	public List<Pointtrade> findByIceTime(Object iceTime) {
		return findByProperty(ICE_TIME, iceTime);
	}

	public List findAll() {
		log.debug("finding all Pointtrade instances");
		try {
			String queryString = "from Pointtrade";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Pointtrade merge(Pointtrade detachedInstance) {
		log.debug("merging Pointtrade instance");
		try {
			Pointtrade result = (Pointtrade) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Pointtrade instance) {
		log.debug("attaching dirty Pointtrade instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Pointtrade instance) {
		log.debug("attaching clean Pointtrade instance");
		try {
			getSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}