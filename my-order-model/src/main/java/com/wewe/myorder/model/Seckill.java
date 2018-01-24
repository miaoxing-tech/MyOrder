package com.wewe.myorder.model;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.wewe.myorder.common.context.ConstantContext;

/**
 * @author WEWE
 * @date 2017年12月26日
 * @description 秒杀
 */
public class Seckill implements Serializable {
  /**
   *
   */
  private static final long serialVersionUID = 1L;

  private String id;

  private String name;

  /**
   * 开始时间
   */
  @DateTimeFormat(pattern = ConstantContext.DATETIME_PATTERN)
  @JsonFormat(pattern = ConstantContext.DATETIME_PATTERN, timezone = ConstantContext.TIMEZONE)
  private Date start;

  /**
   * 结束时间
   */
  @DateTimeFormat(pattern = ConstantContext.DATETIME_PATTERN)
  @JsonFormat(pattern = ConstantContext.DATETIME_PATTERN, timezone = ConstantContext.TIMEZONE)
  private Date end;

  /**
   * 备注
   */
  private String comment;

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

  public Date getStart() {
    return start;
  }

  public void setStart(Date start) {
    this.start = start;
  }

  public Date getEnd() {
    return end;
  }

  public void setEnd(Date end) {
    this.end = end;
  }

  public String getComment() {
    return comment;
  }

  public void setComment(String comment) {
    this.comment = comment;
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

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }
}
