package come.ypeb.model.manager;

import javax.management.relation.Role;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Manager entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "manager", catalog = "ypeb")
public class Manager extends AbstractManager implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Manager() {
	}

	public Manager(come.ypeb.model.manager.role.Role role, String name,
			String realName, String telephone) {
		super(role, name, realName, telephone);
		// TODO Auto-generated constructor stub
	}

	/** full constructor */

}
