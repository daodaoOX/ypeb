package com.ypeb.model.points.points;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.ypeb.model.points.pointsPublish.Pointspublish;

/**
 * Points entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "points", catalog = "ypeb")
public class Points extends AbstractPoints implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Points() {
	}

	public Points(Pointspublish pointspublish, Integer userId, Double pointNum,
			Timestamp time, Boolean state) {
		super(pointspublish, userId, pointNum, time, state);
		// TODO Auto-generated constructor stub
	}

	/** full constructor */

}
