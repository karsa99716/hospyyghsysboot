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
import com.bean.Hospitalized;
import com.bean.Inventory;
import com.bean.Office;
import com.bean.Prescriptionmsg;
import com.bean.Registration;
import com.bean.Sysuser;
import com.bean.Userdrug;
import com.dao.DiseaseDAO;
import com.dao.HospitalizedDAO;
import com.dao.InventoryDAO;
import com.dao.OfficeDAO;
import com.dao.RegistrationDAO;
import com.dao.SysuserDAO;
import com.dao.UserdrugDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;

import java.util.*;

@Controller
public class HospitalizedController extends BaseController {

	@Resource
	HospitalizedDAO hospitalizedDAO;
	@Resource
	RegistrationDAO registrationDAO;
	@Resource
	OfficeDAO officeDAO;
	@Resource
	UserdrugDAO userdrugDAO;
	@Resource
	Saveobject saveobject;
	@Resource
	InventoryDAO inventoryDAO;
	@Resource
	SysuserDAO sysuserDAO;
	
	//入院列表
	@ResponseBody
	@RequestMapping("admin/hospitalizedList")
	public HashMap<String,Object> hospitalizedList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		
		Sysuser member = (Sysuser)request.getSession().getAttribute("admin");
		String key = request.getParameter("key");
		String iscy = request.getParameter("iscy");
		double usertotal = 0D;
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		map.put("iscy",iscy);
		if(member.getUsertype().equals("患者")){
		map.put("memberid",String.valueOf(member.getId()));
		}
		System.out.println(map);
		List<Hospitalized> rlist = hospitalizedDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<Hospitalized> list = hospitalizedDAO.selectAll(map);
		System.out.println("list=="+list.size());
		for(Hospitalized hospitalized:list){
			Registration registration = registrationDAO.findById(Integer.parseInt(hospitalized.getRegistid()));
			System.out.println("aaaaaa=="+registration.getMemberid());
			Sysuser mmm = sysuserDAO.findById(Integer.parseInt(registration.getMemberid()));
			registration.setMember(mmm);
			Office office = officeDAO.findById(Integer.parseInt(registration.getOfficeid()));
			registration.setOffice(office);
			hospitalized.setRegistration(registration);
			usertotal+=hospitalized.getYytotal()+hospitalized.getProjecttotal();
			hospitalized.setUsertotal(usertotal);
		}
		PageInfo<Hospitalized> pageInfo = new PageInfo<Hospitalized>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", rlist);
		return res;
	}
		
	
	//添加入院
	@ResponseBody
	@RequestMapping("admin/hospitalizedAdd")
	public HashMap<String,Object> hospitalizedAdd(Hospitalized hospitalized ,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("registid", hospitalized.getRegistid());
		map.put("iscy", "未出院");
		List<Hospitalized> list = hospitalizedDAO.selectAll(map);
		if(list.size()==0){
		hospitalized.setSavetime(Info.getDateStr().substring(0,10));
		hospitalized.setIscy("未出院");
		hospitalizedDAO.add(hospitalized);
		res.put("data", 200);
		}else{
			res.put("data", 400);
		}
		return res;
	}
	
	//编辑入院
	@ResponseBody
	@RequestMapping("admin/hospitalizedShow")
	public HashMap<String,Object> hospitalizedShow(int id,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		Hospitalized hospitalized = hospitalizedDAO.findById(id);
		Registration registration = registrationDAO.findById(Integer.parseInt(hospitalized.getRegistid()));
		Sysuser member = sysuserDAO.findById(Integer.parseInt(registration.getMemberid()));
		registration.setMember(member);
		
		Office office = officeDAO.findById(Integer.parseInt(registration.getOfficeid()));
		registration.setOffice(office);
		hospitalized.setRegistration(registration);
		res.put("hospitalized", hospitalized);
		return res;
	}
	
	//出院
	@ResponseBody
	@RequestMapping("admin/hospitalizedEdit")
	public HashMap<String,Object> hospitalizedEdit(int id ,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		Sysuser user  = (Sysuser)request.getSession().getAttribute("admin");
		Hospitalized hospitalized = hospitalizedDAO.findById(id);
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("hospitalizedid", String.valueOf(id));
		List<Userdrug> userdruglist = userdrugDAO.selectAll(map);
		boolean flag = true;
		for(Userdrug userdrug:userdruglist){
			int num = userdrug.getNum();
			int kc = saveobject.getInventoryNum(userdrug.getProductid(), request);
			if(kc<num){
				flag=false;
				break;
			}
		}
		
		if(flag==true){
			
			for(Userdrug userdrug:userdruglist){
				Inventory inventory = new Inventory();
				inventory.setDelstatus("0");
				inventory.setFlag("out");
				inventory.setProductid(userdrug.getProductid());
				inventory.setNum(userdrug.getNum());
				inventory.setSavetime(Info.getDateStr());
				inventory.setUserid(String.valueOf(user.getId()));
				inventoryDAO.add(inventory);
			}
			
			
		double usertotal = hospitalized.getYytotal()+hospitalized.getProjecttotal();
		double sytotal = 0D;
		if(usertotal<=hospitalized.getTotal()){
			sytotal = hospitalized.getTotal()-usertotal;
			hospitalized.setTktotal(sytotal);
		}else{
			sytotal = usertotal-hospitalized.getTotal();
			hospitalized.setBjtotal(sytotal);
		}
		hospitalized.setUserid(String.valueOf(user.getId()));
		hospitalized.setCysavetime(Info.getDateStr().substring(0,10));
		hospitalized.setIscy("已出院");
		hospitalizedDAO.update(hospitalized);
		res.put("data", 200);
		}else{
			res.put("data", 400);
		}
		return res;
	}
	
	//删除入院
	@ResponseBody
	@RequestMapping("admin/hospitalizedDel")
	public HashMap<String,Object> hospitalizedDel(int id,HttpServletRequest request) {
		hospitalizedDAO.delete(id);
		return null;
	}

}
