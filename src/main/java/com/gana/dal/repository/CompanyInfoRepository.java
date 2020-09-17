package com.gana.dal.repository;

import com.baomidou.mybatisplus.extension.service.IService;
import com.gana.dal.entity.CompanyInfo;

/**
 * <p>
 * 公司详情 服务类
 * </p>
 *
 * @author jesse
 * @since 2020-09-15
 */
public interface CompanyInfoRepository extends IService<CompanyInfo> {
    CompanyInfo queryCompanyInfo();
}
