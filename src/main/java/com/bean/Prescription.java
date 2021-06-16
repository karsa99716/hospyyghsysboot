package com.bean;

import java.util.List;

public class Prescription {
    private Integer id;

    private String ddno;

    private String registid;

    private String doctorid;

    private String savetime;

    private String ishj;
    
    private String isqy;
    
    
    private Registration registration;
    
    private Sysuser doctor;
    
    private List<Prescriptionmsg> prescriptionmsglist;
    
    
    
    
    
    public List<Prescriptionmsg> getPrescriptionmsglist() {
		return prescriptionmsglist;
	}

	public void setPrescriptionmsglist(List<Prescriptionmsg> prescriptionmsglist) {
		this.prescriptionmsglist = prescriptionmsglist;
	}

	public String getIsqy() {
		return isqy;
	}

	public void setIsqy(String isqy) {
		this.isqy = isqy;
	}

	public Registration getRegistration() {
		return registration;
	}

	public void setRegistration(Registration registration) {
		this.registration = registration;
	}

	public Sysuser getDoctor() {
		return doctor;
	}

	public void setDoctor(Sysuser doctor) {
		this.doctor = doctor;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDdno() {
        return ddno;
    }

    public void setDdno(String ddno) {
        this.ddno = ddno == null ? null : ddno.trim();
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