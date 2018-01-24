package com.wewe.myorder.request.entity;

public class TripQueryParams {
  
  private String name;

  /**
   * 目的地
   */
  private String destination;

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getDestination() {
    return destination;
  }

  public void setDestination(String destination) {
    this.destination = destination;
  }
  
  

}
