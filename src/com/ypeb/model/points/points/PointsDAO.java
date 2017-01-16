package com.ypeb.model.points.points;

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
 * Points entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.ypeb.model.points.points.Points
 * @author MyEclipse Persistence Tools
 */
public class PointsDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory.getLogger(PointsDAO.class);
	// property constants
	public static final String USER_ID = "userId";
	public static final String POINT_NUM = "pointNum";

	public void save(Points transientInstance) {
		log.debug("saving Points instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Points persistentInstance) {
		log.debug("deleting Points instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Points findById(java.lang.Integer id) {
		log.debug("getting Points instance with id: " + id);
		try {
			Points instance = (Points) getSession().get(
					"com.ypeb.model.points.points.Points", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<Points> findByExample(Points instance) {
		log.debug("finding Points instance by example");
		try {
			List<Points> results = (List<Points>) getSession()
					.createCriteria("com.ypeb.model.points.points.Points")
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
		log.debug("finding Points instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Points as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<Points> findByUserId(Object userId) {
		return findByProperty(USER_ID, userId);
	}

	public List<Points> findByPointNum(Object pointNum) {
		return findByProperty(POINT_NUM, pointNum);
	}

	public List findAll() {
		log.debug("finding all Points instances");
		try {
			String queryString = "from Points";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Points merge(Points detachedInstance) {
		log.debug("merging Points instance");
		try {
			Points result = (Points) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Points instance) {
		log.debug("attaching dirty Points instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Points instance) {
		log.debug("attaching clean Points instance");
		try {
			getSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}