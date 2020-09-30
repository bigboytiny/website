package com.gana.dal.repository.impl;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gana.dal.entity.Product;
import com.gana.dal.entity.ProductType;
import com.gana.dal.mapper.ProductMapper;
import com.gana.dal.repository.ProductRepository;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Objects;

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

    @Override
    public List<Product> queryList(Long productTypeId) {
        return this.getBaseMapper().selectList(Wrappers.<Product>query().eq(Objects.nonNull(productTypeId), "type_id", productTypeId));
    }

    @Override
    public PageInfo<Product> queryByPage(Long productTypeId, int pageNum, int pageSize) {
        // pagehelper
        PageInfo<Product> info = PageHelper.startPage(pageNum, pageSize)
                .doSelectPageInfo(() -> this.getBaseMapper().selectList(Wrappers.<Product>query()
                        .eq(Objects.nonNull(productTypeId), "type_id", productTypeId).orderByAsc("id")));
        return info;
    }
}
