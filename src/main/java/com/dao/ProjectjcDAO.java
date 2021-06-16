package com.dao;

import java.util.HashMap;
import java.util.List;

import com.bean.Projectjc;

public interface ProjectjcDAO {
	List<Projectjc> selectAll(HashMap<String,String> map);
	void add(Projectjc projectjc);
	void update(Projectjc projectjc);
	void delete(int id);
	Projectjc findById(int id);
   
}