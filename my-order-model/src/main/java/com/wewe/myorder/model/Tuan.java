package com.wewe.myorder.model;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.wewe.myorder.common.context.ConstantContext;

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

  private String id;

  private String name;

  /**
   * 商品名称
   */
  private String product;

  /**
   * 商品品牌
   */
  private String brand;

  /**
   * 商品备注
   */
  private String comment;

  /**
   * 单价
   */
  private double price;

  /**
   * 创建时间
   */
  @DateTimeFormat(pattern = ConstantContext.DATETIME_PATTERN)
  @JsonFormat(pattern = ConstantContext.DATETIME_PATTERN, timezone = ConstantContext.TIMEZONE)
  private Date createTime;

  /**
   * 更新时间
   */
  @DateTimeFormat(pattern = ConstantContext.DATETIME_PATTERN)
  @JsonFormat(pattern = ConstantContext.DATETIME_PATTERN, timezone = ConstantContext.TIMEZONE)
  private Date updateTime;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getProduct() {
    return product;
  }

  public void setProduct(String product) {
    this.product = product;
  }

  public String getBrand() {
    return brand;
  }

  public void setBrand(String brand) {
    this.brand = brand;
  }

  public String getComment() {
    return comment;
  }

  public void setComment(String comment) {
    this.comment = comment;
  }

  public double getPrice() {
    return price;
  }

  public void setPrice(double price) {
    this.price = price;
  }

  public Date getCreateTime() {
    return createTime;
  }

  public void setCreateTime(Date createTime) {
    this.createTime = createTime;
  }

  public Date getUpdateTime() {
    return updateTime;
  }

  public void setUpdateTime(Date updateTime) {
    this.updateTime = updateTime;
  }
}
