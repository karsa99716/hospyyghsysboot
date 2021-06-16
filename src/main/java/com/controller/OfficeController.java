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
import com.bean.Office;
import com.bean.Sysuser;
import com.dao.DiseaseDAO;
import com.dao.OfficeDAO;
import com.dao.SysuserDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;

import java.util.*;

@Controller
public class OfficeController extends BaseController {

	@Resource
	OfficeDAO officeDAO;
	
	
	//科室列表
	@ResponseBody
	@RequestMapping("admin/officeList")
	public HashMap<String,Object> officeList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		String key = request.getParameter("key");
		String bz = request.getParameter("bz");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		map.put("bz", bz);
		List<Office> officelist = officeDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<Office> list = officeDAO.selectAll(map);
		PageInfo<Office> pageInfo = new PageInfo<Office>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", officelist);
		return res;
	}

	//科室列表
	@ResponseBody
	@RequestMapping("admin/officeListAll")
	public HashMap<String,Object> officeListAll(HttpServletRequest request){
		String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		List<Office> list = officeDAO.selectAll(map);
		res.put("list", list);
		System.out.println("list123=="+list.size());
		return res;
	}
		
	
	//添加科室
	@ResponseBody
	@RequestMapping("admin/officeAdd")
	public HashMap<String,Object> officeAdd(Office office ,HttpServletRequest request) {
		office.setDelstatus("0");
		officeDAO.add(office);
		return null;
	}
	
	//编辑科室
	@ResponseBody
	@RequestMapping("admin/officeShow")
	public HashMap<String,Object> officeShow(int id,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		Office office = officeDAO.findById(id);
		res.put("office", office);
		return res;
	}
	
	//编辑科室
	@ResponseBody
	@RequestMapping("admin/officeEdit")
	public HashMap<String,Object> officeEdit(Office office ,HttpServletRequest request) {
		officeDAO.update(office);
		return null;
	}
	
	//删除科室
	@ResponseBody
	@RequestMapping("admin/officeDel")
	public HashMap<String,Object> officeDel(HttpServletRequest request) {
		String id = request.getParameter("id");
		Office office = officeDAO.findById(Integer.parseInt(id));
		office.setDelstatus("1");
		officeDAO.update(office);
		return null;
	}

}
