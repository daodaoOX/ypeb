package com.ypeb.model.shopping.shoppingCar;

import java.sql.Timestamp;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Shoppingcar entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "shoppingcar", catalog = "ypeb")
public class Shoppingcar extends AbstractShoppingcar implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Shoppingcar() {
	}

	/** full constructor */
	public Shoppingcar(Integer userId, Timestamp time, Integer goodsId,
			Short num, Short price, Integer allPrice) {
		super(userId, time, goodsId, num, price, allPrice);
	}

}
