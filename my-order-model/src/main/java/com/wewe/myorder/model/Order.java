package com.wewe.myorder.model;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.wewe.myorder.common.context.ConstantContext;

/**
 * @author WEWE
 * @date 2017年12月26日
 * @description 订单实体类
 */
public class Order implements Serializable {
  /**
   *
   */
  private static final long serialVersionUID = 1L;

  private int id;

  /**
   * 用户ID
   */
  private String userID;

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
   * 总价
   */
  private double total;

  /**
   * 数量
   */
  private Integer quantity;

  /**
   * 订单状态 1：未付款2：未发货3：已发货4：已完成0：已关闭
   */
  private Integer status;

  /**
   * 所属行程
   */
  private String tripID;

  /**
   * 所属秒杀
   */
  private String seckillID;

  /**
   * 所属团购
   */
  private String tuanID;

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

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getUserID() {
    return userID;
  }

  public void setUserID(String userID) {
    this.userID = userID;
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

  public double getTotal() {
    return total;
  }

  public void setTotal(double total) {
    this.total = total;
  }

  public Integer getQuantity() {
    return quantity;
  }

  public void setQuantity(Integer quantity) {
    this.quantity = quantity;
  }

  public Integer getStatus() {
    return status;
  }

  public void setStatus(Integer status) {
    this.status = status;
  }

  public String getTripID() {
    return tripID;
  }

  public void setTripID(String tripID) {
    this.tripID = tripID;
  }

  public String getSeckillID() {
    return seckillID;
  }

  public void setSeckillID(String seckillID) {
    this.seckillID = seckillID;
  }

  public String getTuanID() {
    return tuanID;
  }

  public void setTuanID(String tuanID) {
    this.tuanID = tuanID;
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
