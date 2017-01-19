package com.ypeb.model.shopping.goodsCategory;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.ypeb.model.shopping.goods.Goods;

/**
 * Goodscategory entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "goodscategory", catalog = "ypeb")
public class Goodscategory extends AbstractGoodscategory implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Goodscategory() {
	}

	/** minimal constructor */
	public Goodscategory(String name, Boolean isFloor, Short level) {
		super(name, isFloor, level);
	}

	public Goodscategory(String name, Boolean isFloor, Short level,
			Integer superId, String url, Boolean isDelete, Set<Goods> goodses) {
		super(name, isFloor, level, superId, url, isDelete, goodses);
		// TODO Auto-generated constructor stub
	}

	/** full constructor */


}
