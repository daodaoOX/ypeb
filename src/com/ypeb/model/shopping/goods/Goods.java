package com.ypeb.model.shopping.goods;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.ypeb.model.shopping.goodsCategory.Goodscategory;

/**
 * Goods entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "goods", catalog = "ypeb")
public class Goods extends AbstractGoods implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Goods() {
	}

	/** minimal constructor */
	public Goods(Goodscategory goodscategory, String name,
			String specification, String description, String imageUrl1,
			Double price, String givePoints, String discountPrice,
			Boolean isShow, Double purchacePrice, String attribute, String code) {
		super(goodscategory, name, specification, description, imageUrl1,
				price, givePoints, discountPrice, isShow, purchacePrice,
				attribute, code);
	}

	/** full constructor */
	public Goods(Goodscategory goodscategory, String name,
			String specification, String description, String imageUrl1,
			Double price, String givePoints, String discountPrice,
			Boolean isShow, Double purchacePrice, String attribute,
			String imageUrl2, String imageUrl3, String imageUrl4,
			String imageUrl5, String code) {
		super(goodscategory, name, specification, description, imageUrl1,
				price, givePoints, discountPrice, isShow, purchacePrice,
				attribute, imageUrl2, imageUrl3, imageUrl4, imageUrl5, code);
	}

}
