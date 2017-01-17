package com.ypeb.model.shopping.goodsOrder;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

/**
 * AbstractOrder entity provides the base persistence definition of the Order
 * entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractOrder implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer userId;
	private Integer goodsId;
	private Double unitPrice;
	private Short num;
	private Short state;
	private Double totalprice;
	private Integer address;
	private Boolean style;

	// Constructors

	/** default constructor */
	public AbstractOrder() {
	}

	/** full constructor */
	public AbstractOrder(Integer userId, Integer goodsId, Double unitPrice,
			Short num, Short state, Double totalprice, Integer address,
			Boolean style) {
		this.userId = userId;
		this.goodsId = goodsId;
		this.unitPrice = unitPrice;
		this.num = num;
		this.state = state;
		this.totalprice = totalprice;
		this.address = address;
		this.style = style;
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

	@Column(name = "goodsID", nullable = false)
	public Integer getGoodsId() {
		return this.goodsId;
	}

	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}

	@Column(name = "unit_price", nullable = false, precision = 11)
	public Double getUnitPrice() {
		return this.unitPrice;
	}

	public void setUnitPrice(Double unitPrice) {
		this.unitPrice = unitPrice;
	}

	@Column(name = "num", nullable = false)
	public Short getNum() {
		return this.num;
	}

	public void setNum(Short num) {
		this.num = num;
	}

	@Column(name = "state", nullable = false)
	public Short getState() {
		return this.state;
	}

	public void setState(Short state) {
		this.state = state;
	}

	@Column(name = "totalprice", nullable = false, precision = 12)
	public Double getTotalprice() {
		return this.totalprice;
	}

	public void setTotalprice(Double totalprice) {
		this.totalprice = totalprice;
	}

	@Column(name = "address", nullable = false)
	public Integer getAddress() {
		return this.address;
	}

	public void setAddress(Integer address) {
		this.address = address;
	}

	@Column(name = "style", nullable = false)
	public Boolean getStyle() {
		return this.style;
	}

	public void setStyle(Boolean style) {
		this.style = style;
	}

}