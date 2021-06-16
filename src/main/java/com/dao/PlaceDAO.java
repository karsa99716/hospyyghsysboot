package com.dao;

import java.util.HashMap;
import java.util.List;

import com.bean.Place;

public interface PlaceDAO {
	List<Place> selectAll(HashMap<String,String> map);
	void add(Place place);
	void update(Place place);
	void delete(int id);
	Place findById(int id);
}