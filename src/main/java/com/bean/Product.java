package com.bean;

import java.math.BigDecimal;

public class Product {
    private Integer id;

    private String name;

    private double costprice;

    private double saleprice;

    private String supplier;

    private String place;

    private String categoryid;

    private String delstatus;
    
    private String unit;
    
    private int inventorynum;
    
    private Category category;
    
    
    

    public int getInventorynum() {
		return inventorynum;
	}

	public void setInventorynum(int inventorynum) {
		this.inventorynum = inventorynum;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
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


	public double getCostprice() {
		return costprice;
	}

	public void setCostprice(double costprice) {
		this.costprice = costprice;
	}

	public double getSaleprice() {
		return saleprice;
	}

	public void setSaleprice(double saleprice) {
		this.saleprice = saleprice;
	}

	public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier == null ? null : supplier.trim();
    }

    
    public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(String categoryid) {
        this.categoryid = categoryid == null ? null : categoryid.trim();
    }

    public String getDelstatus() {
        return delstatus;
    }

    public void setDelstatus(String delstatus) {
        this.delstatus = delstatus == null ? null : delstatus.trim();
    }
}