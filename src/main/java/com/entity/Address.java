package com.entity;

import java.util.Date;

public class Address {
    private Integer a_ID;

    private Integer u_ID;

    private String a_name;

    private String a_mobile;

    private String a_phone;

    private String a_province;

    private String a_city;

    private String a_district;

    private String a_address;

    private Date a_createtime;

    private Date a_updatetime;

    public Integer getA_ID() {
        return a_ID;
    }

    public void setA_ID(Integer a_ID) {
        this.a_ID = a_ID;
    }

    public Integer getU_ID() {
        return u_ID;
    }

    public void setU_ID(Integer u_ID) {
        this.u_ID = u_ID;
    }

    public String getA_name() {
        return a_name;
    }

    public void setA_name(String a_name) {
        this.a_name = a_name == null ? null : a_name.trim();
    }

    public String getA_mobile() {
        return a_mobile;
    }

    public void setA_mobile(String a_mobile) {
        this.a_mobile = a_mobile == null ? null : a_mobile.trim();
    }

    public String getA_phone() {
        return a_phone;
    }

    public void setA_phone(String a_phone) {
        this.a_phone = a_phone == null ? null : a_phone.trim();
    }

    public String getA_province() {
        return a_province;
    }

    public void setA_province(String a_province) {
        this.a_province = a_province == null ? null : a_province.trim();
    }

    public String getA_city() {
        return a_city;
    }

    public void setA_city(String a_city) {
        this.a_city = a_city == null ? null : a_city.trim();
    }

    public String getA_district() {
        return a_district;
    }

    public void setA_district(String a_district) {
        this.a_district = a_district == null ? null : a_district.trim();
    }

    public String getA_address() {
        return a_address;
    }

    public void setA_address(String a_address) {
        this.a_address = a_address == null ? null : a_address.trim();
    }

    public Date getA_createtime() {
        return a_createtime;
    }

    public void setA_createtime(Date a_createtime) {
        this.a_createtime = a_createtime;
    }

    public Date getA_updatetime() {
        return a_updatetime;
    }

    public void setA_updatetime(Date a_updatetime) {
        this.a_updatetime = a_updatetime;
    }
}