package com.ypeb.model.user.user;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.ypeb.model.user.address.Address;
import com.ypeb.model.user.bankCard.Bankcard;

/**
 * User entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user", catalog = "ypeb")
public class User extends AbstractUser implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String password, String payPassword, String telephone,
			String name, String province, String city, String country,
			String idcard, Short level, Boolean inforIsFull) {
		super(password, payPassword, telephone, name, province, city, country,
				idcard, level, inforIsFull);
	}

	/** full constructor */
	public User(User user, String password, String payPassword,
			String telephone, String name, String province, String city,
			String country, String idcard, Short level, Integer cash,
			Integer usingPoints, Boolean inforIsFull, String imageUrl,
			Set<Address> addresses, Set<User> users, Set<Bankcard> bankcards) {
		super(user, password, payPassword, telephone, name, province, city,
				country, idcard, level, cash, usingPoints, inforIsFull,
				imageUrl, addresses, users, bankcards);
	}

}
