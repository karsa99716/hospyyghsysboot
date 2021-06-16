package com.bean;

public class Office {
    private Integer id;

    private String name;
    private String note;
    private String bz;

    private String delstatus;

    public String getDelstatus() {
		return delstatus;
	}

	public void setDelstatus(String delstatus) {
		this.delstatus = delstatus;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }


    public String getBz() {
        return bz;
    }

    public void setBz(String bz) {
        this.bz = bz;
    }
}