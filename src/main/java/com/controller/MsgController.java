package com.controller;

import com.bean.Msg;
import com.bean.News;
import com.bean.Sysuser;
import com.dao.MsgDAO;
import com.dao.NewsDAO;
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
public class MsgController extends BaseController {

	@Resource
	MsgDAO msgDAO;
	@Resource
	SysuserDAO sysuserDAO;
	
	//留言列表 患者
	@ResponseBody
	@RequestMapping("admin/msgListForMember")
	public HashMap<String,Object> msgListForMember(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		Sysuser member = (Sysuser)request.getSession().getAttribute("member");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("memberid", String.valueOf(member.getId()));
		List<Msg> msglist = msgDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<Msg> list = msgDAO.selectAll(map);
		for(Msg m:list){
			m.setMember(sysuserDAO.findById(m.getMemberid()));
			m.setDoctor(sysuserDAO.findById(m.getDoctorid()));
		}
		PageInfo<Msg> pageInfo = new PageInfo<Msg>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", msglist);
		return res;
	}

	//留言列表 医生
	@ResponseBody
	@RequestMapping("admin/msgListForDoctor")
	public HashMap<String,Object> msgListForDoctor(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		Sysuser user = (Sysuser)request.getSession().getAttribute("admin");
		String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("doctorid", String.valueOf(user.getId()));
		map.put("key", key);
		List<Msg> msglist = msgDAO.selectAll(map);

		PageHelper.startPage(pageNum, pageSize);
		List<Msg> list = msgDAO.selectAll(map);
		for(Msg m:list){
			m.setMember(sysuserDAO.findById(m.getMemberid()));
			m.setDoctor(sysuserDAO.findById(m.getDoctorid()));
		}
		PageInfo<Msg> pageInfo = new PageInfo<Msg>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", msglist);
		return res;
	}

	//留言列表 前台医生详情那儿
	@ResponseBody
	@RequestMapping("admin/msgListForDoctorId")
	public HashMap<String,Object> msgListForDoctorId(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,Integer doctorid,HttpServletRequest request){
		String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("doctorid", String.valueOf(doctorid));
		map.put("key", key);
		map.put("yhf", "y");

		List<Msg> msglist = msgDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<Msg> list = msgDAO.selectAll(map);
		System.out.println("b="+list.size());
		for(Msg m:list){
			m.setMember(sysuserDAO.findById(m.getMemberid()));
			m.setDoctor(sysuserDAO.findById(m.getDoctorid()));
		}
		PageInfo<Msg> pageInfo = new PageInfo<Msg>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", msglist);
		return res;
	}
		
	
	//添加留言
	@ResponseBody
	@RequestMapping("admin/msgAdd")
	public HashMap<String,Object> msgAdd(Msg msg ,HttpServletRequest request) {
		Sysuser member = (Sysuser)request.getSession().getAttribute("member");
		msg.setMemberid(member.getId());
		msg.setSavetime(Info.getDateStr());
		msg.setHfnote("");
		msgDAO.add(msg);

		return null;
	}
	
	//留言回复
	@ResponseBody
	@RequestMapping("admin/msgShow")
	public HashMap<String,Object> msgShow(int id,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		Msg msg = msgDAO.findById(id);
		res.put("msg", msg);
		return res;
	}
	
	//编辑留言
	@ResponseBody
	@RequestMapping("admin/msgEdit")
	public HashMap<String,Object> msgEdit(Msg msg  ,HttpServletRequest request) {
		msg.setHftime(Info.getDateStr());
		msgDAO.update(msg);
		return null;
	}
	
	//删除留言
	@ResponseBody
	@RequestMapping("admin/msgDel")
	public HashMap<String,Object> msgDel(HttpServletRequest request) {
		String id = request.getParameter("id");
		msgDAO.delete(Integer.valueOf(id));
		return null;
	}

}
