package com.wewe.myorder.request.entity;

public class OrderQueryParams {
  
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
   * 订单状态 1：未付款2：未发货3：已发货4：已完成0：已关闭
   */
  private Integer status;

  /**
   * 所属行程
   */
  private Integer tripID;

  /**
   * 所属秒杀
   */
  private Integer seckillID;

  /**
   * 所属团购
   */
  private Integer tuanID;

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

  public Integer getStatus() {
    return status;
  }

  public void setStatus(Integer status) {
    this.status = status;
  }

  public Integer getTripID() {
    return tripID;
  }

  public void setTripID(Integer tripID) {
    this.tripID = tripID;
  }

  public Integer getSeckillID() {
    return seckillID;
  }

  public void setSeckillID(Integer seckillID) {
    this.seckillID = seckillID;
  }

  public Integer getTuanID() {
    return tuanID;
  }

  public void setTuanID(Integer tuanID) {
    this.tuanID = tuanID;
  }
  
  

}
