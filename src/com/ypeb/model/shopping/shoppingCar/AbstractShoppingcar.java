package com.ypeb.model.shopping.shoppingCar;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

/**
 * AbstractShoppingcar entity provides the base persistence definition of the
 * Shoppingcar entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractShoppingcar implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer userId;
	private Timestamp time;
	private Integer goodsId;
	private Short num;
	private Short price;
	private Integer allPrice;

	// Constructors

	/** default constructor */
	public AbstractShoppingcar() {
	}

	/** minimal constructor */
	public AbstractShoppingcar(Integer userId, Integer goodsId) {
		this.userId = userId;
		this.goodsId = goodsId;
	}

	/** full constructor */
	public AbstractShoppingcar(Integer userId, Timestamp time, Integer goodsId,
			Short num, Short price, Integer allPrice) {
		this.userId = userId;
		this.time = time;
		this.goodsId = goodsId;
		this.num = num;
		this.price = price;
		this.allPrice = allPrice;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "userID", nullable = false)
	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	@Column(name = "time", length = 19)
	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	@Column(name = "goodsID", nullable = false)
	public Integer getGoodsId() {
		return this.goodsId;
	}

	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}

	@Column(name = "num")
	public Short getNum() {
		return this.num;
	}

	public void setNum(Short num) {
		this.num = num;
	}

	@Column(name = "price")
	public Short getPrice() {
		return this.price;
	}

	public void setPrice(Short price) {
		this.price = price;
	}

	@Column(name = "allPrice")
	public Integer getAllPrice() {
		return this.allPrice;
	}

	public void setAllPrice(Integer allPrice) {
		this.allPrice = allPrice;
	}

}