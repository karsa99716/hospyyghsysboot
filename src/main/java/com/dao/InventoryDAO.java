package com.dao;

import java.util.HashMap;
import java.util.List;

import com.bean.Inventory;

public interface InventoryDAO {
	List<Inventory> selectAll(HashMap<String,String> map);
	void add(Inventory inventory);
	Inventory findById(int id);
	void update(Inventory inventory);
}