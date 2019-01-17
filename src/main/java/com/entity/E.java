package com.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class E {
	private String o_ID;
	
	@JsonFormat(pattern="yyyy-MM-dd")
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date o_Date;
	
	private String o_Status;
	
	private String a_address;
	
	private String g_Name;
	
	private Float d_Price;

    private Integer d_Number;
    
    private String u_Name;
    
    private String d_Status;

	public String getD_Status() {
		return d_Status;
	}

	public void setD_Status(String d_Status) {
		this.d_Status = d_Status;
	}

	public String getO_ID() {
		return o_ID;
	}

	public void setO_ID(String o_ID) {
		this.o_ID = o_ID;
	}

	public Date getO_Date() {
		return o_Date;
	}

	public void setO_Date(Date o_Date) {
		this.o_Date = o_Date;
	}

	public String getO_Status() {
		return o_Status;
	}

	public void setO_Status(String o_Status) {
		this.o_Status = o_Status;
	}

	public String getA_address() {
		return a_address;
	}

	public void setA_address(String a_address) {
		this.a_address = a_address;
	}

	public String getG_Name() {
		return g_Name;
	}

	public void setG_Name(String g_Name) {
		this.g_Name = g_Name;
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

	public String getU_Name() {
		return u_Name;
	}

	public void setU_Name(String u_Name) {
		this.u_Name = u_Name;
	}
}
