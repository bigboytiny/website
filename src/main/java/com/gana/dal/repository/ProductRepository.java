package com.gana.dal.repository;

import com.baomidou.mybatisplus.extension.service.IService;
import com.gana.dal.entity.Product;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * <p>
 * 产品列表 服务类
 * </p>
 *
 * @author jesse
 * @since 2020-09-15
 */
public interface ProductRepository extends IService<Product> {

    List<Product> queryList(Long productTypeId);

    PageInfo<Product> queryByPage(Long productTypeId, int pageNum, int pageSize);

}
