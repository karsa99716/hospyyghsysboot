package com.bean;

public class Doctorpb {
	private int id;
	private int doctorid;
	private String pbdate;
	private String wb;
	private int status;
	private String fee;
	private int hnum;//总号源数
	private int yxnum;//有效号源数
	private int ygnum;//已挂号源数


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getDoctorid() {
		return doctorid;
	}

	public void setDoctorid(int doctorid) {
		this.doctorid = doctorid;
	}

	public String getPbdate() {
		return pbdate;
	}

	public void setPbdate(String pbdate) {
		this.pbdate = pbdate;
	}

	public String getWb() {
		return wb;
	}

	public void setWb(String wb) {
		this.wb = wb;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getHnum() {
		return hnum;
	}

	public void setHnum(int hnum) {
		this.hnum = hnum;
	}

	public int getYxnum() {
		return yxnum;
	}

	public void setYxnum(int yxnum) {
		this.yxnum = yxnum;
	}

	public int getYgnum() {
		return ygnum;
	}

	public void setYgnum(int ygnum) {
		this.ygnum = ygnum;
	}

	public String getFee() {
		return fee;
	}

	public void setFee(String fee) {
		this.fee = fee;
	}
}
