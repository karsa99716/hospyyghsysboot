package com.dao;

import java.util.HashMap;
import java.util.List;

import com.bean.Project;

public interface ProjectDAO {
	List<Project> selectAll(HashMap<String,String> map);
	void add(Project project);
	void update(Project project);
	void delete(int id);
	Project findById(int id);
}