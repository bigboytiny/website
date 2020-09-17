package com.gana.dal.repository.impl;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gana.dal.entity.CompanyInfo;
import com.gana.dal.mapper.CompanyInfoMapper;
import com.gana.dal.repository.CompanyInfoRepository;
import org.springframework.stereotype.Repository;

/**
 * <p>
 * 公司详情 服务实现类
 * </p>
 *
 * @author jesse
 * @since 2020-09-15
 */
@Repository
public class CompanyInfoRepositoryImpl extends ServiceImpl<CompanyInfoMapper, CompanyInfo> implements CompanyInfoRepository {

    @Override
    public CompanyInfo queryCompanyInfo() {
        return this.getBaseMapper().selectOne(Wrappers.<CompanyInfo>query().orderByAsc("id"));
    }
}
