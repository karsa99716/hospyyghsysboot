package com.controller;

import org.springframework.stereotype.Component;




import com.bean.Inventory;
import com.dao.CategoryDAO;
import com.dao.InventoryDAO;
import com.dao.ProductDAO;




import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import java.util.HashMap;
import java.util.List;

@Component
public class Saveobject {
	@Resource
	InventoryDAO inventoryDAO;
	
	
	//计算库存
	public int getInventoryNum(String productid,HttpServletRequest request) {
		int total = 0;
		int innum = 0;
		int outnum = 0;
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("productid", productid);
		map.put("flag", "in");
		List<Inventory> inlist = inventoryDAO.selectAll(map);
		for(Inventory ininventory:inlist){
			innum +=ininventory.getNum();
		}
		map.put("flag", "out");
		List<Inventory> outlist = inventoryDAO.selectAll(map);
		for(Inventory outinventory:outlist){
			outnum +=outinventory.getNum();
		}
		total = innum-outnum;
		return total;
	}
	
	

}
