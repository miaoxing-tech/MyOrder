package com.wewe.myorder.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;

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

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "_ID")
    private Integer id;

    /**
     * 用户ID
     */
    @Column(name = "USER")
    private String user;

    /**
     * 商品名称
     */
    @Column(name = "PRODUCT")
    private String product;

    /**
     * 商品品牌
     */
    @Column(name = "BRAND")
    private String brand;

    /**
     * 商品备注
     */
    @Column(name = "COMMENT")
    private String comment;

    /**
     * 单价
     */
    @Column(name = "PRICE")
    private long price;

    /**
     * 总价
     */
    @Column(name = "TOTAL")
    private long total;

    /**
     * 数量
     */
    @Column(name = "QUANTITY")
    private Integer quantity;

    /**
     * 订单状态 1：未发货2：未付款3：已发货4：已完成0：已关闭
     */
    @Column(name = "STATUS")
    private int status;

    /**
     * 所属行程
     */
    @Column(name = "TRIP_ID")
    private int tripID;

    /**
     * 所属秒杀
     */
    @Column(name = "MIAO_ID")
    private int miaoID;

    /**
     * 所属团购
     */
    @Column(name = "TUAN_ID")
    private int tuanID;


}
