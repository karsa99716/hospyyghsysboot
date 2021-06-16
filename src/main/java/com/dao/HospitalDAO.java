package com.dao;

import com.bean.Hospital;
import com.bean.Office;

import java.util.HashMap;
import java.util.List;

public interface HospitalDAO {
	void update(Hospital hospital);
	Hospital findById(int id);
}