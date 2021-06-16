package com.bean;


public class Userdrug {
    private Integer id;

    private String hospitalizedid;

    private String productid;

    private int num;

    private double price;

    private String savetime;
    
    private Hospitalized hospitalized;
    
    private Product product;
    
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

	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}

	

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
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

	public Hospitalized getHospitalized() {
		return hospitalized;
	}

	public void setHospitalized(Hospitalized hospitalized) {
		this.hospitalized = hospitalized;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
    
    
}