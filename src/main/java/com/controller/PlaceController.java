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
import com.bean.Place;
import com.bean.Sysuser;
import com.dao.DiseaseDAO;
import com.dao.PlaceDAO;
import com.dao.SysuserDAO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.Info;

import java.util.*;

@Controller
public class PlaceController extends BaseController {

	@Resource
	PlaceDAO placeDAO;
	
	
	//产地列表
	@ResponseBody
	@RequestMapping("admin/placeList")
	public HashMap<String,Object> placeList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request){
		String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		PageHelper.startPage(pageNum, 10);
		List<Place> list = placeDAO.selectAll(map);
		PageInfo<Place> pageInfo = new PageInfo<Place>(list);
		res.put("pageInfo", pageInfo);
		return res;
	}
		
	
	//添加产地
	@ResponseBody
	@RequestMapping("admin/placeAdd")
	public HashMap<String,Object> placeAdd(Place place ,HttpServletRequest request) {
		place.setDelstatus("0");
		placeDAO.add(place);
		return null;
	}
	
	//编辑产地
	@ResponseBody
	@RequestMapping("admin/placeShow")
	public HashMap<String,Object> placeShow(int id,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		Place place = placeDAO.findById(id);
		res.put("place", place);
		return res;
	}
	
	//编辑产地
	@ResponseBody
	@RequestMapping("admin/placeEdit")
	public HashMap<String,Object> placeEdit(Place place ,HttpServletRequest request) {
		placeDAO.update(place);
		return null;
	}
	
	//删除产地
	@ResponseBody
	@RequestMapping("admin/placeDel")
	public HashMap<String,Object> placeDel(HttpServletRequest request) {
		String id = request.getParameter("id");
		Place place = placeDAO.findById(Integer.parseInt(id));
		place.setDelstatus("1");
		placeDAO.update(place);
		return null;
	}

}
