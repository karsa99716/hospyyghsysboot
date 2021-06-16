package com.dao;
import java.util.*;

import com.bean.Sysuser;
public interface SysuserDAO {
	Sysuser findById(int id);
	void add(Sysuser sysuser);
	List<Sysuser> selectAll(HashMap<String,String> map);
	void update(Sysuser sysuser);
}
