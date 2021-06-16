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
import com.bean.Inventory;
import com.bean.Product;
import com.bean.Sysuser;
import com.dao.CategoryDAO;
import com.dao.DiseaseDAO;
import com.dao.InventoryDAO;
import com.dao.ProductDAO;
import com.dao.SysuserDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;

import java.util.*;

@Controller
public class InventoryController extends BaseController {

	@Resource
	InventoryDAO inventoryDAO;
	@Resource
	ProductDAO productDAO;
	@Resource
	CategoryDAO categoryDAO;
	@Resource
	SysuserDAO sysuserDAO;
	
	//库存列表
	@ResponseBody
	@RequestMapping("admin/inventoryList")
	public HashMap<String,Object> inventoryList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		String key = request.getParameter("key");
		String flag = request.getParameter("flag");
		String categoryid = request.getParameter("categoryid");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		map.put("flag", flag);
		map.put("categoryid", categoryid);
		map.put("delstatus", "0");
		List<Inventory> rlist = inventoryDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<Inventory> list = inventoryDAO.selectAll(map);
		for(Inventory inventory:list){
			Product product = productDAO.findById(Integer.parseInt(inventory.getProductid()));
			Category category = categoryDAO.findById(Integer.parseInt(product.getCategoryid()));
			Sysuser user = sysuserDAO.findById(Integer.parseInt(inventory.getUserid()));
			inventory.setUser(user);
			product.setCategory(category);
			inventory.setProduct(product);
					
		}
		PageInfo<Inventory> pageInfo = new PageInfo<Inventory>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", rlist);
		return res;
	}
		
	
	//添加库存
	@ResponseBody
	@RequestMapping("admin/inventoryAdd")
	public HashMap<String,Object> inventoryAdd(Inventory inventory ,HttpServletRequest request) {
		Sysuser user = (Sysuser)request.getSession().getAttribute("admin");
		inventory.setUserid(String.valueOf(user.getId()));
		inventory.setSavetime(Info.getDateStr());
		inventory.setFlag("in");
		inventory.setDelstatus("0");
		inventoryDAO.add(inventory);
		return null;
	}
	
	//删除记录
	@ResponseBody
	@RequestMapping("admin/inventoryDel")
	public HashMap<String,Object> inventoryDel(int id ,HttpServletRequest request) {
		Inventory inventory = inventoryDAO.findById(id);
		inventory.setDelstatus("1");
		inventoryDAO.update(inventory);
		return null;
	}
	
	

}
