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
import com.bean.Hospitalized;
import com.bean.Product;
import com.bean.Sysuser;
import com.bean.Userdrug;
import com.dao.CategoryDAO;
import com.dao.DiseaseDAO;
import com.dao.HospitalizedDAO;
import com.dao.ProductDAO;
import com.dao.UserdrugDAO;
import com.dao.SysuserDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;

import java.util.*;

@Controller
public class UserdrugController extends BaseController {

	@Resource
	UserdrugDAO userdrugDAO;
	@Resource
	ProductDAO productDAO;
	@Resource
	CategoryDAO categoryDAO;
	@Resource
	HospitalizedDAO hospitalizedDAO;
	
	//记账药品列表
	@ResponseBody
	@RequestMapping("admin/userdrugList")
	public HashMap<String,Object> userdrugList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		double total = 0D;
		String key = request.getParameter("key");
		String hospitalizedid = request.getParameter("hospitalizedid");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		map.put("hospitalizedid", hospitalizedid);
		List<Userdrug> rlist = userdrugDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<Userdrug> list = userdrugDAO.selectAll(map);
		for(Userdrug userdrug:list){
			Product product = productDAO.findById(Integer.parseInt(userdrug.getProductid()));
			Category category = categoryDAO.findById(Integer.parseInt(product.getCategoryid()));
			product.setCategory(category);
			userdrug.setProduct(product);
			total+=userdrug.getPrice();
		}
		PageInfo<Userdrug> pageInfo = new PageInfo<Userdrug>(list);
		res.put("pageInfo", pageInfo);
		res.put("total", total);
		res.put("list", rlist);
		return res;
	}
		
	
	//添加记账药品
	@ResponseBody
	@RequestMapping("admin/userdrugAdd")
	public HashMap<String,Object> userdrugAdd(Userdrug userdrug ,HttpServletRequest request) {
		userdrug.setSavetime(Info.getDateStr());
		Product product = productDAO.findById(Integer.parseInt(userdrug.getProductid()));
		double price = product.getSaleprice()*userdrug.getNum();
		Hospitalized hospitalized = hospitalizedDAO.findById(Integer.parseInt(userdrug.getHospitalizedid()));
		double yytotal = hospitalized.getYytotal()+price;
		hospitalized.setYytotal(yytotal);
		hospitalizedDAO.update(hospitalized);
		userdrug.setPrice(price);
		userdrugDAO.add(userdrug);
		return null;
	}
	
	
	
	
	//删除记账药品
	@ResponseBody
	@RequestMapping("admin/userdrugDel")
	public HashMap<String,Object> userdrugDel(int id,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		String hospitalizedid = request.getParameter("hospitalizedid");
		Hospitalized hospitalized = hospitalizedDAO.findById(Integer.parseInt(hospitalizedid));
		Userdrug userdrug = userdrugDAO.findById(id);
		double nowtotal = hospitalized.getYytotal()-userdrug.getPrice();
		hospitalized.setYytotal(nowtotal);
		hospitalizedDAO.update(hospitalized);
		userdrugDAO.delete(id);
		res.put("hospitalizedid", hospitalizedid);
		return res;
	}

}
