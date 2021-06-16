package com.dao;

import java.util.HashMap;
import java.util.List;

import com.bean.Projectjcmsg;

public interface ProjectjcmsgDAO {
	List<Projectjcmsg> selectAll(HashMap<String,String> map);
	void add(Projectjcmsg projectjcmsg);
	void delete(int id);
	Projectjcmsg findById(int id);
	void update(Projectjcmsg projectjcmsg);
    
}