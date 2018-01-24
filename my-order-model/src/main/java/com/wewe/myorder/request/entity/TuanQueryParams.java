package com.wewe.myorder.request.entity;

public class TuanQueryParams {
  
  private String name;

  /**
   * 商品名称
   */
  private String product;

  /**
   * 商品品牌
   */
  private String brand;

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
  
  

}
