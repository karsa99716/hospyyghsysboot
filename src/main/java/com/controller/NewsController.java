package com.controller;

import javax.annotation.Resource;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.Disease;
import com.bean.News;
import com.bean.Office;
import com.bean.Sysuser;
import com.dao.DiseaseDAO;
import com.dao.NewsDAO;
import com.dao.OfficeDAO;
import com.dao.SysuserDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;

import java.util.*;

@Controller
public class NewsController extends BaseController {

	@Resource
	NewsDAO newsDAO;
	
	
	//资讯列表
	@ResponseBody
	@RequestMapping("admin/newsList")
	public HashMap<String,Object> newsList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		String key = request.getParameter("key");
		String type = request.getParameter("type");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		map.put("type", type);
		List<News> newslist = newsDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<News> list = newsDAO.selectAll(map);
		PageInfo<News> pageInfo = new PageInfo<News>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", newslist);
		return res;
	}
		
	
	//添加资讯
	@ResponseBody
	@RequestMapping("admin/newsAdd")
	public HashMap<String,Object> newsAdd(News news ,HttpServletRequest request) {
		news.setSavetime(Info.getDateStr());
		newsDAO.add(news);
		return null;
	}
	
	//编辑资讯
	@ResponseBody
	@RequestMapping("admin/newsShow")
	public HashMap<String,Object> newsShow(int id,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		News news = newsDAO.findById(id);
		res.put("news", news);
		return res;
	}
	
	//编辑资讯
	@ResponseBody
	@RequestMapping("admin/newsEdit")
	public HashMap<String,Object> newsEdit(News news ,HttpServletRequest request) {
		newsDAO.update(news);
		return null;
	}
	
	//删除资讯
	@ResponseBody
	@RequestMapping("admin/newsDel")
	public HashMap<String,Object> newsDel(HttpServletRequest request) {
		String id = request.getParameter("id");
		newsDAO.delete(Integer.valueOf(id));
		return null;
	}

}
