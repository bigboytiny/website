package com.gana.dal.repository;


import com.alibaba.fastjson.JSON;
import com.gana.BaseTest;
import org.junit.Test;

import javax.annotation.Resource;

/**
 * 上海信也科技有限公司
 *
 * @program: website
 * @description:
 * @author: zoujie01
 * @create: 2020/9/15 13:17
 */
public class ProductTypeRepositoryTest extends BaseTest {

    @Resource
    private ProductTypeRepository productTypeRepository;

    @Test
    public void queryByName() {
        System.out.println(JSON.toJSONString(productTypeRepository.queryByName("test")));
    }
}