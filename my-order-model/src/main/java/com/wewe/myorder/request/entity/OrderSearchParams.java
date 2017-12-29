package com.wewe.myorder.request.entity;

public class OrderSearchParams {
  
  /**
   * 用户ID
   */
  private String user;

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
   * 订单状态 1：未发货2：未付款3：已发货4：已完成0：已关闭
   */
  private int status;

  /**
   * 所属行程
   */
  private int tripID;

  /**
   * 所属秒杀
   */
  private int miaoID;

  /**
   * 所属团购
   */
  private int tuanID;

}
