package com.gana.dal.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;

/**
 * <p>
 * 产品种类
 * </p>
 *
 * @author jesse
 * @since 2020-09-15
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class ProductType implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 类型名称
     */
    private String name;

    /**
     * 类型标题
     */
    private String title;

    /**
     * 类型描述
     */
    private String description;

    /**
     * 备注
     */
    private String remark;

    /**
     * 类型对应图片地址
     */
    private String image;

    /**
     * 点击后跳转地址
     */
    private String targetUrl;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 修改时间
     */
    private Date updateTime;


}
