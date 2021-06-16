package com.bean;

import java.math.BigDecimal;

public class Userproject {
    private Integer id;

    private String hospitalizedid;

    private String projectid;

    private double price;

    private String savetime;
    
    private Project project;
    
    private double total;
    
    
    

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getHospitalizedid() {
		return hospitalizedid;
	}

	public void setHospitalizedid(String hospitalizedid) {
		this.hospitalizedid = hospitalizedid;
	}

	public String getProjectid() {
		return projectid;
	}

	public void setProjectid(String projectid) {
		this.projectid = projectid;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getSavetime() {
		return savetime;
	}

	public void setSavetime(String savetime) {
		this.savetime = savetime;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}
    

   
}