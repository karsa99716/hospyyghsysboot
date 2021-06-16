package com.bean;

import java.util.*;

public class Consult {
	private int id;
	private int sid;
	private int diseaseid;
	private String content;
	private String savetime;
	
	private Disease disease;
	private Sysuser sysuser;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getDiseaseid() {
		return diseaseid;
	}
	public void setDiseaseid(int diseaseid) {
		this.diseaseid = diseaseid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSavetime() {
		return savetime;
	}
	public void setSavetime(String savetime) {
		this.savetime = savetime;
	}
	public Disease getDisease() {
		return disease;
	}
	public void setDisease(Disease disease) {
		this.disease = disease;
	}
	public Sysuser getSysuser() {
		return sysuser;
	}
	public void setSysuser(Sysuser sysuser) {
		this.sysuser = sysuser;
	}
	
	
}
