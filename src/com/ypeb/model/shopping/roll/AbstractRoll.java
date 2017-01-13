package com.ypeb.model.shopping.roll;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

/**
 * AbstractRoll entity provides the base persistence definition of the Roll
 * entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractRoll implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String url;

	// Constructors

	/** default constructor */
	public AbstractRoll() {
	}

	/** full constructor */
	public AbstractRoll(String name, String url) {
		this.name = name;
		this.url = url;
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

	@Column(name = "name", nullable = false, length = 45)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "url", nullable = false, length = 45)
	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}