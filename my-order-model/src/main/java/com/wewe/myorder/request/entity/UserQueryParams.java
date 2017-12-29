package com.wewe.myorder.request.entity;

public class UserQueryParams {
  
  /**
   * 姓名
   */
  private String username;
  
  /**
   * 手机号
   */
  private String cellphone;
  
  /**
   * 地址
   */
  private String address;
  
  /**
   * 微信号
   */
  private String wechat;
  
  /**
   * 等级
   */
  private Integer level;

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getCellphone() {
    return cellphone;
  }

  public void setCellphone(String cellphone) {
    this.cellphone = cellphone;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public String getWechat() {
    return wechat;
  }

  public void setWechat(String wechat) {
    this.wechat = wechat;
  }

  public Integer getLevel() {
    return level;
  }

  public void setLevel(Integer level) {
    this.level = level;
  }
  
  

}
