package com.gana.dal.repository.impl;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gana.dal.entity.ProductType;
import com.gana.dal.mapper.ProductTypeMapper;
import com.gana.dal.repository.ProductTypeRepository;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 * 产品种类 服务实现类
 * </p>
 *
 * @author jesse
 * @since 2020-09-15
 */
@Repository
public class ProductTypeRepositoryImpl extends ServiceImpl<ProductTypeMapper, ProductType> implements ProductTypeRepository {

    @Override
    public List<ProductType> queryAll() {
        return this.getBaseMapper().selectList(Wrappers.<ProductType>query().orderByAsc("id"));
    }

    @Override
    public PageInfo<ProductType> queryByPage(int pageNum, int pageSize) {
        // pagehelper
        PageInfo<ProductType> info = PageHelper.startPage(pageNum, pageSize)
                .doSelectPageInfo(() -> this.getBaseMapper().selectList(Wrappers.<ProductType>query().orderByAsc("id")));
        return info;
    }
}
