package com.ypeb.model.user.cash;

import com.ypeb.model.trade.pointsSale.BaseHibernateDAO;
import java.sql.Timestamp;
import java.util.List;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import static org.hibernate.criterion.Example.create;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for Cash
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see com.ypeb.model.user.cash.Cash
 * @author MyEclipse Persistence Tools
 */
public class CashDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory.getLogger(CashDAO.class);
	// property constants
	public static final String USER_ID = "userId";
	public static final String NUM = "num";
	public static final String OPERATOR = "operator";
	public static final String OPERATE = "operate";
	public static final String STATE = "state";

	public void save(Cash transientInstance) {
		log.debug("saving Cash instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Cash persistentInstance) {
		log.debug("deleting Cash instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Cash findById(java.lang.Integer id) {
		log.debug("getting Cash instance with id: " + id);
		try {
			Cash instance = (Cash) getSession().get(
					"com.ypeb.model.user.cash.Cash", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<Cash> findByExample(Cash instance) {
		log.debug("finding Cash instance by example");
		try {
			List<Cash> results = (List<Cash>) getSession()
					.createCriteria("com.ypeb.model.user.cash.Cash")
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
		log.debug("finding Cash instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Cash as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<Cash> findByUserId(Object userId) {
		return findByProperty(USER_ID, userId);
	}

	public List<Cash> findByNum(Object num) {
		return findByProperty(NUM, num);
	}

	public List<Cash> findByOperator(Object operator) {
		return findByProperty(OPERATOR, operator);
	}

	public List<Cash> findByOperate(Object operate) {
		return findByProperty(OPERATE, operate);
	}

	public List<Cash> findByState(Object state) {
		return findByProperty(STATE, state);
	}

	public List findAll() {
		log.debug("finding all Cash instances");
		try {
			String queryString = "from Cash";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Cash merge(Cash detachedInstance) {
		log.debug("merging Cash instance");
		try {
			Cash result = (Cash) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Cash instance) {
		log.debug("attaching dirty Cash instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Cash instance) {
		log.debug("attaching clean Cash instance");
		try {
			getSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}