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
import com.dao.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.CheckCode;
import com.util.Info;

import java.util.*;

@Controller
public class RegistrationController extends BaseController {

	@Resource
	RegistrationDAO registrationDAO;
	@Resource
	OfficeDAO officeDAO;
	@Resource
	PrescriptionDAO prescriptionDAO;
	@Resource
	ProjectjcDAO projectjcDAO;
	@Resource
	SysuserDAO sysuserDAO;
	@Resource
	DoctorpbDAO doctorpbDAO;
	@Resource
	PrescriptionmsgDAO prescriptionmsgDAO;
	@Resource
	ProjectjcmsgDAO pojectjcmsgDAO;
	@Resource
	ProductDAO productDAO;
	@Resource
	ProjectDAO projectDAO;
	@Resource
	ProjectjcmsgDAO projectjcmsgDAO;
	@Resource
	DoctorpjDAO doctorpjDAO;

	//挂号列表
	@ResponseBody
	@RequestMapping("admin/registrationList")
	public HashMap<String,Object> registrationList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		Sysuser user = (Sysuser)request.getSession().getAttribute("admin");
		Sysuser member = (Sysuser)request.getSession().getAttribute("member");
		String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		HashMap<String,String>  prescriptmap = new HashMap<String,String>();
		map.put("key", key);
		map.put("isgh", "isgh");
		if(user!=null){
			map.put("doctorid", String.valueOf(user.getId()));
		}
		List<Registration> rlist = registrationDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<Registration> list = registrationDAO.selectAll(map);
		boolean isjf = true;
		for(Registration registration:list){
			prescriptmap.put("ddno", registration.getDdno());
			prescriptmap.put("ishj", "yes");
			Office office = officeDAO.findById(Integer.parseInt(registration.getOfficeid()));
			registration.setOffice(office);
			
			//是否划价
			List<Prescription> prescriptionlist = prescriptionDAO.selectAll(prescriptmap);
			registration.setPrescriptionlist(prescriptionlist);

			
			//是否划价
			List<Projectjc> projectjclist = projectjcDAO.selectAll(prescriptmap);
			registration.setProjectjclist(projectjclist);

			
			//设置患者信息
			Sysuser mmm = sysuserDAO.findById(Integer.parseInt(registration.getMemberid()));
			registration.setMember(mmm);

			//设置医生信息
			Sysuser doctor = sysuserDAO.findById(registration.getDoctorid());
			registration.setDoctor(doctor);

			registration.setDoctorpb(doctorpbDAO.findById(registration.getHyid()));

			double totalcf = 0D;
			double totaljcjy = 0D;

			HashMap m1 = new HashMap();
			m1.put("ddno",registration.getDdno());
			List<Prescriptionmsg> cflist = prescriptionmsgDAO.selectAll(m1);
			for(Prescriptionmsg p:cflist){
				Product product = productDAO.findById(Integer.valueOf(p.getProductid()));
				totalcf+=product.getSaleprice()*p.getNum();

			}
			List<Projectjcmsg> jcjylist = projectjcmsgDAO.selectAll(m1);
			for(Projectjcmsg p:jcjylist){
				Project project = projectDAO.findById(Integer.valueOf(p.getProjectid()));
				totaljcjy+=project.getPrice()*p.getNum();
			}
			registration.setTotal(totalcf+totaljcjy);



		}
		PageInfo<Registration> pageInfo = new PageInfo<Registration>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", rlist);
		return res;
	}


	//挂号列表
	@ResponseBody
	@RequestMapping("admin/registrationListformb")
	public HashMap<String,Object> registrationListformb(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		Sysuser user = (Sysuser)request.getSession().getAttribute("admin");
		Sysuser member = (Sysuser)request.getSession().getAttribute("member");
		String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		HashMap<String,String>  prescriptmap = new HashMap<String,String>();
		map.put("key", key);
		map.put("isgh", "isgh");
		if(member!=null){
			map.put("memberid", String.valueOf(member.getId()));
		}
		List<Registration> rlist = registrationDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<Registration> list = registrationDAO.selectAll(map);
		boolean isjf = true;
		for(Registration registration:list){
			prescriptmap.put("ddno", registration.getDdno());
			prescriptmap.put("ishj", "yes");
			Office office = officeDAO.findById(Integer.parseInt(registration.getOfficeid()));
			registration.setOffice(office);

			//是否划价
			List<Prescription> prescriptionlist = prescriptionDAO.selectAll(prescriptmap);
			registration.setPrescriptionlist(prescriptionlist);


			//是否划价
			List<Projectjc> projectjclist = projectjcDAO.selectAll(prescriptmap);
			registration.setProjectjclist(projectjclist);


			//设置患者信息
			Sysuser mmm = sysuserDAO.findById(Integer.parseInt(registration.getMemberid()));
			registration.setMember(mmm);

			//设置医生信息
			Sysuser doctor = sysuserDAO.findById(registration.getDoctorid());
			registration.setDoctor(doctor);

			registration.setDoctorpb(doctorpbDAO.findById(registration.getHyid()));

			double totalcf = 0D;
			double totaljcjy = 0D;

			HashMap m1 = new HashMap();
			m1.put("ddno",registration.getDdno());
			List<Prescriptionmsg> cflist = prescriptionmsgDAO.selectAll(m1);
			for(Prescriptionmsg p:cflist){
				Product product = productDAO.findById(Integer.valueOf(p.getProductid()));
				totalcf+=product.getSaleprice()*p.getNum();

			}
			List<Projectjcmsg> jcjylist = projectjcmsgDAO.selectAll(m1);
			for(Projectjcmsg p:jcjylist){
				Project project = projectDAO.findById(Integer.valueOf(p.getProjectid()));
				totaljcjy+=project.getPrice()*p.getNum();
			}
			registration.setTotal(totalcf+totaljcjy);

			//评价记录
			HashMap rmap = new HashMap();
			rmap.put("regid",registration.getId());
			registration.setDoctorpjlist(doctorpjDAO.selectAll(rmap));


		}
		PageInfo<Registration> pageInfo = new PageInfo<Registration>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", rlist);
		return res;
	}

		//查询 费用
		@ResponseBody
		@RequestMapping("admin/checkfee")
		public HashMap<String,Object> checkfee(HttpServletRequest request){
			String ddno = request.getParameter("ddno");
			double totalcf = 0D;
			double totaljcjy = 0D;
			HashMap m1 = new HashMap();
			m1.put("ddno",ddno);
			List<Prescriptionmsg> cflist = prescriptionmsgDAO.selectAll(m1);
			for(Prescriptionmsg p:cflist){
				Product product = productDAO.findById(Integer.valueOf(p.getProductid()));
				totalcf+=product.getSaleprice()*p.getNum();

			}
			List<Projectjcmsg> jcjylist = projectjcmsgDAO.selectAll(m1);
			for(Projectjcmsg p:jcjylist){
				Project project = projectDAO.findById(Integer.valueOf(p.getProjectid()));
				totaljcjy+=project.getPrice()*p.getNum();
			}
			HashMap<String,Object> res = new HashMap<String,Object>();
			res.put("fee", totalcf+totaljcjy);
			System.out.println("f---"+totalcf+totaljcjy);
			return res;
		}

	//缴 费用
	@ResponseBody
	@RequestMapping("admin/pay")
	public HashMap<String,Object> pay(HttpServletRequest request){
		String ddno = request.getParameter("ddno");
		double totalcf = 0D;
		double totaljcjy = 0D;
		HashMap m1 = new HashMap();
		m1.put("ddno",ddno);
		List<Prescription> cflist = prescriptionDAO.selectAll(m1);
		for(Prescription p:cflist){
			p.setIshj("yes");
			prescriptionDAO.update(p);
		}
		List<Projectjc> jcjylist = projectjcDAO.selectAll(m1);
		for(Projectjc p:jcjylist){
			p.setIshj("yes");
			projectjcDAO.update(p);
		}
		HashMap<String,Object> res = new HashMap<String,Object>();
		return res;
	}


	
	//挂号列表
	@ResponseBody
	@RequestMapping("admin/registrationNum")
	public HashMap<String,Object> registrationNum(HttpServletRequest request){
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("savetime", Info.getDateStr().substring(0,10));
		List<Registration> list = registrationDAO.selectAll(map);
		res.put("registrationlist", list);
		return res;
	}
	//添加挂号
	@ResponseBody
	@RequestMapping("admin/registrationAdd")
	public HashMap<String,Object> registrationAdd(Registration registration ,HttpServletRequest request) {
		CheckCode cc = new CheckCode();
		registration.setDelstatus("0");
		registration.setSavetime(Info.getDateStr());
		registration.setDdno(cc.getCheckCode());
		registrationDAO.add(registration);
		return null;
	}

	//预约挂号 前取挂号费
	@ResponseBody
	@RequestMapping("admin/checkghfee")
	public HashMap<String,Object> checkghfee(Registration registration ,HttpServletRequest request) {
		String pbdate = request.getParameter("pbdate");
		String wb = request.getParameter("wb");
		HashMap<String,String> map = new HashMap<String,String>();
		HashMap<String,Object> res = new HashMap<String,Object>();
		map.put("pbdate",pbdate);
		map.put("wb",wb);
		map.put("status","0");
		List<Doctorpb> pblist = doctorpbDAO.selectAll(map);
		if(pblist.size()>0){
			Doctorpb doctorpb = pblist.get(0);
			res.put("fee",doctorpb.getFee());
			System.out.println("ffff="+doctorpb.getFee());
			res.put("data", 200);
		}else{
			res.put("data", 400);
		}
		return res;
	}

	//预约挂号
	@ResponseBody
	@RequestMapping("admin/yyAdd")
	public HashMap<String,Object> yyAdd(Registration registration ,HttpServletRequest request) {
		String pbdate = request.getParameter("pbdate");
		String wb = request.getParameter("wb");
		HashMap<String,String> map = new HashMap<String,String>();
		HashMap<String,Object> res = new HashMap<String,Object>();
		map.put("doctorid",String.valueOf(registration.getDoctorid()));
		map.put("pbdate",pbdate);
		map.put("wb",wb);
		map.put("status","0");
		List<Doctorpb> pblist = doctorpbDAO.selectAll(map);
		if(pblist.size()>0){
			Doctorpb doctorpb = pblist.get(0);
			registration.setHyid(doctorpb.getId());
			registration.setPrice(BigDecimal.valueOf(Double.valueOf(doctorpb.getFee())));
			registration.setCosttotal(Double.valueOf(doctorpb.getFee()));
			CheckCode cc = new CheckCode();
			registration.setDelstatus("0");
			registration.setSavetime(Info.getDateStr());
			registration.setDdno(cc.getCheckCode());
			registrationDAO.add(registration);

			doctorpb.setStatus(1);
			doctorpbDAO.update(doctorpb);
			res.put("data", 200);
		}else{
			res.put("data", 400);
		}
		return res;
	}
	
	
	//查找患者
	@ResponseBody
	@RequestMapping("admin/registrationShow")
	public HashMap<String,Object> registrationShow(HttpServletRequest request) {
		String id = request.getParameter("id");
		HashMap<String,Object> res = new HashMap<String,Object>();
		Registration registration = registrationDAO.findById(Integer.parseInt(id));
		//设置患者信息
		Sysuser member = sysuserDAO.findById(Integer.parseInt(registration.getMemberid()));
		registration.setMember(member);
		Office office = officeDAO.findById(Integer.parseInt(registration.getOfficeid()));
		registration.setOffice(office);
		res.put("registration", registration);
		return res;
	}
	
	
	
	//查看病历
	@ResponseBody
	@RequestMapping("admin/registrationContentShow")
	public HashMap<String,Object> registrationContentShow(int id ,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		Registration rs = registrationDAO.findById(id);
		res.put("registration", rs);
		return res;
	}
	
	//编辑挂号
	@ResponseBody
	@RequestMapping("admin/registrationUpdate")
	public HashMap<String,Object> registrationUpdate(Registration registration ,HttpServletRequest request) {
		registrationDAO.update(registration);
		return null;
	}
	
	//删除挂号
	@ResponseBody
	@RequestMapping("admin/registrationDel")
	public HashMap<String,Object> registrationDel(HttpServletRequest request) {
		String id = request.getParameter("id");
		Registration registration = registrationDAO.findById(Integer.parseInt(id));
		registration.setDelstatus("1");
		registrationDAO.update(registration);
		return null;
	}

	
	//患者列表
	@ResponseBody
	@RequestMapping("admin/huanzheList")
	public HashMap<String,Object> huanzheList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request){
		String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		PageHelper.startPage(pageNum, 10);
		List<Registration> list = registrationDAO.selectAll(map);
		PageInfo<Registration> pageInfo = new PageInfo<Registration>(list);
		res.put("pageInfo", pageInfo);
		return res;
	}
	
	//验证用户名
	@ResponseBody
	@RequestMapping("admin/yzUname")
	public HashMap<String,Object> yzUname(HttpServletRequest request){
		String uname = request.getParameter("uname");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("uname", uname);
		List<Registration> list = registrationDAO.selectAll(map);
		if(list.size()==0){
			res.put("data", 200);
		}else{
			res.put("data", 400);
		}
		return res;
	}

	//获取统计数据
	@ResponseBody
	@RequestMapping("admin/getTj")
	public HashMap<String,Object> getTj(HttpServletRequest request){
		String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		String xdata = "[";
		String ydata = "[";
		List<Registration> list = registrationDAO.selectTj(map);
		for (int i=0;i<list.size();i++) {
			Registration t = list.get(i);
			ydata += "'"+t.getRq()+"'";
			xdata += t.getSl();
			if(i < list.size()-1){
				ydata += ",";
				xdata += ",";
			}
		}
		xdata += "]";
		ydata += "]";
		res.put("xdata", xdata);
		res.put("ydata", ydata);
		System.out.println(xdata+"--"+ydata);
		return res;
	}
	
	
}
