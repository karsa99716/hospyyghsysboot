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
import com.bean.Sysuser;
import com.bean.Work;
import com.dao.DiseaseDAO;
import com.dao.SysuserDAO;
import com.dao.WorkDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;

import java.util.*;

@Controller
public class WorkController extends BaseController {

	@Resource
	WorkDAO workDAO;
	@Resource
	SysuserDAO sysuserDAO;
	
	//排班列表
	@ResponseBody
	@RequestMapping("admin/workList")
	public HashMap<String,Object> workList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request){
		String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		PageHelper.startPage(pageNum, 10);
		List<Work> list = workDAO.selectAll(map);
		for(Work work:list){
			Sysuser doctor = sysuserDAO.findById(Integer.parseInt(work.getDoctorid()));
			work.setDoctor(doctor);
		}
		PageInfo<Work> pageInfo = new PageInfo<Work>(list);
		res.put("pageInfo", pageInfo);
		return res;
	}
		
	//添加排班
	@ResponseBody
	@RequestMapping("admin/workAdd")
	public HashMap<String,Object> workAdd(Work work,HttpServletRequest request) {
		work.setMondaystr("无班");
		work.setTuesdaystr("无班");
		work.setWednesdaystr("无班");
		work.setThursdaystr("无班");
		work.setFridaystr("无班");
		work.setSaturdaystr("无班");
		work.setSundaystr("无班"); 
		workDAO.add(work);
		return null;
	}
	
	//编辑排班
	@ResponseBody
	@RequestMapping("admin/workShow")
	public HashMap<String,Object> workShow(int id,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		Work work = workDAO.findById(id);
		res.put("work", work);
		return res;
	}
	
	//编辑排班
	@ResponseBody
	@RequestMapping("admin/workEdit")
	public HashMap<String,Object> workEdit(Work work ,HttpServletRequest request) {
		workDAO.update(work);
		return null;
	}
	
	
	//删除排班
	@ResponseBody
	@RequestMapping("admin/workDel")
	public HashMap<String,Object> workDel(int id ,HttpServletRequest request) {
		workDAO.delete(id);
		return null;
	}

}
