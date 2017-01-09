package com.ypeb.model.trade.pointsSale;

import java.sql.Timestamp;
import java.util.List;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import static org.hibernate.criterion.Example.create;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for
 * Pointssale entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.ypeb.model.trade.pointsSale.Pointssale
 * @author MyEclipse Persistence Tools
 */
public class PointssaleDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory
			.getLogger(PointssaleDAO.class);
	// property constants
	public static final String SALE_ID = "saleId";
	public static final String NUM = "num";
	public static final String PRICE = "price";
	public static final String ALL_PRICE = "allPrice";
	public static final String STATE = "state";
	public static final String RESIDUE = "residue";

	public void save(Pointssale transientInstance) {
		log.debug("saving Pointssale instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Pointssale persistentInstance) {
		log.debug("deleting Pointssale instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Pointssale findById(java.lang.Integer id) {
		log.debug("getting Pointssale instance with id: " + id);
		try {
			Pointssale instance = (Pointssale) getSession().get(
					"com.ypeb.model.points.pointsSale.Pointssale", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<Pointssale> findByExample(Pointssale instance) {
		log.debug("finding Pointssale instance by example");
		try {
			List<Pointssale> results = (List<Pointssale>) getSession()
					.createCriteria(
							"com.ypeb.model.points.pointsSale.Pointssale")
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
		log.debug("finding Pointssale instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Pointssale as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<Pointssale> findBySaleId(Object saleId) {
		return findByProperty(SALE_ID, saleId);
	}

	public List<Pointssale> findByNum(Object num) {
		return findByProperty(NUM, num);
	}

	public List<Pointssale> findByPrice(Object price) {
		return findByProperty(PRICE, price);
	}

	public List<Pointssale> findByAllPrice(Object allPrice) {
		return findByProperty(ALL_PRICE, allPrice);
	}

	public List<Pointssale> findByState(Object state) {
		return findByProperty(STATE, state);
	}

	public List<Pointssale> findByResidue(Object residue) {
		return findByProperty(RESIDUE, residue);
	}

	public List findAll() {
		log.debug("finding all Pointssale instances");
		try {
			String queryString = "from Pointssale";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Pointssale merge(Pointssale detachedInstance) {
		log.debug("merging Pointssale instance");
		try {
			Pointssale result = (Pointssale) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Pointssale instance) {
		log.debug("attaching dirty Pointssale instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Pointssale instance) {
		log.debug("attaching clean Pointssale instance");
		try {
			getSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}