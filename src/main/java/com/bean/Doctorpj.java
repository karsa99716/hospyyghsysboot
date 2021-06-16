package com.bean;

public class Doctorpj {
	private int id;
	private int regid;
	private int memberid;
	private int doctorid;
	private String note;
	private String savetime;
	private String star;
	private Sysuser member;
	private Sysuser doctor;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMemberid() {
		return memberid;
	}

	public void setMemberid(int memberid) {
		this.memberid = memberid;
	}

	public int getDoctorid() {
		return doctorid;
	}

	public void setDoctorid(int doctorid) {
		this.doctorid = doctorid;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getSavetime() {
		return savetime;
	}

	public void setSavetime(String savetime) {
		this.savetime = savetime;
	}

	public Sysuser getMember() {
		return member;
	}

	public void setMember(Sysuser member) {
		this.member = member;
	}

	public Sysuser getDoctor() {
		return doctor;
	}

	public void setDoctor(Sysuser doctor) {
		this.doctor = doctor;
	}

	public int getRegid() {
		return regid;
	}

	public void setRegid(int regid) {
		this.regid = regid;
	}

	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}
}
