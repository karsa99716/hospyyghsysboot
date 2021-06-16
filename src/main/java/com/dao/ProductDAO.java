package com.dao;

import java.util.HashMap;
import java.util.List;

import com.bean.Product;

public interface ProductDAO {
	List<Product> selectAll(HashMap<String,String> map);
	void add(Product product);
	void update(Product product);
	void delete(int id);
	Product findById(int id);
}