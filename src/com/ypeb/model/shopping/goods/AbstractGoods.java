package com.ypeb.model.shopping.goods;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;

import com.ypeb.model.shopping.goodsCategory.Goodscategory;

/**
 * AbstractGoods entity provides the base persistence definition of the Goods
 * entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractGoods implements java.io.Serializable {

	// Fields

	private Integer id;
	private Goodscategory goodscategory;
	private String name;
	private String specification;
	private String description;
	private String imageUrl1;
	private Double price;
	private String givePoints;
	private String discountPrice;
	private Boolean isShow;
	private Double purchacePrice;
	private String attribute;
	private String imageUrl2;
	private String imageUrl3;
	private String imageUrl4;
	private String imageUrl5;
	private String code;

	// Constructors

	/** default constructor */
	public AbstractGoods() {
	}

	/** minimal constructor */
	public AbstractGoods(Goodscategory goodscategory, String name,
			String specification, String description, String imageUrl1,
			Double price, String givePoints, String discountPrice,
			Boolean isShow, Double purchacePrice, String attribute, String code) {
		this.goodscategory = goodscategory;
		this.name = name;
		this.specification = specification;
		this.description = description;
		this.imageUrl1 = imageUrl1;
		this.price = price;
		this.givePoints = givePoints;
		this.discountPrice = discountPrice;
		this.isShow = isShow;
		this.purchacePrice = purchacePrice;
		this.attribute = attribute;
		this.code = code;
	}

	/** full constructor */
	public AbstractGoods(Goodscategory goodscategory, String name,
			String specification, String description, String imageUrl1,
			Double price, String givePoints, String discountPrice,
			Boolean isShow, Double purchacePrice, String attribute,
			String imageUrl2, String imageUrl3, String imageUrl4,
			String imageUrl5, String code) {
		this.goodscategory = goodscategory;
		this.name = name;
		this.specification = specification;
		this.description = description;
		this.imageUrl1 = imageUrl1;
		this.price = price;
		this.givePoints = givePoints;
		this.discountPrice = discountPrice;
		this.isShow = isShow;
		this.purchacePrice = purchacePrice;
		this.attribute = attribute;
		this.imageUrl2 = imageUrl2;
		this.imageUrl3 = imageUrl3;
		this.imageUrl4 = imageUrl4;
		this.imageUrl5 = imageUrl5;
		this.code = code;
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

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "category", nullable = false)
	public Goodscategory getGoodscategory() {
		return this.goodscategory;
	}

	public void setGoodscategory(Goodscategory goodscategory) {
		this.goodscategory = goodscategory;
	}

	@Column(name = "name", nullable = false, length = 20)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "specification", nullable = false, length = 65535)
	public String getSpecification() {
		return this.specification;
	}

	public void setSpecification(String specification) {
		this.specification = specification;
	}

	@Column(name = "description", nullable = false, length = 65535)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "imageUrl1", nullable = false, length = 45)
	public String getImageUrl1() {
		return this.imageUrl1;
	}

	public void setImageUrl1(String imageUrl1) {
		this.imageUrl1 = imageUrl1;
	}

	@Column(name = "price", nullable = false, precision = 11)
	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	@Column(name = "givePoints", nullable = false, length = 45)
	public String getGivePoints() {
		return this.givePoints;
	}

	public void setGivePoints(String givePoints) {
		this.givePoints = givePoints;
	}

	@Column(name = "discountPrice", nullable = false, length = 45)
	public String getDiscountPrice() {
		return this.discountPrice;
	}

	public void setDiscountPrice(String discountPrice) {
		this.discountPrice = discountPrice;
	}

	@Column(name = "isShow", nullable = false)
	public Boolean getIsShow() {
		return this.isShow;
	}

	public void setIsShow(Boolean isShow) {
		this.isShow = isShow;
	}

	@Column(name = "purchacePrice", nullable = false, precision = 11)
	public Double getPurchacePrice() {
		return this.purchacePrice;
	}

	public void setPurchacePrice(Double purchacePrice) {
		this.purchacePrice = purchacePrice;
	}

	@Column(name = "attribute", nullable = false, length = 10)
	public String getAttribute() {
		return this.attribute;
	}

	public void setAttribute(String attribute) {
		this.attribute = attribute;
	}

	@Column(name = "imageUrl2", length = 45)
	public String getImageUrl2() {
		return this.imageUrl2;
	}

	public void setImageUrl2(String imageUrl2) {
		this.imageUrl2 = imageUrl2;
	}

	@Column(name = "imageUrl3", length = 45)
	public String getImageUrl3() {
		return this.imageUrl3;
	}

	public void setImageUrl3(String imageUrl3) {
		this.imageUrl3 = imageUrl3;
	}

	@Column(name = "imageUrl4", length = 45)
	public String getImageUrl4() {
		return this.imageUrl4;
	}

	public void setImageUrl4(String imageUrl4) {
		this.imageUrl4 = imageUrl4;
	}

	@Column(name = "imageUrl5", length = 45)
	public String getImageUrl5() {
		return this.imageUrl5;
	}

	public void setImageUrl5(String imageUrl5) {
		this.imageUrl5 = imageUrl5;
	}

	@Column(name = "code", nullable = false, length = 45)
	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

}