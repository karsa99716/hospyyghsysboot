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
import com.dao.DoctorpjDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.OfficeDAO;
import com.dao.SysuserDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;

import java.util.*;

@Controller
public class SysuserController extends BaseController {

	@Resource
	SysuserDAO sysuserDAO;
	@Resource
	OfficeDAO officeDAO;
	@Resource
	DoctorpjDAO doctorpjDAO;
	//登录
	@ResponseBody
	@RequestMapping("admin/Login")
	public HashMap<String, Object> Login(Sysuser sysuser ,HttpServletRequest request) {
		HashMap<String, Object> res = new HashMap<String, Object>();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("username", sysuser.getUsername());
		map.put("userpwd", sysuser.getUserpwd());
		map.put("nothz","y");
		    List<Sysuser> list = sysuserDAO.selectAll(map);
		    if(list.size()==0){
		    	res.put("data", 400);
		    }else{
		    	res.put("data", 200);
		    	request.getSession().setAttribute("admin", list.get(0));
		    }
		return res;
	}
	
	
	//是否登录
	@ResponseBody
	@RequestMapping("admin/checkadmin")
	public HashMap<String, Object> checkadmin(HttpServletRequest request) {
		HashMap<String, Object> res = new HashMap<String, Object>();
		Sysuser admin = (Sysuser)request.getSession().getAttribute("admin");
		if(admin!=null){
			res.put("data", 200);
			Sysuser sysuser = sysuserDAO.findById(admin.getId());
			res.put("admin", sysuser);
		}else{
			res.put("data", 400);
		}
		return res;
	}
	
	//退出
	@ResponseBody
	@RequestMapping("admin/logout")
	public HashMap<String, Object> logout(HttpServletRequest request) {
		request.getSession().removeAttribute("admin");
		return null;
	}

	//登录 患者
	@ResponseBody
	@RequestMapping("admin/memberLogin")
	public HashMap<String, Object> memberLogin(Sysuser sysuser ,HttpServletRequest request) {
		HashMap<String, Object> res = new HashMap<String, Object>();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("username", sysuser.getUsername());
		map.put("userpwd", sysuser.getUserpwd());
		map.put("usertype","患者");
		List<Sysuser> list = sysuserDAO.selectAll(map);
		if(list.size()==0){
			res.put("data", 400);
		}else{
			Sysuser user = list.get(0);
			request.getSession().setAttribute("member", user);
			res.put("data", 200);
		}
		return res;
	}


	//是否登录
	@ResponseBody
	@RequestMapping("admin/checkmember")
	public HashMap<String, Object> checkmember(HttpServletRequest request) {
		HashMap<String, Object> res = new HashMap<String, Object>();
		Sysuser smember = (Sysuser)request.getSession().getAttribute("member");
		if(smember!=null){
			res.put("data", 200);
			Sysuser member = sysuserDAO.findById(smember.getId());
			res.put("member", member);
		}else{
			res.put("data", 400);
		}
		return res;
	}

	//退出
	@ResponseBody
	@RequestMapping("admin/memberlogout")
	public HashMap<String, Object> memberlogout(HttpServletRequest request) {
		request.getSession().removeAttribute("member");
		return null;
	}
	
	//个人信息
	@ResponseBody
	@RequestMapping("admin/adminShow")
	public HashMap<String, Object> adminShow(HttpServletRequest request) {
		HashMap<String, Object> res = new HashMap<String, Object>();
		Sysuser admin = (Sysuser)request.getSession().getAttribute("admin");
		Sysuser user = sysuserDAO.findById(admin.getId());
		res.put("user", user);
		return res;
	}

	//修改密码 前台
	@ResponseBody
	@RequestMapping("admin/memberpasswordedit")
	public HashMap<String,Object> memberpasswordedit(HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		String userpwd = request.getParameter("userpwd");
		String nuserpassword = request.getParameter("nuserpassword");
		Sysuser member = (Sysuser)request.getSession().getAttribute("member");
		Sysuser user = sysuserDAO.findById(member.getId());
		if(userpwd.equals(user.getUserpwd())){
			res.put("data", 200);
			user.setUserpwd(nuserpassword);
			sysuserDAO.update(user);
		}else{
			res.put("data", 400);
		}
		return res;
	}
	
	//个人信息修改
	@ResponseBody
	@RequestMapping("admin/userEdit")
	public HashMap<String, Object> userEdit(Sysuser user,HttpServletRequest request) {
		sysuserDAO.update(user);
		return null;
	}
	
	//修改密码
	@ResponseBody
	@RequestMapping("admin/passwordedit")
	public HashMap<String,Object> passwordedit(HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		String userpwd = request.getParameter("userpwd");
		String nuserpassword = request.getParameter("nuserpassword");
		System.out.println("");
		Sysuser admin = (Sysuser)request.getSession().getAttribute("admin");
		Sysuser user = sysuserDAO.findById(admin.getId());
		if(userpwd.equals(user.getUserpwd())){
			res.put("data", 200);
			user.setUserpwd(nuserpassword);
			sysuserDAO.update(user);
		}else{
			res.put("data", 400);
		}
		return res;
	}
		
	
	//用户列表
	@ResponseBody
	@RequestMapping("admin/memberList")
	public HashMap<String,Object> memberList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		String key = request.getParameter("key");
		String usertype = request.getParameter("usertype");
		String officeid = request.getParameter("officeid");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		map.put("officeid", officeid);
		map.put("usertype", usertype);
		List<Sysuser> memberlist = sysuserDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<Sysuser>  list = sysuserDAO.selectAll(map);
		if(usertype.equals("医生")){
			for(Sysuser user:list){
				Office office = officeDAO.findById(Integer.parseInt(user.getOfficeid()));
				user.setOffice(office);
			}
		}
		PageInfo<Sysuser> pageInfo = new PageInfo<Sysuser>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", memberlist);
		return res;
	}
	//用户列表
	@ResponseBody
	@RequestMapping("admin/memberListForFont")
	public HashMap<String,Object> memberListForFont(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){

		String key = request.getParameter("key");
		String usertype = request.getParameter("usertype");
		String officeid = request.getParameter("officeid");

		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		map.put("officeid", officeid);
		map.put("usertype", "医生");
		List<Sysuser> memberlist = sysuserDAO.selectAll(map);
		System.out.println("memberlist=="+memberlist.size());
		PageHelper.startPage(pageNum, pageSize);
		List<Sysuser>  list= sysuserDAO.selectAll(map);
		if(usertype.equals("医生")){
			for(Sysuser user:list){
				Office office = officeDAO.findById(Integer.parseInt(user.getOfficeid()));
				user.setOffice(office);
			}
		}
		PageInfo<Sysuser> pageInfo = new PageInfo<Sysuser>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", memberlist);
		return res;
	}

	
	
	//医生列表
	@ResponseBody
	@RequestMapping("admin/doctorLb")
	public HashMap<String,Object> doctorLb(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request){
		String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		map.put("usertype", "医生");
		map.put("pc", "pc");
		List<Sysuser> doctorlist = sysuserDAO.selectAll(map);
		PageHelper.startPage(pageNum, 10);
		List<Sysuser> list = sysuserDAO.selectAll(map);
		for(Sysuser user:list){
			Office office = officeDAO.findById(Integer.parseInt(user.getOfficeid()));
			user.setOffice(office);
		}
		PageInfo<Sysuser> pageInfo = new PageInfo<Sysuser>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", doctorlist);
		return res;
	}
	
	//验证登录名唯一性
	@ResponseBody
	@RequestMapping("admin/checkUsername")
	public HashMap<String,Object> checkUsername(HttpServletRequest request,HttpServletResponse response) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String, String> map = new HashMap<String, String>();
		String username = request.getParameter("username");
		map.put("username", username);
		List<Sysuser> list = sysuserDAO.selectAll(map);
		if(list.size()==0){
			res.put("data",200);
		}else{
			res.put("data",400);
		}
		return res;
	}
	
	//添加患者
	@ResponseBody
	@RequestMapping("admin/memberAdd")
	public HashMap<String,Object> memberAdd(Sysuser sysuser,HttpServletRequest request,HttpServletResponse response) {
		sysuser.setSavetime(Info.getDateStr());
		sysuser.setDelstatus("0");
		sysuserDAO.add(sysuser);
		return null;
	}
	
	//查找用户
	@ResponseBody
	@RequestMapping("admin/memberShow")
	public HashMap<String,Object> memberShow(int id,HttpServletRequest request,HttpServletResponse response) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		Sysuser member = sysuserDAO.findById(id);
		if(member.getUsertype().equals("医生")){
			member.setOffice(officeDAO.findById(Integer.valueOf(member.getOfficeid())));
			HashMap m = new HashMap();
			m.put("doctorid",member.getId());
			double total = 0;
			List<Doctorpj> pjlist = doctorpjDAO.selectAll(m);

			double star = 0;
			if(pjlist.size()>0){
				for(Doctorpj d:pjlist){
					total += Integer.valueOf(d.getStar());
				}
				star = total/pjlist.size();
			}
			BigDecimal b = new BigDecimal(star);
			member.setStar(b.setScale(1, BigDecimal.ROUND_HALF_UP).doubleValue());
			System.out.println("star=="+star);
		}
		res.put("member", member);
		return res;
	}
	
	//修改患者信息
	@ResponseBody
	@RequestMapping("admin/memberEdit")
	public HashMap<String,Object> memberEdit(Sysuser member,HttpServletRequest request,HttpServletResponse response) {
		sysuserDAO.update(member);
//		Sysuser smember = (Sysuser)request.getSession().getAttribute("member");
//		if(smember!=null){
//			request.getSession().setAttribute("member", member);
//		}

		return null;
	}
	
	//删除患者
	@ResponseBody
	@RequestMapping("admin/memberDel")
	public HashMap<String,Object> memberDel(int id,HttpServletRequest request,HttpServletResponse response) {
		Sysuser member = (Sysuser)sysuserDAO.findById(id);
		member.setDelstatus("1");
		sysuserDAO.update(member);
		return null;
	}
	
	
	@RequestMapping("admin/updateUpass")
	public String updateUpass(HttpServletRequest request) {
        String oldupass = request.getParameter("oldupass");
        String userpass = request.getParameter("userpass");
        Sysuser s  = (Sysuser)request.getSession().getAttribute("admin");
        Sysuser sysuser = sysuserDAO.findById(s.getId());
        if(sysuser.getUserpwd().equals(oldupass)){
        	sysuser.setUserpwd(userpass);
        	request.setAttribute("suc", "修改成功");
        }else{
        	request.setAttribute("suc", "原密码错误");
        }
		return "updateupass";
	}
	
	//查找登录用户到个人信息页面
	@RequestMapping("admin/showAdmin")
	public String showAdmin(HttpServletRequest request) {
		String msg = request.getParameter("msg");
        Sysuser s  = (Sysuser)request.getSession().getAttribute("admin");
        Sysuser sysuser = sysuserDAO.findById(s.getId());
        request.setAttribute("sysuser", sysuser);
        if(msg!=null){
        request.setAttribute("suc", "编辑成功");	
        }
		return "grinfo";
	}
	
	//更新个人信息
	@RequestMapping("admin/updateAdmin")
	public String updateAdmin(Sysuser sysuser, HttpServletRequest request) {
		return "redirect:showAdmin?msg=msg";
	}
	
	
	
	//注册
	@RequestMapping("admin/Register")
	public String Register(Sysuser sysuser,HttpServletRequest request) {
		sysuser.setDelstatus("0");
		sysuser.setSavetime(Info.getDateStr());
		sysuserDAO.add(sysuser);
		request.setAttribute("suc", "注册成功");
		return "register";
	}
	
	
	
	
	
	
	

}
