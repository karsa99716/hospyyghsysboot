package com.dao;
import java.util.*;

import org.apache.ibatis.annotations.Param;

import com.bean.Consult;
import com.bean.Disease;
import com.bean.News;
import com.bean.Sysuser;
public interface NewsDAO {
	List<News> selectAll(HashMap map);
	News findById(int id);
	void add(News news);
	void update(News news);
	void delete(int id);
}
