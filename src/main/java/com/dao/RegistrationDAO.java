package com.dao;

import java.util.HashMap;
import java.util.List;

import com.bean.Registration;

public interface RegistrationDAO {
	List<Registration> selectAll(HashMap<String,String> map);
	void add(Registration registration);
	void update(Registration registration);
	void delete(int id);
	Registration findById(int id);
	List selecttj1(HashMap<String,String> map);
	List<Registration> selectTj(HashMap<String,String> map);

}