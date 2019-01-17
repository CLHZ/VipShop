package com.entity;

import java.util.List;

public class Ordersdetails {
    private Integer d_ID;

    private String o_ID;

    private String g_ID;

    private Float d_Price;

    private Integer d_Number;
    
    List<Goods> goods;
    
    List<Users> users;
    
    List<Address> address;
    
    List<Orders> orders;

    public List<Orders> getOrders() {
		return orders;
	}

	public void setOrders(List<Orders> orders) {
		this.orders = orders;
	}

	public List<Users> getUsers() {
		return users;
	}

	public void setUsers(List<Users> users) {
		this.users = users;
	}

	public List<Address> getAddress() {
		return address;
	}

	public void setAddress(List<Address> address) {
		this.address = address;
	}

	public List<Goods> getGoods() {
		return goods;
	}

	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}

    public Integer getD_ID() {
        return d_ID;
    }

    public void setD_ID(Integer d_ID) {
        this.d_ID = d_ID;
    }

    public String getO_ID() {
        return o_ID;
    }

    public void setO_ID(String o_ID) {
        this.o_ID = o_ID == null ? null : o_ID.trim();
    }

    public String getG_ID() {
        return g_ID;
    }

    public void setG_ID(String g_ID) {
        this.g_ID = g_ID == null ? null : g_ID.trim();
    }

    public Float getD_Price() {
        return d_Price;
    }

    public void setD_Price(Float d_Price) {
        this.d_Price = d_Price;
    }

    public Integer getD_Number() {
        return d_Number;
    }

    public void setD_Number(Integer d_Number) {
        this.d_Number = d_Number;
    }
}