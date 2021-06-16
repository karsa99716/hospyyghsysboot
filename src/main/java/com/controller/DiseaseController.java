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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bean.Category;
import com.bean.Consult;
import com.bean.Disease;
import com.bean.Sysuser;
import com.dao.CategoryDAO;
import com.dao.ConsultDAO;
import com.dao.DiseaseDAO;
import com.dao.SysuserDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.util.Info;

import java.util.*;

@Controller
public class DiseaseController extends BaseController {

	@Resource
	DiseaseDAO diseaseDAO;
	@Resource
	SysuserDAO sysuserDAO;
	@Resource
	ConsultDAO consultDAO;
	@Resource
	CategoryDAO categoryDAO;
	
	
	//跳转页面
	
	@RequestMapping("admin/skipDisease")
	public String skipDisease(HttpServletRequest request) {
		String flag = request.getParameter("flag");
		List<Category> ctlist = categoryDAO.selectAll(null);
		request.setAttribute("ctlist", ctlist);
		if(flag.equals("add")){
			return "diseaseadd";
		}else{
			String id = request.getParameter("id");
			Disease disease = diseaseDAO.findById(Integer.parseInt(id));
			request.setAttribute("disease", disease);
			return "diseaseedit";
		}
	}
	
	@RequestMapping("disease/gotoAddForm")
	public String gotoAddForm(HttpServletRequest request) {
		return "diseaseadd";
	}
	
	@RequestMapping("admin/diseaseAdd")
	public String updateUpass(HttpServletRequest request,RedirectAttributes redirectAttributes) {
        String part = request.getParameter("part");
        String zz = request.getParameter("zz");
        String sctime = request.getParameter("sctime");
        String delstatus = "0";
        String savetime = Info.getDateStr();
        Sysuser s  = (Sysuser)request.getSession().getAttribute("admin");
        int hzid = s.getId();
        Disease disease = new Disease();
        disease.setHzid(hzid);
        disease.setPart(part);
        disease.setSctime(sctime);
        disease.setZz(zz);
        disease.setDelstatus(delstatus);
        disease.setSavetime(savetime);
        diseaseDAO.add(disease);
        redirectAttributes.addFlashAttribute("message","操作成功");
		return "redirect:skipDisease?flag=add";
	}
	
	//患者症状列表
	@RequestMapping("disease/diseaseList")
	public String diseaseList(HttpServletRequest request) {
        String stime = request.getParameter("stime");
        String etime = request.getParameter("etime");
        Sysuser s  = (Sysuser)request.getSession().getAttribute("admin");
        int hzid = s.getId();
        String index = request.getParameter("index");
	   	int pageindex = 1;
	   	if(index!=null){
	   		 pageindex = Integer.parseInt(index);
	   	}
   	    Page<Object> page = PageHelper.startPage(pageindex,6);
		List<Disease> list = diseaseDAO.selectAll(stime,etime,hzid);
		request.setAttribute("list", list);
		request.setAttribute("index", page.getPageNum());
		request.setAttribute("pages", page.getPages());
		request.setAttribute("total", page.getTotal());
		request.setAttribute("stime", stime);
		request.setAttribute("etime", etime);
		return "diseaseList";
	}
	
	
	@RequestMapping("disease/delete")
	public String delete(HttpServletRequest request) {
		String id = request.getParameter("id");
		List<Consult> list = consultDAO.selectAll(Integer.parseInt(id));
		for(Consult consult:list){
			consultDAO.delete(consult.getId());
		}
		diseaseDAO.delete(Integer.valueOf(id));
		return "redirect:diseaseList";
	}
	
	@RequestMapping("admin/diseaseMsgDel")
	public String diseaseMsgDel(HttpServletRequest request) {
		String id = request.getParameter("id");
		List<Consult> list = consultDAO.selectAll(Integer.parseInt(id));
		for(Consult consult:list){
			consultDAO.delete(consult.getId());
		}
		diseaseDAO.delete(Integer.valueOf(id));
		return "redirect:diseaseMsg";
	}
	
	
	
	//医生查看症状列表
	@RequestMapping("admin/diseaseMsg")
	public String diseaseMsg(HttpServletRequest request) {
        String index = request.getParameter("index");
        String key = request.getParameter("key");
	   	int pageindex = 1;
	   	if(index!=null){
	   		 pageindex = Integer.parseInt(index);
	   	}
	   	HashMap map = new HashMap();
	   	map.put("key", key);
   	    Page<Object> page = PageHelper.startPage(pageindex,6);
		List<Disease> list = diseaseDAO.selectAllMsg(map);
		for(Disease disease:list){
			Sysuser hz = sysuserDAO.findById(disease.getHzid());
			disease.setHz(hz);
		}
		request.setAttribute("list", list);
		request.setAttribute("index", page.getPageNum());
		request.setAttribute("pages", page.getPages());
		request.setAttribute("total", page.getTotal());
		request.setAttribute("key", key);
		return "diseasemsg";
	}
	

}
