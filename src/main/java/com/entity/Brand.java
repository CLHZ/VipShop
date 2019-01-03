package com.entity;

public class Brand {
    private String b_ID;

    private String b_Name;

    private String g_BID;

    private String b_Picture;

    private Float b_Discount;

    private String b_Tile;

    private String b_Publish;

    public String getB_ID() {
        return b_ID;
    }

    public void setB_ID(String b_ID) {
        this.b_ID = b_ID == null ? null : b_ID.trim();
    }

    public String getB_Name() {
        return b_Name;
    }

    public void setB_Name(String b_Name) {
        this.b_Name = b_Name == null ? null : b_Name.trim();
    }

    public String getG_BID() {
        return g_BID;
    }

    public void setG_BID(String g_BID) {
        this.g_BID = g_BID == null ? null : g_BID.trim();
    }

    public String getB_Picture() {
        return b_Picture;
    }

    public void setB_Picture(String b_Picture) {
        this.b_Picture = b_Picture == null ? null : b_Picture.trim();
    }

    public Float getB_Discount() {
        return b_Discount;
    }

    public void setB_Discount(Float b_Discount) {
        this.b_Discount = b_Discount;
    }

    public String getB_Tile() {
        return b_Tile;
    }

    public void setB_Tile(String b_Tile) {
        this.b_Tile = b_Tile == null ? null : b_Tile.trim();
    }

    public String getB_Publish() {
        return b_Publish;
    }

    public void setB_Publish(String b_Publish) {
        this.b_Publish = b_Publish == null ? null : b_Publish.trim();
    }
}