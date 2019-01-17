package com.entity;

import java.util.Date;

public class Users {
    private Integer u_ID;

    private String u_Name;

    private String u_TureName;

    private String u_Gender;

    private Date u_Birth;

    private String u_CardID;

    private String u_Address;

    private String u_Posecode;

    private String u_Mobile;

    private String u_Phone;

    private String u_Email;

    private String u_Password;

    private String u_SafeCode;

    private String u_QuesCode;

    private String u_Answer;

    private String u_Type;

    public Integer getU_ID() {
        return u_ID;
    }

    public void setU_ID(Integer u_ID) {
        this.u_ID = u_ID;
    }

    public String getU_Name() {
        return u_Name;
    }

    public void setU_Name(String u_Name) {
        this.u_Name = u_Name == null ? null : u_Name.trim();
    }

    public String getU_TureName() {
        return u_TureName;
    }

    public void setU_TureName(String u_TureName) {
        this.u_TureName = u_TureName == null ? null : u_TureName.trim();
    }

    public String getU_Gender() {
        return u_Gender;
    }

    public void setU_Gender(String u_Gender) {
        this.u_Gender = u_Gender == null ? null : u_Gender.trim();
    }

    public Date getU_Birth() {
        return u_Birth;
    }

    public void setU_Birth(Date u_Birth) {
        this.u_Birth = u_Birth;
    }

    public String getU_CardID() {
        return u_CardID;
    }

    public void setU_CardID(String u_CardID) {
        this.u_CardID = u_CardID == null ? null : u_CardID.trim();
    }

    public String getU_Address() {
        return u_Address;
    }

    public void setU_Address(String u_Address) {
        this.u_Address = u_Address == null ? null : u_Address.trim();
    }

    public String getU_Posecode() {
        return u_Posecode;
    }

    public void setU_Posecode(String u_Posecode) {
        this.u_Posecode = u_Posecode == null ? null : u_Posecode.trim();
    }

    public String getU_Mobile() {
        return u_Mobile;
    }

    public void setU_Mobile(String u_Mobile) {
        this.u_Mobile = u_Mobile == null ? null : u_Mobile.trim();
    }

    public String getU_Phone() {
        return u_Phone;
    }

    public void setU_Phone(String u_Phone) {
        this.u_Phone = u_Phone == null ? null : u_Phone.trim();
    }

    public String getU_Email() {
        return u_Email;
    }

    public void setU_Email(String u_Email) {
        this.u_Email = u_Email == null ? null : u_Email.trim();
    }

    public String getU_Password() {
        return u_Password;
    }

    public void setU_Password(String u_Password) {
        this.u_Password = u_Password == null ? null : u_Password.trim();
    }

    public String getU_SafeCode() {
        return u_SafeCode;
    }

    public void setU_SafeCode(String u_SafeCode) {
        this.u_SafeCode = u_SafeCode == null ? null : u_SafeCode.trim();
    }

    public String getU_QuesCode() {
        return u_QuesCode;
    }

    public void setU_QuesCode(String u_QuesCode) {
        this.u_QuesCode = u_QuesCode == null ? null : u_QuesCode.trim();
    }

    public String getU_Answer() {
        return u_Answer;
    }

    public void setU_Answer(String u_Answer) {
        this.u_Answer = u_Answer == null ? null : u_Answer.trim();
    }

    public String getU_Type() {
        return u_Type;
    }

    public void setU_Type(String u_Type) {
        this.u_Type = u_Type == null ? null : u_Type.trim();
    }
}