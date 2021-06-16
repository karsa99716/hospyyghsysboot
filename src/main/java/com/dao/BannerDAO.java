package com.dao;

import com.bean.Banner;
import com.bean.News;

import java.util.HashMap;
import java.util.List;

public interface BannerDAO {
	List<Banner> selectAll(HashMap map);
	void add(Banner banner);
	void delete(int id);
}
