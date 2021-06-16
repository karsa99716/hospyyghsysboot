package com.bean;

public class Msg {
	private int id;
	private int memberid;
	private int doctorid;
	private String note;
	private String hfnote;
	private String savetime;
	private String hftime;

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

	public String getHfnote() {
		return hfnote;
	}

	public void setHfnote(String hfnote) {
		this.hfnote = hfnote;
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

	public String getHftime() {
		return hftime;
	}

	public void setHftime(String hftime) {
		this.hftime = hftime;
	}
}
