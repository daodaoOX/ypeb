package com.ypeb.model.shopping.roll;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Roll entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "roll", catalog = "ypeb")
public class Roll extends AbstractRoll implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Roll() {
	}

	/** full constructor */
	public Roll(String name, String url) {
		super(name, url);
	}

}
