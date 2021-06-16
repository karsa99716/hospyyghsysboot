package com.dao;

import java.util.HashMap;
import java.util.List;

import com.bean.Prescription;

public interface PrescriptionDAO {
	List<Prescription> selectAll(HashMap<String,String> map);
	void add(Prescription office);
	void update(Prescription office);
	void delete(int id);
	Prescription findById(int id);
}