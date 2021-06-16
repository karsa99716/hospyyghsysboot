package com.dao;

import java.util.HashMap;
import java.util.List;

import com.bean.Office;

public interface OfficeDAO {
	List<Office> selectAll(HashMap<String,String> map);
	void add(Office office);
	void update(Office office);
	void delete(int id);
	Office findById(int id);
}