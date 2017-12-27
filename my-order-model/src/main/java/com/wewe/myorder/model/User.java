package com.wewe.myorder.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Id;

public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name="_ID")
	private String id;
	
	/**
	 * 姓名
	 */
	@Column(name="USERNAME")
	private String username;
	
	/**
	 * 手机号
	 */
	@Column(name="CELLPHONE")
	private String cellphone;
	
	/**
	 * 地址
	 */
	@Column(name="ADDRESS")
	private String address;
	
	/**
	 * 微信号
	 */
	@Column(name="WECHAT")
	private String wechat;
	
	/**
	 * 等级
	 */
	@Column(name="LEVEL")
	private int level;

}
