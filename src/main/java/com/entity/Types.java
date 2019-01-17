package com.entity;

import java.util.List;

public class Types {
    private Integer t_ID;

    private String t_Name;

    private Integer t_parentID;

    private String t_Description;
    
    private List<SubType> table1;
    
    private List<Goods> goods;

   
   

	public List<Goods> getGoods() {
		return goods;
	}

	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}

	public List<SubType> getTable1() {
		return table1;
	}

	public void setTable1(List<SubType> table1) {
		this.table1 = table1;
	}

	public Integer getT_ID() {
        return t_ID;
    }

    public void setT_ID(Integer t_ID) {
        this.t_ID = t_ID;
    }

    public String getT_Name() {
        return t_Name;
    }

    public void setT_Name(String t_Name) {
        this.t_Name = t_Name == null ? null : t_Name.trim();
    }

    public Integer getT_parentID() {
        return t_parentID;
    }

    public void setT_parentID(Integer t_parentID) {
        this.t_parentID = t_parentID;
    }

    public String getT_Description() {
        return t_Description;
    }

    public void setT_Description(String t_Description) {
        this.t_Description = t_Description == null ? null : t_Description.trim();
    }
}