package com.dao;

import com.bean.Msg;
import com.bean.News;

import java.util.HashMap;
import java.util.List;

public interface MsgDAO {
	List<Msg> selectAll(HashMap map);
	Msg findById(int id);
	void add(Msg msg);
	void update(Msg msg);
	void delete(int id);
}
