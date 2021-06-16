package com.bean;

import java.math.BigDecimal;

public class Prescriptionmsg {
    private Integer id;

    private String ddno;

    private String productid;

    private Integer num;

    private double price;
    
    private Product product;
    
    private double total;
    
    
    
    

    public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
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

    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid == null ? null : productid.trim();
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
    
    

}