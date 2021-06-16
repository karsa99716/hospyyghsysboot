package com.dao;
import java.util.*;

import org.apache.ibatis.annotations.Param;

import com.bean.Disease;
import com.bean.Sysuser;
public interface DiseaseDAO {
	void add(Disease disease);
	List<Disease> selectAll(@Param("stime")String stime,@Param("etime")String etime,@Param("hzid")int hzid );
	void delete(int id);
	List<Disease> selectAllMsg(HashMap map);
	Disease findById(int id);
}
