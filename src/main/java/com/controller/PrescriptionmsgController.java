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
import com.bean.Prescription;
import com.bean.Prescriptionmsg;
import com.bean.Product;
import com.bean.Registration;
import com.bean.Sysuser;
import com.dao.DiseaseDAO;
import com.dao.PrescriptionDAO;
import com.dao.PrescriptionmsgDAO;
import com.dao.ProductDAO;
import com.dao.SysuserDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;

import java.util.*;

@Controller
public class PrescriptionmsgController extends BaseController {

	@Resource
	ProductDAO productDAO;
	@Resource
	PrescriptionmsgDAO prescriptionmsgDAO;
	
	
	//处方列表
	@ResponseBody
	@RequestMapping("admin/prescriptionmsgList")
	public HashMap<String,Object> prescriptionmsgList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request){
		String ddno = request.getParameter("ddno");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("ddno", ddno);
		List<Prescriptionmsg> prescriptionmsglist = prescriptionmsgDAO.selectAll(map);
		double total = 0D;
		for(Prescriptionmsg prescriptionmsg:prescriptionmsglist){
			Product product = productDAO.findById(Integer.parseInt(prescriptionmsg.getProductid()));
			prescriptionmsg.setProduct(product);
			total+=product.getSaleprice()*prescriptionmsg.getNum();
		}
		res.put("total", total);
		res.put("prescriptionmsglist", prescriptionmsglist);
		return res;
	}
	
	//清空处方
	@ResponseBody
	@RequestMapping("admin/prescriptionmsgAllDel")
	public HashMap<String,Object> prescriptionmsgAllDel(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request){
		String ddno = request.getParameter("ddno");
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("ddno", ddno);
		List<Prescriptionmsg> prescriptionmsglist = prescriptionmsgDAO.selectAll(map);
		for(Prescriptionmsg prescription:prescriptionmsglist){
			prescriptionmsgDAO.delete(prescription.getId());
		}
		return null;
	}
	

}
