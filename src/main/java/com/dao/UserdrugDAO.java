package com.dao;

import java.util.HashMap;
import java.util.List;

import com.bean.Userdrug;

public interface UserdrugDAO {
	List<Userdrug> selectAll(HashMap<String,String> map);
	void add(Userdrug userdrug);
	void delete(int id);
	Userdrug findById(int id);
}