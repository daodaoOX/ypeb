package com.ypeb.model.trade.pointsSale;

import java.sql.Timestamp;

/**
 * Pointssale entity. @author MyEclipse Persistence Tools
 */
public class Pointssale extends AbstractPointssale implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Pointssale() {
	}

	/** full constructor */
	public Pointssale(Integer saleId, Timestamp time, Double num, Double price,
			Double allPrice, Short state, Short residue, Short selectAll) {
		super(saleId, time, num, price, allPrice, state, residue, selectAll);
	}

}
