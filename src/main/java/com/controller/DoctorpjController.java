package com.controller;

import com.bean.Doctorpj;
import com.bean.Msg;
import com.bean.Sysuser;
import com.dao.DoctorpjDAO;
import com.dao.MsgDAO;
import com.dao.RegistrationDAO;
import com.dao.SysuserDAO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

@Controller
public class DoctorpjController extends BaseController {

	@Resource
	DoctorpjDAO doctorpjDAO;
	@Resource
	SysuserDAO sysuserDAO;
	@Resource
	RegistrationDAO registrationDAO;
	//留言列表 患者
	@ResponseBody
	@RequestMapping("admin/doctorpjListForMember")
	public HashMap<String,Object> doctorpjListForMember(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		Sysuser member = (Sysuser)request.getSession().getAttribute("member");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("memberid", String.valueOf(member.getId()));
		List<Doctorpj> msglist = doctorpjDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<Doctorpj> list = doctorpjDAO.selectAll(map);
		for(Doctorpj m:list){
			m.setMember(sysuserDAO.findById(m.getMemberid()));
			m.setDoctor(sysuserDAO.findById(m.getDoctorid()));
		}
		PageInfo<Doctorpj> pageInfo = new PageInfo<Doctorpj>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", msglist);
		return res;
	}

	//评价列表 医生
	@ResponseBody
	@RequestMapping("admin/doctorpjListForDoctor")
	public HashMap<String,Object> doctorpjListForDoctor(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		Sysuser user = (Sysuser)request.getSession().getAttribute("admin");
		String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		if(user.getUsertype().equals("医生")) {
			map.put("doctorid", String.valueOf(user.getId()));
		}
		map.put("key", key);
		List<Doctorpj> msglist = doctorpjDAO.selectAll(map);

		PageHelper.startPage(pageNum, pageSize);
		List<Doctorpj> list = doctorpjDAO.selectAll(map);
		for(Doctorpj m:list){
			m.setMember(sysuserDAO.findById(m.getMemberid()));
			m.setDoctor(sysuserDAO.findById(m.getDoctorid()));
		}
		PageInfo<Doctorpj> pageInfo = new PageInfo<Doctorpj>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", msglist);
		return res;
	}

	//评价列表 医生详情那儿
	@ResponseBody
	@RequestMapping("admin/doctorpjListForDoctorById")
	public HashMap<String,Object> doctorpjListForDoctorById(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		String doctorid = request.getParameter("doctorid");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("doctorid", doctorid);
		List<Doctorpj> msglist = doctorpjDAO.selectAll(map);

		PageHelper.startPage(pageNum, pageSize);
		List<Doctorpj> list = doctorpjDAO.selectAll(map);
		for(Doctorpj m:list){
			m.setMember(sysuserDAO.findById(m.getMemberid()));
			m.setDoctor(sysuserDAO.findById(m.getDoctorid()));
		}
		PageInfo<Doctorpj> pageInfo = new PageInfo<Doctorpj>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", msglist);
		return res;
	}
		
	
	//添加评价
	@ResponseBody
	@RequestMapping("admin/doctorpjAdd")
	public HashMap<String,Object> doctorpjAdd(Doctorpj doctorpj ,HttpServletRequest request) {
		Sysuser member = (Sysuser)request.getSession().getAttribute("member");
		doctorpj.setMemberid(member.getId());
		doctorpj.setSavetime(Info.getDateStr());
		doctorpj.setDoctorid(registrationDAO.findById(doctorpj.getRegid()).getDoctorid());

		doctorpjDAO.add(doctorpj);

		return null;
	}
//
//	//留言回复
//	@ResponseBody
//	@RequestMapping("admin/msgShow")
//	public HashMap<String,Object> msgShow(int id,HttpServletRequest request) {
//		HashMap<String,Object> res = new HashMap<String,Object>();
//		Msg msg = msgDAO.findById(id);
//		res.put("msg", msg);
//		return res;
//	}
//
//	//编辑留言
//	@ResponseBody
//	@RequestMapping("admin/msgEdit")
//	public HashMap<String,Object> msgEdit(Msg msg  ,HttpServletRequest request) {
//		msg.setHftime(Info.getDateStr());
//		msgDAO.update(msg);
//		return null;
//	}
//
	//删除留言
	@ResponseBody
	@RequestMapping("admin/doctorpjDel")
	public HashMap<String,Object> doctorpjDel(HttpServletRequest request) {
		String id = request.getParameter("id");
		doctorpjDAO.delete(Integer.valueOf(id));
		return null;
	}

}
