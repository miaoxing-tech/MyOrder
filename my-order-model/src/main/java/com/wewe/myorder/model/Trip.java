package com.wewe.myorder.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Id;

/**
 * @author WEWE
 * @date 2017年12月26日
 * @description 行程实体
 */
public class Trip implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name="_ID")
	private String id;
	
	/**
	 * 目的地
	 */
	@Column(name="DESTIN")
	private String destination;
	
	/**
	 * 出发日期
	 */
	@Column(name="START")
	private Date start;
	
	/**
	 * 结束日期
	 */
	@Column(name="END")
	private Date end;
	
	/**
	 * 备注
	 */
	@Column(name="COMMENT")
	private String comment;
}
