package com.controller;

import com.bean.Hospital;
import com.bean.News;
import com.dao.HospitalDAO;
import com.dao.NewsDAO;
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
public class HospitalController extends BaseController {

	@Resource
	HospitalDAO hospitalDAO;
	

	
	//编辑资讯
	@ResponseBody
	@RequestMapping("admin/hospitalShow")
	public HashMap<String,Object> hospitalShow(int id,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		Hospital hospital = hospitalDAO.findById(id);
		res.put("hospital", hospital);
		return res;
	}
	
	//编辑资讯
	@ResponseBody
	@RequestMapping("admin/hospitalEdit")
	public HashMap<String,Object> hospitalEdit(Hospital hospital ,HttpServletRequest request) {
		hospitalDAO.update(hospital);
		return null;
	}


}
