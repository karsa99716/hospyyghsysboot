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

import com.bean.Category;
import com.bean.Disease;
import com.bean.Sysuser;
import com.dao.CategoryDAO;
import com.dao.DiseaseDAO;
import com.dao.SysuserDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;

import java.util.*;

@Controller
public class CategoryController extends BaseController {

	@Resource
	CategoryDAO categoryDAO;
	
	
	//药品分类列表
	@ResponseBody
	@RequestMapping("admin/categoryList")
	public HashMap<String,Object> categoryList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		List<Category> categorylist = categoryDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<Category> list = categoryDAO.selectAll(map);
		PageInfo<Category> pageInfo = new PageInfo<Category>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", categorylist);
		return res;
	}
		
	
	//添加药品分类
	@ResponseBody
	@RequestMapping("admin/categoryAdd")
	public HashMap<String,Object> categoryAdd(Category category ,HttpServletRequest request) {
		category.setDelstatus("0");
		categoryDAO.add(category);
		return null;
	}
	
	//编辑药品分类
	@ResponseBody
	@RequestMapping("admin/categoryShow")
	public HashMap<String,Object> categoryShow(int id,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		Category category = categoryDAO.findById(id);
		res.put("category", category);
		return res;
	}
	
	//编辑药品分类
	@ResponseBody
	@RequestMapping("admin/categoryEdit")
	public HashMap<String,Object> categoryEdit(Category category ,HttpServletRequest request) {
		categoryDAO.update(category);
		return null;
	}
	
	//删除药品分类
	@ResponseBody
	@RequestMapping("admin/categoryDel")
	public HashMap<String,Object> categoryDel(HttpServletRequest request) {
		String id = request.getParameter("id");
		Category category = categoryDAO.findById(Integer.parseInt(id));
		category.setDelstatus("1");
		categoryDAO.update(category);
		return null;
	}

}
