package com.filter;


import com.bean.Sysuser;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import java.io.IOException;
@WebFilter(filterName = "MyFilter")
public class UrlFilter implements Filter {
    public FilterConfig config;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        config = filterConfig;
        //System.out.println("----------------------->过滤器被创建");
    }

    public static boolean isContains(String container, String[] regx) {
        boolean result = false;

        for (int i = 0; i < regx.length; i++) {
            if (container.indexOf(regx[i]) != -1) {
                return true;
            }
        }
        return result;
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse res = (HttpServletResponse) servletResponse;
        HttpServletResponseWrapper wrapper = new HttpServletResponseWrapper(
                (HttpServletResponse) res);

        String requestURI = req.getRequestURI();
//        System.out.println("--------------------->过滤器：请求地址"+requestURI);

//        String logonStrings = config.getInitParameter("logonStrings");// -登录登陆页面
//        String[] logonList = logonStrings.split(";");
        //System.out.println("logonStrings--------------------->"+logonStrings);
        Sysuser admin = (Sysuser) req.getSession().getAttribute("admin");
        //req.getSession().removeAttribute("admin");
        //System.out.println("admin====="+admin);
        //System.out.println("member====="+member);
        //req.getSession().removeAttribute("member");
        //System.out.println("member======================================"+member);
        //System.out.println("admin======================================"+admin);

        //仅仅对指定过滤參数后缀进行过滤

//        if (!this.isContains(req.getRequestURI(),logonList)) {
//
//            if(requestURI.contains("admin")&&admin==null){
//                res.sendRedirect("/hospyyghsysboot/home/index.html");
//                return;
//            }
//            if(!requestURI.contains("admin") ){
//                if(requestURI.contains("productLb")||requestURI.contains("seatinfoAdd")){
//                    res.sendRedirect("/hospyyghsysboot/login.jsp");
//                }else{
//                    res.sendRedirect("/hospyyghsysboot/index");
//                }
//                return;
//            }
//        }
        filterChain.doFilter(req, res);
    }

    @Override
    public void destroy() {

       // System.out.println("----------------------->过滤器被销毁");
    }


}
