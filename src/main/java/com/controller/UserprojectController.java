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
import com.bean.Project;
import com.bean.Sysuser;
import com.bean.Userproject;
import com.dao.CategoryDAO;
import com.dao.DiseaseDAO;
import com.dao.HospitalizedDAO;
import com.dao.ProductDAO;
import com.dao.ProjectDAO;
import com.dao.SysuserDAO;
import com.dao.UserprojectDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;

import java.util.*;

@Controller
public class UserprojectController extends BaseController {

	@Resource
	UserprojectDAO userprojectDAO;
	@Resource
	ProjectDAO projectDAO;
	@Resource
	CategoryDAO categoryDAO;
	@Resource
	HospitalizedDAO hospitalizedDAO;
	
	//记账项目列表
	@ResponseBody
	@RequestMapping("admin/userprojectList")
	public HashMap<String,Object> userprojectList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		double total = 0D;
		String key = request.getParameter("key");
		String hospitalizedid = request.getParameter("hospitalizedid");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		map.put("hospitalizedid", hospitalizedid);
		List<Userproject> rlist = userprojectDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<Userproject> list = userprojectDAO.selectAll(map);
		for(Userproject userproject:list){
			Project project = projectDAO.findById(Integer.parseInt(userproject.getProjectid()));
			userproject.setProject(project);
			total+=userproject.getPrice();
		}
		PageInfo<Userproject> pageInfo = new PageInfo<Userproject>(list);
		res.put("pageInfo", pageInfo);
		res.put("total", total);
		res.put("list", rlist);
		return res;
	}
		
	
	//添加记账项目
	@ResponseBody
	@RequestMapping("admin/userprojectAdd")
	public HashMap<String,Object> userprojectAdd(Userproject userproject ,HttpServletRequest request) {
		userproject.setSavetime(Info.getDateStr());
		Project project = projectDAO.findById(Integer.parseInt(userproject.getProjectid()));
		Hospitalized hospitalized = hospitalizedDAO.findById(Integer.parseInt(userproject.getHospitalizedid()));
		double projecttotal = hospitalized.getProjecttotal()+project.getPrice();
		
		hospitalized.setProjecttotal(projecttotal);
		hospitalizedDAO.update(hospitalized);
		userproject.setPrice(project.getPrice());
		userprojectDAO.add(userproject);
		return null;
	}
	
	
	
	
	//删除记账项目
	@ResponseBody
	@RequestMapping("admin/userprojectDel")
	public HashMap<String,Object> userprojectDel(int id,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		String hospitalizedid = request.getParameter("hospitalizedid");
		Hospitalized hospitalized = hospitalizedDAO.findById(Integer.parseInt(hospitalizedid));
		Userproject userproject = userprojectDAO.findById(id);
		double nowtotal = hospitalized.getProjecttotal()-userproject.getPrice();
		hospitalized.setProjecttotal(nowtotal);
		hospitalizedDAO.update(hospitalized);
		userprojectDAO.delete(id);
		res.put("hospitalizedid", hospitalizedid);
		return res;
	}

}
