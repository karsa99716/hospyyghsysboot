package com.controller;

import javax.annotation.Resource;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Array;
import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.Disease;
import com.bean.Hospitalized;
import com.bean.Office;
import com.bean.Registration;
import com.bean.Sysuser;
import com.dao.DiseaseDAO;
import com.dao.HospitalizedDAO;
import com.dao.OfficeDAO;
import com.dao.RegistrationDAO;
import com.dao.SysuserDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;

import java.util.*;

@Controller
public class StatisticsController extends BaseController {
	
	@Resource
	HospitalizedDAO hospitalizedDAO;
	@Resource
	RegistrationDAO registrationDAO;
	
	//住院统计
	@ResponseBody
	@RequestMapping("admin/tjhopitalized")
	public HashMap<String, Object> tjhopitalized(HttpServletRequest request) {
		HashMap<String, Object> res = new HashMap<String, Object>();
		String key = request.getParameter("key");
		if(key==null || key.equals("")){
			key = Info.getDateStr().substring(0,4);
			res.put("year", Info.getDateStr().substring(0,4));
		}else{
			res.put("year", key);
		}
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("key", key);
		String[] arr = new String[12];
		List<Hospitalized> list = hospitalizedDAO.selecttj(map);
		for(Hospitalized hospitalized:list){
			if(hospitalized != null) {
				arr[0] = hospitalized.getJanuary();
				arr[1] = hospitalized.getFebruary();
				arr[2] = hospitalized.getMarch();
				arr[3] = hospitalized.getApril();
				arr[4] = hospitalized.getMay();
				arr[5] = hospitalized.getJune();
				arr[6] = hospitalized.getJuly();
				arr[7] = hospitalized.getAugust();
				arr[8] = hospitalized.getSeptember();
				arr[9] = hospitalized.getOctober();
				arr[10] = hospitalized.getNovember();
				arr[11] = hospitalized.getDecember();
			}
		}
		res.put("arr", arr);
		return res;
	}
	
	
	//住院统计
	@ResponseBody
	@RequestMapping("admin/tjregistration")
	public HashMap<String, Object> tjregistration(HttpServletRequest request) {
		HashMap<String, Object> res = new HashMap<String, Object>();
		String key = request.getParameter("key");
		if(key==null || key.equals("")){
			key = Info.getDateStr().substring(0,4);
			res.put("year", Info.getDateStr().substring(0,4));
		}else{
			res.put("year", key);
		}
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("key", key);
		String[] arr = new String[12];
		List<Registration> list = registrationDAO.selecttj1(map);
		for(Registration registration:list){
			if(registration != null){
				arr[0] = registration.getJanuary();
				arr[1] = registration.getFebruary();
				arr[2] = registration.getMarch();
				arr[3] = registration.getApril();
				arr[4] = registration.getMay();
				arr[5] = registration.getJune();
				arr[6] = registration.getJuly();
				arr[7] = registration.getAugust();
				arr[8] = registration.getSeptember();
				arr[9] = registration.getOctober();
				arr[10] = registration.getNovember();
				arr[11] = registration.getDecember();
			}

		}
		res.put("arr", arr);
		return res;
	}

}
