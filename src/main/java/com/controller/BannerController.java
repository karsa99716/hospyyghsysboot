package com.controller;

import com.bean.Banner;
import com.bean.News;
import com.dao.BannerDAO;
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
public class BannerController extends BaseController {

	@Resource
	BannerDAO bannerDAO;
	
	
	//列表
	@ResponseBody
	@RequestMapping("admin/bannerList")
	public HashMap<String,Object> bannerList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
		List<Banner> bannerlist = bannerDAO.selectAll(map);
		PageHelper.startPage(pageNum, pageSize);
		List<Banner> list = bannerDAO.selectAll(map);
		PageInfo<Banner> pageInfo = new PageInfo<Banner>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", bannerlist);
		return res;
	}
		
	
	//添加
	@ResponseBody
	@RequestMapping("admin/bannerAdd")
	public HashMap<String,Object> bannerAdd(Banner banner ,HttpServletRequest request) {
		bannerDAO.add(banner);
		return null;
	}

	//删除
	@ResponseBody
	@RequestMapping("admin/bannerDel")
	public HashMap<String,Object> bannerDel(HttpServletRequest request) {
		String id = request.getParameter("id");
		bannerDAO.delete(Integer.valueOf(id));
		return null;
	}

}
