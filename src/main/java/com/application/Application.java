package com.application;

import com.filter.UrlFilter;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.tomcat.jdbc.pool.DataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;


@ServletComponentScan(basePackages = {"com.filter"})
@SpringBootApplication
@ComponentScan(basePackages = {"com.bean","com.dao","com.controller"})//指定spring管理的bean所在的包
@MapperScan(basePackages = {"com.dao"})//指定mybatis的mapper接口所在的包
public class Application extends SpringBootServletInitializer {

    @Override
    protected  SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(Application.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

    //创建数据源
    @Bean
    @ConfigurationProperties(prefix = "spring.datasource")//指定数据源的前缀 ,在application.properties文件中指定
    public DataSource dataSource() {
        return new DataSource();
    }

    //创建SqlSessionFactory
    @Bean
    public SqlSessionFactory sqlSessionFactory() throws Exception {
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(dataSource());
        PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
        sqlSessionFactoryBean.setMapperLocations(resolver.getResources("classpath:/mybatis/*.xml"));
        return sqlSessionFactoryBean.getObject();
    }




    //创建事物管理器
    @Bean
    public PlatformTransactionManager transactionManager() {

        return new DataSourceTransactionManager(dataSource());
    }


//    @Bean
//    public ServletRegistrationBean servletRegistrationBean(DispatcherServlet dispatcherServlet) {
//        ServletRegistrationBean<DispatcherServlet> servletServletRegistrationBean = new ServletRegistrationBean<>(dispatcherServlet);
//        servletServletRegistrationBean.addUrlMappings("*");
//        return servletServletRegistrationBean;
//    }

    @Bean   //相当于spring中<bean>标签
    public FilterRegistrationBean<UrlFilter> testFilterRegistration() {
        FilterRegistrationBean<UrlFilter> registration = new FilterRegistrationBean<>();
        registration.setFilter(new UrlFilter());
        registration.addUrlPatterns("/*");//配置过滤路径
//        registration.addInitParameter("logonStrings", "messageLb;tzLb;login.jsp;login;upload.jsp;upload_re.jsp;upload_json.jsp;file_manager_json.jsp;welcome.jsp;index.jsp;reg.jsp;checkUname;Register;movieMsg;movieDetails;skipLogin;skipRegister;Login;reg;checksfz;articlesFont;messageLb;lookvedio;kechenDetails;kechenMsg;demandDetails;demandMsg;anliMsg;anliDetails;login.jsp;login;upload.jsp;upload_re.jsp;upload_json.jsp;file_manager_json.jsp;welcome.jsp;index.jsp;register.jsp;checkUname;Register;Login;activityx;activityLb;tzLb;tzhfLb;upload_json.jsp;checkUname;login;.js;.css;index;.jpg;.ttf;.png;.woff;.gif;loginMember;productDetails;registerMember;addCart;favAdd;commentAdd;msgAdd;upload_re.jsp;.doc;.xlsx;.rar;.avi;.mp4;");
//        registration.setName("MyFilter");//设置filter名称
        //registration.setOrder(1);//请求中过滤器执行的先后顺序，值越小越先执行
        return registration;
    }









}
