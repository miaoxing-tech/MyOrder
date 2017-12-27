package com.wewe.myorder.model;

import java.io.Serializable;
import java.util.Date;

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

    private Integer id;

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
     * 单价
     */
    private long price;

    /**
     * 总价
     */
    private long total;

    /**
     * 数量
     */
    private Integer quantity;

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

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
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

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getTripID() {
        return tripID;
    }

    public void setTripID(int tripID) {
        this.tripID = tripID;
    }

    public int getMiaoID() {
        return miaoID;
    }

    public void setMiaoID(int miaoID) {
        this.miaoID = miaoID;
    }

    public int getTuanID() {
        return tuanID;
    }

    public void setTuanID(int tuanID) {
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
