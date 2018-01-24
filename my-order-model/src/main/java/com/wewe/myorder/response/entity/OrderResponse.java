package com.wewe.myorder.response.entity;

import com.wewe.myorder.model.Order;

public class OrderResponse extends Order {
  
  /** serialVersionUID*/
  private static final long serialVersionUID = 1L;

  private String userName;
  
  private String tripName;
  
  private String tuanName;
  
  private String seckillName;
  
  private String statusText;

  public String getUserName() {
    return userName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }

  public String getTripName() {
    return tripName;
  }

  public void setTripName(String tripName) {
    this.tripName = tripName;
  }

  public String getTuanName() {
    return tuanName;
  }

  public void setTuanName(String tuanName) {
    this.tuanName = tuanName;
  }

  public String getSeckillName() {
    return seckillName;
  }

  public void setSeckillName(String seckillName) {
    this.seckillName = seckillName;
  }

  public String getStatusText() {
    return statusText;
  }

  public void setStatusText(String statusText) {
    this.statusText = statusText;
  }
  
  

}
