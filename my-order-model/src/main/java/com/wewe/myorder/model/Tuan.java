package com.wewe.myorder.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Id;

/**
 * @author WEWE
 * @date 2017年12月26日
 * @description 团购实体
 */
public class Tuan implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name="_ID")
	private String id;
	
	/**
	 * 商品名称
	 */
	@Column(name="PRODUCT")
	private String product;
	
	/**
	 * 商品品牌
	 */
	@Column(name="BRAND")
	private String brand;
	
	/**
	 * 商品备注
	 */
	@Column(name="COMMENT")
	private String comment;
	
	/**
	 * 单价
	 */
	@Column(name="PRICE")
	private long price;

}
