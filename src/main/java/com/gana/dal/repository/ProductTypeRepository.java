package com.gana.dal.repository;

import com.gana.dal.entity.ProductType;
import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * <p>
 * 产品种类 服务类
 * </p>
 *
 * @author jesse
 * @since 2020-09-15
 */
public interface ProductTypeRepository extends IService<ProductType> {

    List<ProductType> queryAll();

    PageInfo<ProductType> queryByPage(int pageNum, int pageSize);

}
