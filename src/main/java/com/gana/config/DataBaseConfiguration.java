package com.gana.config;

import com.alibaba.druid.pool.DruidDataSource;
import com.baomidou.mybatisplus.extension.spring.MybatisSqlSessionFactoryBean;
import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.EnvironmentAware;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;
import java.sql.SQLException;

@Configuration
@EnableTransactionManagement(proxyTargetClass = true)
public class DataBaseConfiguration implements EnvironmentAware {

    private Environment environment;

    private String url;

    private String userName;

    private String driverClassName;

    private String password;

    @Override
    public void setEnvironment(Environment environment) {
        this.environment = environment;
    }

    public DruidDataSource createDefaultDruidDataSource() throws SQLException {
        if (StringUtils.isEmpty(url)) {
            url = environment.getProperty("dataSource.url");
        }
        if (StringUtils.isEmpty(userName)) {
            userName = environment.getProperty("dataSource.username");
        }
        if (StringUtils.isEmpty(password)) {
            password = environment.getProperty("dataSource.password");
        }
        if (StringUtils.isEmpty(driverClassName)) {
            driverClassName = environment.getProperty("dataSource.driverClassName");
        }
        DruidDataSource druidDataSource = new DruidDataSource();
        druidDataSource.setMaxWait(60000L);
        druidDataSource.setMaxActive(100);
        druidDataSource.setInitialSize(5);
        druidDataSource.setMinIdle(1);
        druidDataSource.setTimeBetweenEvictionRunsMillis(3000L);
        druidDataSource.setMinEvictableIdleTimeMillis(300000L);
        druidDataSource.setConnectionProperties("druid.stat.slowSqlMillis=3000");
        druidDataSource.setValidationQuery("SELECT 'x'");
        druidDataSource.setTestWhileIdle(true);
        druidDataSource.setTestOnBorrow(false);
        druidDataSource.setTestOnBorrow(false);
        druidDataSource.setFilters("wall");
        druidDataSource.setUsername(userName);
        druidDataSource.setUrl(url);
        druidDataSource.setDriverClassName(driverClassName);
        druidDataSource.setPassword(password);
        return druidDataSource;
    }

    /**
     * 配置数据源
     */
    @Bean(name = "dataSource", initMethod = "init", destroyMethod = "close")
    public DataSource getDataSource() throws SQLException {
        return createDefaultDruidDataSource();
    }


    /**
     * 事物管理器配置
     */
    @Bean(name = "transactionManager")
    public PlatformTransactionManager transactionManager() throws Exception {
        return new DataSourceTransactionManager(getDataSource());
    }
}
