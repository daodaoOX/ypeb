package com.ypeb.model.trade.pointsSale;

import java.sql.Timestamp;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Pointssale entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "pointssale", catalog = "ypeb")
public class Pointssale extends AbstractPointssale implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Pointssale() {
	}

	/** full constructor */
	public Pointssale(Integer saleId, Timestamp time, Double num, Double price,
			Double allPrice, Short state, Short residue) {
		super(saleId, time, num, price, allPrice, state, residue);
	}

}
