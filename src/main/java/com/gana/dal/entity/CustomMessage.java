package com.gana.dal.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 客户消息
 * </p>
 *
 * @author jesse
 * @since 2020-09-15
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class CustomMessage implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 客户名称
     */
    private String name;

    /**
     * 客户skype
     */
    private String skype;

    /**
     * 客户email
     */
    private String email;

    /**
     * 客户公司
     */
    private String company;

    /**
     * 消息
     */
    private String message;

    /**
     * 是否处理 Y：已处理，N：未处理
     */
    @TableField("isDone")
    private String isDone;

    /**
     * 创建时间
     */
    private LocalDateTime createTime;

    /**
     * 更新时间
     */
    private LocalDateTime updateTime;


}
