package com.ypeb.model.points.setting;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Setting entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "setting", catalog = "ypeb")
public class Setting extends AbstractSetting implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Setting() {
	}

	/** full constructor */
	public Setting(Double price, Short month, Short giveDays,
			Short consumeDays, Double withdrawRate, Double firstAward,
			Double secondAward, Integer maxPoints, Double feedbackAward) {
		super(price, month, giveDays, consumeDays, withdrawRate, firstAward,
				secondAward, maxPoints, feedbackAward);
	}

}
