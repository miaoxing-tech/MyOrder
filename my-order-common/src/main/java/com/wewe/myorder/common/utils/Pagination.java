package com.wewe.myorder.common.utils;

public class Pagination {
  
  private int offset;
  
  private int limit;

  public Pagination(int pageSize, int pageNumber) {
    if (pageSize < 1) pageSize = 10;
    if (pageNumber < 0) pageNumber = 0;
    this.offset = pageNumber * pageSize;
    this.limit = pageSize;
  }

  public int getOffset() {
    return offset;
  }

  public void setOffset(int offset) {
    this.offset = offset;
  }

  public int getLimit() {
    return limit;
  }

  public void setLimit(int limit) {
    this.limit = limit;
  }
  
  

}
