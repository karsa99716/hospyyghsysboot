package com.bean;

public class Projectjc {
    private Integer id;
    
    private String ddno;

    private String registid;

    private String doctorid;

    private String savetime;

    private String ishj;


    private Registration registration;



    public Registration getRegistration() {
		return registration;
	}

	public void setRegistration(Registration registration) {
		this.registration = registration;
	}

	public String getDdno() {
		return ddno;
	}

	public void setDdno(String ddno) {
		this.ddno = ddno;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRegistid() {
        return registid;
    }

    public void setRegistid(String registid) {
        this.registid = registid == null ? null : registid.trim();
    }

    public String getDoctorid() {
        return doctorid;
    }

    public void setDoctorid(String doctorid) {
        this.doctorid = doctorid == null ? null : doctorid.trim();
    }

    public String getSavetime() {
        return savetime;
    }

    public void setSavetime(String savetime) {
        this.savetime = savetime == null ? null : savetime.trim();
    }

    public String getIshj() {
        return ishj;
    }

    public void setIshj(String ishj) {
        this.ishj = ishj == null ? null : ishj.trim();
    }
}