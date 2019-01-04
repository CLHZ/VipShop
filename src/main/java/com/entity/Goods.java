package com.entity;

import java.util.Date;
import java.util.List;

public class Goods {
    private Integer g_ID;

    private String g_Name;

    private Integer t_ID;

    private Float g_Price;

    private Float g_Discount;

    private Integer g_Number;

    private Date g_ProduceDate;

    private String g_Image;

    private String g_Status;

    private String g_Description;

    private String g_BID;
    
    private Brand brand;
    
    public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public Integer getG_ID() {
        return g_ID;
    }

    public void setG_ID(Integer g_ID) {
        this.g_ID = g_ID;
    }

    public String getG_Name() {
        return g_Name;
    }

    public void setG_Name(String g_Name) {
        this.g_Name = g_Name == null ? null : g_Name.trim();
    }

    public Integer getT_ID() {
        return t_ID;
    }

    public void setT_ID(Integer t_ID) {
        this.t_ID = t_ID;
    }

    public Float getG_Price() {
        return g_Price;
    }

    public void setG_Price(Float g_Price) {
        this.g_Price = g_Price;
    }

    public Float getG_Discount() {
        return g_Discount;
    }

    public void setG_Discount(Float g_Discount) {
        this.g_Discount = g_Discount;
    }

    public Integer getG_Number() {
        return g_Number;
    }

    public void setG_Number(Integer g_Number) {
        this.g_Number = g_Number;
    }

    public Date getG_ProduceDate() {
        return g_ProduceDate;
    }

    public void setG_ProduceDate(Date g_ProduceDate) {
        this.g_ProduceDate = g_ProduceDate;
    }

    public String getG_Image() {
        return g_Image;
    }

    public void setG_Image(String g_Image) {
        this.g_Image = g_Image == null ? null : g_Image.trim();
    }

    public String getG_Status() {
        return g_Status;
    }

    public void setG_Status(String g_Status) {
        this.g_Status = g_Status == null ? null : g_Status.trim();
    }

    public String getG_Description() {
        return g_Description;
    }

    public void setG_Description(String g_Description) {
        this.g_Description = g_Description == null ? null : g_Description.trim();
    }

    public String getG_BID() {
        return g_BID;
    }

    public void setG_BID(String g_BID) {
        this.g_BID = g_BID == null ? null : g_BID.trim();
    }
}