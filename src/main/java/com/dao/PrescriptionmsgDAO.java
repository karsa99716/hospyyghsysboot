package com.dao;

import java.util.HashMap;
import java.util.List;

import com.bean.Prescriptionmsg;

public interface PrescriptionmsgDAO {
	List<Prescriptionmsg> selectAll(HashMap<String,String> map);
	void add(Prescriptionmsg office);
	void delete(int id);
}