package com.dao;
import java.util.*;

import org.apache.ibatis.annotations.Param;

import com.bean.Category;
import com.bean.Disease;
import com.bean.Sysuser;
public interface CategoryDAO {
	List<Category> selectAll(HashMap map);
	void add(Category category);
	void update(Category category);
	void delete(int id);
	Category findById(int id);
}
