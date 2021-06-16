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
import com.bean.Project;
import com.bean.Sysuser;
import com.dao.DiseaseDAO;
import com.dao.ProjectDAO;
import com.dao.SysuserDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;

import java.util.*;

@Controller
public class ProjectController extends BaseController {

	@Resource
	ProjectDAO projectDAO;
	
	
	//项目列表
	@ResponseBody
	@RequestMapping("admin/projectList")
	public HashMap<String,Object> projectList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		List<Project> projectlist = projectDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<Project> list = projectDAO.selectAll(map);
		PageInfo<Project> pageInfo = new PageInfo<Project>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", projectlist);
		return res;
	}
		
	
	//添加项目
	@ResponseBody
	@RequestMapping("admin/projectAdd")
	public HashMap<String,Object> projectAdd(Project project ,HttpServletRequest request) {
		project.setDelstatus("0");
		projectDAO.add(project);
		return null;
	}
	
	//编辑项目
	@ResponseBody
	@RequestMapping("admin/projectShow")
	public HashMap<String,Object> projectShow(int id,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		Project project = projectDAO.findById(id);
		res.put("project", project);
		return res;
	}
	
	//编辑项目
	@ResponseBody
	@RequestMapping("admin/projectEdit")
	public HashMap<String,Object> projectEdit(Project project ,HttpServletRequest request) {
		projectDAO.update(project);
		return null;
	}
	
	//删除项目
	@ResponseBody
	@RequestMapping("admin/projectDel")
	public HashMap<String,Object> projectDel(HttpServletRequest request) {
		String id = request.getParameter("id");
		Project project = projectDAO.findById(Integer.parseInt(id));
		project.setDelstatus("1");
		projectDAO.update(project);
		return null;
	}

}
