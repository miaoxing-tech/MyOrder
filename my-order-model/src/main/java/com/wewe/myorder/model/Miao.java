package com.wewe.myorder.model;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;
import java.util.Date;

/**
 * @author WEWE
 * @date 2017年12月26日
 * @description 秒杀
 */
public class Miao implements Serializable {
    /**
     *
     */
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "_ID")
    private String id;

    /**
     * 开始时间
     */
    @Column(name = "START")
    private Date start;

    /**
     * 结束时间
     */
    @Column(name = "END")
    private Date end;

    /**
     * 备注
     */
    @Column(name = "COMMENT")
    private String comment;

}
