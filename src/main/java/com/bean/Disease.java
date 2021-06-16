package com.bean;

import java.util.*;

public class Disease {
	private int id;
	private int hzid;
	private String part;
	private String zz;
	private String sctime;
	private String delstatus;
	private String savetime;
	private Sysuser hz;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getHzid() {
		return hzid;
	}
	public void setHzid(int hzid) {
		this.hzid = hzid;
	}
	public String getPart() {
		return part;
	}
	public void setPart(String part) {
		this.part = part;
	}
	public String getZz() {
		return zz;
	}
	public void setZz(String zz) {
		this.zz = zz;
	}
	public String getSctime() {
		return sctime;
	}
	public void setSctime(String sctime) {
		this.sctime = sctime;
	}
	public String getDelstatus() {
		return delstatus;
	}
	public void setDelstatus(String delstatus) {
		this.delstatus = delstatus;
	}
	public String getSavetime() {
		return savetime;
	}
	public void setSavetime(String savetime) {
		this.savetime = savetime;
	}
	public Sysuser getHz() {
		return hz;
	}
	public void setHz(Sysuser hz) {
		this.hz = hz;
	}
	
	
}
