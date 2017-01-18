package com.ypeb.model.user.cash;

import java.sql.Timestamp;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Cash entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "cash", catalog = "ypeb")
public class Cash extends AbstractCash implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Cash() {
	}

	/** full constructor */
	public Cash(Integer userId, Double num, Timestamp time, Integer operator,
			Boolean operate, Short state) {
		super(userId, num, time, operator, operate, state);
	}

}
