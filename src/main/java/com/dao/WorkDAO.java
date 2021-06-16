package com.dao;

import java.util.HashMap;
import java.util.List;

import com.bean.Work;

public interface WorkDAO {
	List<Work> selectAll(HashMap<String,String> map);
	void add(Work work);
	void update(Work office);
	Work findById(int id);
	void delete(int id);
}