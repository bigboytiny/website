package com.gana.dal.entity;

import java.math.BigDecimal;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import java.io.Serializable;
import java.util.Date;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 产品列表
 * </p>
 *
 * @author jesse
 * @since 2020-09-15
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class Product implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * product_type表的主键
     */
    private Long typeId;

    /**
     * 产品名称
     */
    private String productName;

    /**
     * 产品描述
     */
    private String productDesc;

    /**
     * 产品图片地址列表,用|符合隔开
     */
    private String productImages;

    /**
     * HS Code
     */
    private String hsCode;

    /**
     * 产品价格
     */
    private BigDecimal price;

    /**
     * 产品价格单位
     */
    private String priceUnit;

    /**
     * 产品库存
     */
    private Long stock;

    /**
     * 产品规格
     */
    private String specification;

    /**
     * 产品规格图片
     */
    private String specificationImage;

    /**
     * 产品包装规格
     */
    private String pack;

    /**
     * 最小起订数量
     */
    private Long minOrder;

    /**
     * 文件地址
     */
    private String file;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 修改时间
     */
    private Date updateTime;


}
