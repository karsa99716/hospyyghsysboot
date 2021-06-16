package com.dao;

import java.util.HashMap;
import java.util.List;

import com.bean.Userproject;

public interface UserprojectDAO {
	List<Userproject> selectAll(HashMap<String,String> map);
	void add(Userproject userproject);
	void delete(int id);
	Userproject findById(int id);
}