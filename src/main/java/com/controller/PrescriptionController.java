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
import com.bean.Inventory;
import com.bean.Office;
import com.bean.Prescription;
import com.bean.Prescriptionmsg;
import com.bean.Product;
import com.bean.Registration;
import com.bean.Sysuser;
import com.dao.DiseaseDAO;
import com.dao.InventoryDAO;
import com.dao.OfficeDAO;
import com.dao.PrescriptionDAO;
import com.dao.PrescriptionmsgDAO;
import com.dao.ProductDAO;
import com.dao.RegistrationDAO;
import com.dao.SysuserDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;

import java.util.*;

@Controller
public class PrescriptionController extends BaseController {

	@Resource
	PrescriptionDAO prescriptionDAO;
	@Resource
	ProductDAO productDAO;
	@Resource
	PrescriptionmsgDAO prescriptionmsgDAO;
	@Resource
	RegistrationDAO registrationDAO;
	@Resource
	Saveobject saveobject;
	@Resource
	InventoryDAO inventoryDAO;
	@Resource
	SysuserDAO sysuserDAO;
	
	//添加处方
	@ResponseBody
	@RequestMapping("admin/prescriptionAdd")
	public HashMap<String,Object> prescriptionAdd(Prescription prescription ,HttpServletRequest request) {
		String num  = request.getParameter("num");
		String productid  = request.getParameter("productid");
		Product product = productDAO.findById(Integer.parseInt(productid));
		Sysuser doctor = (Sysuser)request.getSession().getAttribute("admin");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("ddno", prescription.getDdno());
		List<Prescription> list = prescriptionDAO.selectAll(map);
		if(list.size()==0){
		prescription.setDoctorid(String.valueOf(doctor.getId()));
		prescription.setSavetime(Info.getDateStr());
		prescription.setIshj("no");
		prescription.setIsqy("no");
		prescriptionDAO.add(prescription);
		}
		Prescriptionmsg prescriptionmsg = new Prescriptionmsg();
		prescriptionmsg.setDdno(prescription.getDdno());
		prescriptionmsg.setNum(Integer.parseInt(num));
		double price = product.getSaleprice()*Integer.parseInt(num);
		prescriptionmsg.setPrice(price);
		prescriptionmsg.setProductid(productid);
		prescriptionmsgDAO.add(prescriptionmsg);
		return null;
	}
	
	//处方列表
	@ResponseBody
	@RequestMapping("admin/prescriptionList")
	public HashMap<String,Object> prescriptionList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		Sysuser doctor = (Sysuser)request.getSession().getAttribute("admin");
		Sysuser member = (Sysuser)request.getSession().getAttribute("member");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		HashMap<String,String> msgmap = new HashMap<String,String>();
		String key = request.getParameter("key");
		String ishj = request.getParameter("ishj");
		map.put("ishj", ishj);
		map.put("key", key);
		if(member != null){
			map.put("memberid", String.valueOf(member.getId()));
		}
		List<Prescription> rlist = prescriptionDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<Prescription> prescriptionlist = prescriptionDAO.selectAll(map);
		for(Prescription prescription:prescriptionlist){
			msgmap.put("ddno", prescription.getDdno());
			Registration registration = registrationDAO.findById(Integer.parseInt(prescription.getRegistid()));
			
			
			Sysuser mmm = sysuserDAO.findById(Integer.parseInt(registration.getMemberid()));
			registration.setMember(mmm);
			
			prescription.setRegistration(registration);
			if(ishj.equals("yes")){
				List<Prescriptionmsg> prescriptionmsglist = prescriptionmsgDAO.selectAll(msgmap);
				for(Prescriptionmsg prescriptionmsg:prescriptionmsglist){
					Product product = productDAO.findById(Integer.parseInt(prescriptionmsg.getProductid()));
					prescriptionmsg.setProduct(product);
				}
				prescription.setPrescriptionmsglist(prescriptionmsglist);
			}
		}
		PageInfo<Prescription> pageInfo = new PageInfo<Prescription>(prescriptionlist);
		res.put("pageInfo", pageInfo);
		res.put("list", rlist);

		return res;
	}
	
	//划价
	@ResponseBody
	@RequestMapping("admin/prescriptionEdit")
	public HashMap<String,Object> prescriptionEdit(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request){
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		String ddno = request.getParameter("ddno");
		String total = request.getParameter("total");
		map.put("ddno",ddno);
		PageHelper.startPage(pageNum, 10);
		List<Prescription> prescriptionlist = prescriptionDAO.selectAll(map);
		Prescription prescription = prescriptionlist.get(0);
		
		Registration registration = registrationDAO.findById(Integer.parseInt(prescription.getRegistid()));
		double costtotal = registration.getCosttotal()+Double.parseDouble(total);
		registration.setCosttotal(costtotal);
		registrationDAO.update(registration);
		
		
		prescription.setIshj("yes");
		prescriptionDAO.update(prescription);
		res.put("id", prescription.getRegistid());
		return res;
	}
	
	//取药
	@ResponseBody
	@RequestMapping("admin/prescriptionUpdate")
	public HashMap<String,Object> prescriptionUpdate(int id,HttpServletRequest request){
		HashMap<String, Object> res = new HashMap<String, Object>();
		Sysuser user = (Sysuser)request.getSession().getAttribute("admin");
		Prescription prescription = prescriptionDAO.findById(id);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("ddno", prescription.getDdno());
		List<Prescriptionmsg> list = prescriptionmsgDAO.selectAll(map);
		boolean flag = true;
		for(Prescriptionmsg prescriptionmsg:list){
			int num = prescriptionmsg.getNum();
			int kc = saveobject.getInventoryNum(prescriptionmsg.getProductid(), request);
			if(kc<num){
				flag=false;
				break;
			}
		}
		
		if(flag==true){
			prescription.setIsqy("yes");
			prescriptionDAO.update(prescription);
			Registration registration = registrationDAO.findById(Integer.parseInt(prescription.getRegistid()));
			registration.setStatus("已完成");
			registrationDAO.update(registration);
			
			for(Prescriptionmsg prescriptionmsg:list){
				Inventory inventory = new Inventory();
				inventory.setDelstatus("0");
				inventory.setFlag("out");
				inventory.setProductid(prescriptionmsg.getProductid());
				inventory.setNum(prescriptionmsg.getNum());
				inventory.setSavetime(Info.getDateStr());
				inventory.setUserid(String.valueOf(user.getId()));
				inventoryDAO.add(inventory);
			}
			res.put("data", 200);
		}else{
			res.put("data", 400);
		}
		return res;
	}
	
	
	//删除
	@ResponseBody
	@RequestMapping("admin/prescriptionDel")
	public HashMap<String,Object> prescriptionDel(int id,HttpServletRequest request){
		prescriptionDAO.delete(id);
		return null;
	}

}
