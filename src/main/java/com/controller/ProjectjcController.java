package com.controller;

import javax.annotation.Resource;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.Disease;
import com.bean.Office;
import com.bean.Prescription;
import com.bean.Product;
import com.bean.Project;
import com.bean.Projectjc;
import com.bean.Projectjcmsg;
import com.bean.Registration;
import com.bean.Sysuser;
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
public class ProjectjcController extends BaseController {

	@Resource
	ProjectjcDAO projectjcDAO;
	@Resource
	ProjectDAO projectDAO;
	@Resource
	ProjectjcmsgDAO projectjcmsgDAO;
	@Resource
	RegistrationDAO registrationDAO;
	@Resource
	SysuserDAO sysuserDAO;
	//项目列表
	@ResponseBody
	@RequestMapping("admin/projectjcList")
	public HashMap<String,Object> projectjcList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		String key = request.getParameter("key");
		map.put("ishj", "no");
		map.put("key", key);
		List<Projectjc> rlist = projectjcDAO.selectAll(map);

		PageHelper.startPage(pageNum, pageSize);
		List<Projectjc> list = projectjcDAO.selectAll(map);
		for(Projectjc projectjc:list){
			Registration registration = registrationDAO.findById(Integer.parseInt(projectjc.getRegistid()));
			Sysuser member = sysuserDAO.findById(Integer.parseInt(registration.getMemberid()));
			registration.setMember(member);
			projectjc.setRegistration(registration);
		}

		PageInfo<Projectjc> pageInfo = new PageInfo<Projectjc>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", rlist);
		return res;
	}
	//添加项目
	@ResponseBody
	@RequestMapping("admin/projectjcAdd")
	public HashMap<String,Object> projectjcAdd(Projectjc projectjc ,HttpServletRequest request) {
		String projectid  = request.getParameter("projectid");
		Project project = projectDAO.findById(Integer.parseInt(projectid));
		Sysuser doctor = (Sysuser)request.getSession().getAttribute("admin");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("ddno", projectjc.getDdno());
		List<Projectjc> list = projectjcDAO.selectAll(map);
		if(list.size()==0){
		projectjc.setDoctorid(String.valueOf(doctor.getId()));
		projectjc.setSavetime(Info.getDateStr());
		projectjc.setIshj("no");
		projectjcDAO.add(projectjc);
		}
		Projectjcmsg projectjcmsg = new Projectjcmsg();
		projectjcmsg.setDdno(projectjc.getDdno());
		projectjcmsg.setNum(1);
		double price = project.getPrice();
		projectjcmsg.setPrice(price);
		projectjcmsg.setProjectid(projectid);
		projectjcmsgDAO.add(projectjcmsg);
		return null;
	}
	
	
	//划价
	@ResponseBody
	@RequestMapping("admin/projectjcEdit")
	public HashMap<String,Object> projectjcEdit(HttpServletRequest request){
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		String ddno = request.getParameter("ddno");
		String total = request.getParameter("total");
		map.put("ddno",ddno);
		List<Projectjc> projectjclist = projectjcDAO.selectAll(map);
		Projectjc projectjc = projectjclist.get(0);
		
		
		Registration registration = registrationDAO.findById(Integer.parseInt(projectjc.getRegistid()));
		double costtotal = registration.getCosttotal()+Double.parseDouble(total);
		registration.setCosttotal(costtotal);
		registrationDAO.update(registration);
		
		projectjc.setIshj("yes");
		projectjcDAO.update(projectjc);
		res.put("id", projectjc.getRegistid());
		return res;
	}

}
