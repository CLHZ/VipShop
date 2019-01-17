package com.entity;

public class SubType {
		private Integer t_ID; 
		
		private String t_Name;

	    private Integer t_parentID;
	    
	    private String g_Name;
	    
	    private String g_Status;
	    
	    public String getG_Status() {
			return g_Status;
		}

		public void setG_Status(String g_Status) {
			this.g_Status = g_Status;
		}

		public String getG_Discount() {
			return g_Discount;
		}

		public void setG_Discount(String g_Discount) {
			this.g_Discount = g_Discount;
		}

		public float getG_Price() {
			return g_Price;
		}

		public void setG_Price(float g_Price) {
			this.g_Price = g_Price;
		}

		private String g_Discount;
	    
	    private float g_Price;

		public String getG_Name() {
			return g_Name;
		}

		public void setG_Name(String g_Name) {
			this.g_Name = g_Name;
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
			this.t_Name = t_Name;
		}

		public Integer getT_parentID() {
			return t_parentID;
		}

		public void setT_parentID(Integer t_parentID) {
			this.t_parentID = t_parentID;
		}
}
