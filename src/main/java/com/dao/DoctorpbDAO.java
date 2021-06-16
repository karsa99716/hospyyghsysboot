package com.dao;

import com.bean.Category;
import com.bean.Doctorpb;

import java.util.HashMap;
import java.util.List;

public interface DoctorpbDAO {
	List<Doctorpb> selectAll(HashMap map);
	List<Doctorpb> selectAllDistinct(HashMap map);
	void add(Doctorpb doctorpb);
	void update(Doctorpb doctorpb);
	void delete(int id);
	Doctorpb findById(int id);
}
