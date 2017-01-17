package com.ypeb.model.shopping.goodsOrder;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "order", catalog = "ypeb")
public class Order extends AbstractOrder implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** full constructor */
	public Order(Integer userId, Integer goodsId, Double unitPrice, Short num,
			Short state, Double totalprice, Integer address, Boolean style) {
		super(userId, goodsId, unitPrice, num, state, totalprice, address,
				style);
	}

}
