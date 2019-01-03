package com.entity;

public class Types {
    private Integer t_ID;

    private String t_Name;

    private Integer t_parentID;

    private String t_Description;

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