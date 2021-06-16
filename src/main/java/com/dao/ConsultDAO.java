package com.dao;
import java.util.*;

import org.apache.ibatis.annotations.Param;

import com.bean.Consult;
import com.bean.Disease;
import com.bean.Sysuser;
public interface ConsultDAO {
	List<Consult> selectAll(int id);
	void add(Consult consult);
	void delete(int id);
}
