package com.controller;

import com.bean.Category;
import com.bean.Doctorpb;
import com.dao.CategoryDAO;
import com.dao.DoctorpbDAO;
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
public class DoctorpbController extends BaseController {

	@Resource
	DoctorpbDAO doctorpbDAO;
	@Resource
	SysuserDAO ssuserDAO;
	
	//排班列表
	@ResponseBody
	@RequestMapping("admin/doctorpbList")
	public HashMap<String,Object> doctorpbList(HttpServletRequest request){

		String doctorid = request.getParameter("doctorid");
		String key = request.getParameter("key");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("doctorid", doctorid);
		map.put("pbdate",key);
		map.put("today",Info.getDateStr().substring(0,10));
		List<Doctorpb> doctorpblist = doctorpbDAO.selectAllDistinct(map);
		for(Doctorpb d:doctorpblist){
			int yxnum = 0;
			int ygnum = 0;
			HashMap m1 = new HashMap();
			m1.put("doctorid", doctorid);
			m1.put("pbdate",d.getPbdate());
			m1.put("wb",d.getWb());
			//m1.put("today",Info.getDateStr().substring(0,10));
			System.out.println("m1="+m1);
			List<Doctorpb> list = doctorpbDAO.selectAll(m1);
			for(Doctorpb dd:list){
				if(dd.getStatus()==0){
					yxnum++;
				}
			}
			ygnum = list.size() - yxnum;
			System.out.println(list.size()+"--"+yxnum);
			d.setYxnum(yxnum);
			d.setYgnum(ygnum);

		}
		res.put("list", doctorpblist);
		res.put("doctorid", doctorid);
		return res;
	}


	//添加排班
	@ResponseBody
	@RequestMapping("admin/doctorpbAdd")
	public HashMap<String,Object> doctorpbAdd(Doctorpb doctorpb ,HttpServletRequest request) {
//		System.out.println(doctorpb.getPbdate());
//		System.out.println(doctorpb.getDoctorid());
//		System.out.println(doctorpb.getWb());
		String num = request.getParameter("num");
		String sdate = doctorpb.getPbdate().split(" - ")[0];
		String edate = doctorpb.getPbdate().split(" - ")[1];
		List<String> days = Info.getDays(sdate,edate);
		for(String day:days){
			for(int i=0;i<Integer.valueOf(num);i++){
				doctorpb.setStatus(0);
				doctorpb.setPbdate(day);
				doctorpb.setFee(doctorpb.getFee());
				doctorpbDAO.add(doctorpb);
			}

		}
		return null;
	}
	//删除排班
	@ResponseBody
	@RequestMapping("admin/doctorpbDel")
	public HashMap<String,Object> doctorpbDel(HttpServletRequest request) {
		String pbdate = request.getParameter("pbdate");
		String wb = request.getParameter("wb");
		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("pbdate", pbdate);
		map.put("wb",wb);
		System.out.println(map);
		List<Doctorpb> list = doctorpbDAO.selectAll(map);

		for(Doctorpb d:list){
			if(d.getStatus() == 0){
				doctorpbDAO.delete(d.getId());
			}
		}
		res.put("data",200);
		return res;
	}

}