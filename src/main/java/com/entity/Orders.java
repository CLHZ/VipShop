package com.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Orders {
    private String o_ID;

    private Integer u_ID;

    @JsonFormat(pattern="yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date o_Date;

    private Float o_Sum;

    private String o_SendMode;

    private String o_Status;
    

	public String getO_ID() {
        return o_ID;
    }

    public void setO_ID(String o_ID) {
        this.o_ID = o_ID == null ? null : o_ID.trim();
    }

    public Integer getU_ID() {
        return u_ID;
    }

    public void setU_ID(Integer u_ID) {
        this.u_ID = u_ID;
    }

    public Date getO_Date() {
        return o_Date;
    }

    public void setO_Date(Date o_Date) {
        this.o_Date = o_Date;
    }

    public Float getO_Sum() {
        return o_Sum;
    }

    public void setO_Sum(Float o_Sum) {
        this.o_Sum = o_Sum;
    }

    public String getO_SendMode() {
        return o_SendMode;
    }

    public void setO_SendMode(String o_SendMode) {
        this.o_SendMode = o_SendMode == null ? null : o_SendMode.trim();
    }

    public String getO_Status() {
        return o_Status;
    }

    public void setO_Status(String o_Status) {
        this.o_Status = o_Status == null ? null : o_Status.trim();
    }
}