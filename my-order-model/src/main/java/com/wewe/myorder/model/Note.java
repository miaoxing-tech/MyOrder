package com.wewe.myorder.model;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.wewe.myorder.common.context.ConstantContext;

public class Note implements Serializable {
  /**
   *
   */
  private static final long serialVersionUID = 1L;

  private Integer id;

  /**
   * 内容
   */
  private String content;

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

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
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
