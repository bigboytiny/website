package com.gana.dal.repository.impl;

import com.baomidou.mybatisplus.extension.service.IService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gana.dal.entity.CustomMessage;
import com.gana.dal.mapper.CustomMessageMapper;
import com.gana.dal.repository.CustomMessageRepository;
import org.springframework.stereotype.Repository;

/**
 * <p>
 * 客户消息 服务实现类
 * </p>
 *
 * @author jesse
 * @since 2020-09-15
 */
@Repository
public class CustomMessageRepositoryImpl extends ServiceImpl<CustomMessageMapper, CustomMessage> implements CustomMessageRepository {

}
