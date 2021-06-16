package com.controller;

import javax.annotation.Resource;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.*;

import com.bean.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.DiseaseDAO;
import com.dao.OfficeDAO;
import com.dao.ProjectDAO;
import com.dao.ProductDAO;
import com.dao.ProjectjcDAO;
import com.dao.ProjectjcmsgDAO;
import com.dao.RegistrationDAO;
import com.dao.SysuserDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;

import java.util.*;

@Controller
public class ProjectjcmsgController extends BaseController {

	@Resource
	ProjectjcDAO projectjcDAO;
	@Resource
	ProjectDAO projectDAO;
	@Resource
	ProjectjcmsgDAO projectjcmsgDAO;
	@Resource
	RegistrationDAO registrationDAO;
	
	
	//项目列表
	@ResponseBody
	@RequestMapping("admin/projectjcmsgList")
	public HashMap<String,Object> projectjcmsgList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request){
		String ddno = request.getParameter("ddno");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("ddno", ddno);
		List<Projectjcmsg> projectjcmsglist = projectjcmsgDAO.selectAll(map);
		double total = 0D;
		for(Projectjcmsg projectjcmsg:projectjcmsglist){
			Project project = projectDAO.findById(Integer.parseInt(projectjcmsg.getProjectid()));
			projectjcmsg.setProject(project);
			total+=project.getPrice();
		}
		res.put("total", total);
		res.put("projectjcmsglist", projectjcmsglist);
		return res;
	}
	
	
	//projectjcmsgAllDel
	//清空项目
	@ResponseBody
	@RequestMapping("admin/projectjcmsgAllDel")
	public HashMap<String,Object> projectjcmsgAllDel(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request){
		String ddno = request.getParameter("ddno");
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("ddno", ddno);
		List<Projectjcmsg> list = projectjcmsgDAO.selectAll(map);
		for(Projectjcmsg projectjcmsg:list){
			projectjcmsgDAO.delete(projectjcmsg.getId());
		}
		return null;
	}




	//检查检验申请列表
	@ResponseBody
	@RequestMapping("admin/jcjyapplyList")
	public HashMap<String,Object> jcjyapplyList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("ddno", key);
		List<Projectjcmsg> applylist = projectjcmsgDAO.selectAll(map);
		for(Projectjcmsg projectjcmsg:applylist){
			Project project = projectDAO.findById(Integer.parseInt(projectjcmsg.getProjectid()));
			projectjcmsg.setProject(project);
		}


		PageHelper.startPage(pageNum, pageSize);
		List<Projectjcmsg> list = projectjcmsgDAO.selectAll(map);
		for(Projectjcmsg projectjcmsg:list){
			Project project = projectDAO.findById(Integer.parseInt(projectjcmsg.getProjectid()));
			projectjcmsg.setProject(project);
		}
		PageInfo<Projectjcmsg> pageInfo = new PageInfo<Projectjcmsg>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", applylist);
		return res;
	}

	//去录入结果 界面
	@ResponseBody
	@RequestMapping("admin/jcjyresultShow")
	public HashMap<String,Object> newsShow(int id,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		Projectjcmsg projectjcmsg = projectjcmsgDAO.findById(id);
		res.put("apply", projectjcmsg);
		return res;
	}

	//编辑提交
	@ResponseBody
	@RequestMapping("admin/jcjyresultEdit")
	public HashMap<String,Object> newsEdit(Projectjcmsg projectjcmsg ,HttpServletRequest request) {
		projectjcmsgDAO.update(projectjcmsg);
		return null;
	}

}
