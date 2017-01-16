package come.ypeb.model.manager.role;

import com.ypeb.model.trade.pointsSale.BaseHibernateDAO;
import java.util.List;
import java.util.Set;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import static org.hibernate.criterion.Example.create;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for Role
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see come.ypeb.model.manager.role.Role
 * @author MyEclipse Persistence Tools
 */
public class RoleDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory.getLogger(RoleDAO.class);
	// property constants
	public static final String NAME = "name";
	public static final String SUPER_ = "super_";
	public static final String SHOP_WEB = "shopWeb";
	public static final String POINTS = "points";
	public static final String MEMBER = "member";
	public static final String ORDER = "order";
	public static final String MESSAGE = "message";
	public static final String SEETING = "seeting";
	public static final String TRADE = "trade";

	public void save(Role transientInstance) {
		log.debug("saving Role instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Role persistentInstance) {
		log.debug("deleting Role instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Role findById(java.lang.Integer id) {
		log.debug("getting Role instance with id: " + id);
		try {
			Role instance = (Role) getSession().get(
					"come.ypeb.model.manager.role.Role", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<Role> findByExample(Role instance) {
		log.debug("finding Role instance by example");
		try {
			List<Role> results = (List<Role>) getSession()
					.createCriteria("come.ypeb.model.manager.role.Role")
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
		log.debug("finding Role instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Role as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<Role> findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List<Role> findBySuper_(Object super_) {
		return findByProperty(SUPER_, super_);
	}

	public List<Role> findByShopWeb(Object shopWeb) {
		return findByProperty(SHOP_WEB, shopWeb);
	}

	public List<Role> findByPoints(Object points) {
		return findByProperty(POINTS, points);
	}

	public List<Role> findByMember(Object member) {
		return findByProperty(MEMBER, member);
	}

	public List<Role> findByOrder(Object order) {
		return findByProperty(ORDER, order);
	}

	public List<Role> findByMessage(Object message) {
		return findByProperty(MESSAGE, message);
	}

	public List<Role> findBySeeting(Object seeting) {
		return findByProperty(SEETING, seeting);
	}

	public List<Role> findByTrade(Object trade) {
		return findByProperty(TRADE, trade);
	}

	public List findAll() {
		log.debug("finding all Role instances");
		try {
			String queryString = "from Role";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Role merge(Role detachedInstance) {
		log.debug("merging Role instance");
		try {
			Role result = (Role) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Role instance) {
		log.debug("attaching dirty Role instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Role instance) {
		log.debug("attaching clean Role instance");
		try {
			getSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}