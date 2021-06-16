package com.bean;

public class Work {
    private Integer id;

    private String doctorid;

    private String mondaystr;

    private String tuesdaystr;

    private String wednesdaystr;

    private String thursdaystr;

    private String fridaystr;

    private String saturdaystr;

    private String sundaystr;
    
    
    private Sysuser doctor;
    
    

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

    public String getDoctorid() {
        return doctorid;
    }

    public void setDoctorid(String doctorid) {
        this.doctorid = doctorid == null ? null : doctorid.trim();
    }

    public String getMondaystr() {
        return mondaystr;
    }

    public void setMondaystr(String mondaystr) {
        this.mondaystr = mondaystr == null ? null : mondaystr.trim();
    }

    public String getTuesdaystr() {
        return tuesdaystr;
    }

    public void setTuesdaystr(String tuesdaystr) {
        this.tuesdaystr = tuesdaystr == null ? null : tuesdaystr.trim();
    }

    public String getWednesdaystr() {
        return wednesdaystr;
    }

    public void setWednesdaystr(String wednesdaystr) {
        this.wednesdaystr = wednesdaystr == null ? null : wednesdaystr.trim();
    }

    public String getThursdaystr() {
        return thursdaystr;
    }

    public void setThursdaystr(String thursdaystr) {
        this.thursdaystr = thursdaystr == null ? null : thursdaystr.trim();
    }

    public String getFridaystr() {
        return fridaystr;
    }

    public void setFridaystr(String fridaystr) {
        this.fridaystr = fridaystr == null ? null : fridaystr.trim();
    }

    public String getSaturdaystr() {
        return saturdaystr;
    }

    public void setSaturdaystr(String saturdaystr) {
        this.saturdaystr = saturdaystr == null ? null : saturdaystr.trim();
    }

    public String getSundaystr() {
        return sundaystr;
    }

    public void setSundaystr(String sundaystr) {
        this.sundaystr = sundaystr == null ? null : sundaystr.trim();
    }
}