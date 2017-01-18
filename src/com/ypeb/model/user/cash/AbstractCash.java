package com.ypeb.model.user.cash;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

/**
 * AbstractCash entity provides the base persistence definition of the Cash
 * entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractCash implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer userId;
	private Double num;
	private Timestamp time;
	private Integer operator;
	private Boolean operate;
	private Short state;

	// Constructors

	/** default constructor */
	public AbstractCash() {
	}

	/** full constructor */
	public AbstractCash(Integer userId, Double num, Timestamp time,
			Integer operator, Boolean operate, Short state) {
		this.userId = userId;
		this.num = num;
		this.time = time;
		this.operator = operator;
		this.operate = operate;
		this.state = state;
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

	@Column(name = "num", nullable = false, precision = 10)
	public Double getNum() {
		return this.num;
	}

	public void setNum(Double num) {
		this.num = num;
	}

	@Column(name = "time", nullable = false, length = 19)
	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	@Column(name = "operator", nullable = false)
	public Integer getOperator() {
		return this.operator;
	}

	public void setOperator(Integer operator) {
		this.operator = operator;
	}

	@Column(name = "operate", nullable = false)
	public Boolean getOperate() {
		return this.operate;
	}

	public void setOperate(Boolean operate) {
		this.operate = operate;
	}

	@Column(name = "state", nullable = false)
	public Short getState() {
		return this.state;
	}

	public void setState(Short state) {
		this.state = state;
	}

}