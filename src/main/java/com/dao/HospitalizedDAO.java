package com.dao;

import java.util.HashMap;
import java.util.List;

import com.bean.Hospitalized;

public interface HospitalizedDAO {
	List<Hospitalized> selectAll(HashMap<String,String> map);
	List selecttj(HashMap<String,String> map);
	void add(Hospitalized hospitalized);
	void update(Hospitalized hospitalized);
	void delete(int id);
	Hospitalized findById(int id);
}