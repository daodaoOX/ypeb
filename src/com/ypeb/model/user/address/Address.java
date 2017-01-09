package com.ypeb.model.user.address;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.ypeb.model.user.user.User;

/**
 * Address entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "address", catalog = "ypeb")
public class Address extends AbstractAddress implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Address() {
	}

	/** full constructor */
	public Address(User user, String address, String name, String telephone) {
		super(user, address, name, telephone);
	}

}
