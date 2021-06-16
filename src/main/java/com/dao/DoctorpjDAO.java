package com.dao;

import com.bean.Doctorpj;
import com.bean.Msg;

import java.util.HashMap;
import java.util.List;

public interface DoctorpjDAO {
	List<Doctorpj> selectAll(HashMap map);
	Doctorpj findById(int id);
	void add(Doctorpj doctorpj);
	void update(Doctorpj doctorpj);
	void delete(int id);
}
