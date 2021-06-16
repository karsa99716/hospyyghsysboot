package com.bean;

public class Inventory {
    private Integer id;

    private String productid;

    private Integer num;

    private String flag;

    private String savetime;

    private String userid;
    
    private String delstatus;
    
    private Product product;
    
    private Sysuser user;
    
    

    public String getDelstatus() {
		return delstatus;
	}

	public void setDelstatus(String delstatus) {
		this.delstatus = delstatus;
	}

	public Sysuser getUser() {
		return user;
	}

	public void setUser(Sysuser user) {
		this.user = user;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag == null ? null : flag.trim();
    }

    public String getSavetime() {
        return savetime;
    }

    public void setSavetime(String savetime) {
        this.savetime = savetime == null ? null : savetime.trim();
    }

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

    
}