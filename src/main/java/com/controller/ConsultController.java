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

import com.bean.Consult;
import com.bean.Disease;
import com.bean.Sysuser;
import com.dao.ConsultDAO;
import com.dao.DiseaseDAO;
import com.dao.SysuserDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.util.Info;

import java.util.*;

@Controller
public class ConsultController extends BaseController {

	@Resource
	ConsultDAO consultDAO;
	@Resource
	DiseaseDAO diseaseDAO;
	@Resource
	SysuserDAO sysuserDAO;
	
	//查找病症到讨论页面
	@RequestMapping("admin/skipConsult")
	public String skipConsult(int id ,HttpServletRequest request) {
		Disease disease = diseaseDAO.findById(id);
		Sysuser hz  = sysuserDAO.findById(disease.getHzid());
		disease.setHz(hz);
		List<Consult> list = consultDAO.selectAll(id);
		for(Consult consult:list){
			Sysuser sysuser = sysuserDAO.findById(consult.getSid());
			consult.setSysuser(sysuser);
		}
		request.setAttribute("list", list);
		request.setAttribute("disease", disease);
		request.setAttribute("id", id);
		return "consultlist";
	}
	
	//添加诊断建议或咨询
	@RequestMapping("admin/consultAdd")
	public String consultAdd(Consult consult ,HttpServletRequest request) {
		consultDAO.add(consult);
		return "redirect:skipConsult?id="+consult.getDiseaseid();
	}
	
	//删除诊断建议或咨询
	@RequestMapping("admin/consultDel")
	public String consultDel(HttpServletRequest request) {
		String id = request.getParameter("id");
		int diseaseid = Integer.parseInt(request.getParameter("diseaseid"));
		consultDAO.delete(Integer.parseInt(id));
		return "redirect:skipConsult?id="+diseaseid;
	}

}
