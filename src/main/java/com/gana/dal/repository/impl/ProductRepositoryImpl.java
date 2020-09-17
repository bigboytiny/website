package com.gana.dal.repository.impl;

import com.gana.dal.entity.Product;
import com.gana.dal.mapper.ProductMapper;
import com.gana.dal.repository.ProductRepository;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 产品列表 服务实现类
 * </p>
 *
 * @author jesse
 * @since 2020-09-15
 */
@Repository
public class ProductRepositoryImpl extends ServiceImpl<ProductMapper, Product> implements ProductRepository {

}
