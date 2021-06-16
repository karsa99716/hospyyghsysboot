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
import com.bean.Product;
import com.bean.Sysuser;
import com.dao.CategoryDAO;
import com.dao.DiseaseDAO;
import com.dao.ProductDAO;
import com.dao.SysuserDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;

import java.util.*;

@Controller
public class ProductController extends BaseController {

	@Resource
	ProductDAO productDAO;
	@Resource
	CategoryDAO categoryDAO;
	@Resource
	Saveobject saveobject;
	
	
	//药品列表
	@ResponseBody
	@RequestMapping("admin/productList")
	public HashMap<String,Object> productList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		String key = request.getParameter("key");
		String categoryid = request.getParameter("categoryid");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		map.put("categoryid", categoryid);
		List<Product> productlist = productDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<Product> list = productDAO.selectAll(map);
		for(Product product:list){
			Category category = categoryDAO.findById(Integer.parseInt(product.getCategoryid()));
			product.setCategory(category);
			int total = saveobject.getInventoryNum(String.valueOf(product.getId()), request);
			product.setInventorynum(total);
		}
		PageInfo<Product> pageInfo = new PageInfo<Product>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", productlist);

		return res;
	}
		
	
	//添加药品
	@ResponseBody
	@RequestMapping("admin/productAdd")
	public HashMap<String,Object> productAdd(Product product ,HttpServletRequest request) {
		product.setDelstatus("0");
		productDAO.add(product);
		return null;
	}
	
	//编辑药品
	@ResponseBody
	@RequestMapping("admin/productShow")
	public HashMap<String,Object> productShow(int id,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		Product product = productDAO.findById(id);
		res.put("product", product);
		return res;
	}
	
	//编辑药品
	@ResponseBody
	@RequestMapping("admin/productEdit")
	public HashMap<String,Object> productEdit(Product product ,HttpServletRequest request) {
		productDAO.update(product);
		return null;
	}
	
	//删除药品
	@ResponseBody
	@RequestMapping("admin/productDel")
	public HashMap<String,Object> productDel(HttpServletRequest request) {
		String id = request.getParameter("id");
		Product product = productDAO.findById(Integer.parseInt(id));
		product.setDelstatus("1");
		productDAO.update(product);
		return null;
	}

}
