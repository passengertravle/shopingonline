package main.java;

import java.sql.Date;

public class Goods {
	private int gID;
	private int gNumber;
	private String gName;
	private Date gBirth;
	private Date gProtect;
	private double normalPrice;
	private double finalPirce;
	private String gDescr;
	public int getgID() {
		return gID;
	}
	public void setgID(int gID) {
		this.gID = gID;
	}
	public int getgNumber() {
		return gNumber;
	}
	public void setgNumber(int gNumber) {
		this.gNumber = gNumber;
	}
	public String getgName() {
		return gName;
	}
	public void setgName(String gName) {
		this.gName = gName;
	}
	public Date getgBirth() {
		return gBirth;
	}
	public void setgBirth(Date gBirth) {
		this.gBirth = gBirth;
	}
	public Date getgProtect() {
		return gProtect;
	}
	public void setgProtect(Date gProtect) {
		this.gProtect = gProtect;
	}
	public double getNormalPrice() {
		return normalPrice;
	}
	public void setNormalPrice(double normalPrice) {
		this.normalPrice = normalPrice;
	}
	public double getFinalPirce() {
		return finalPirce;
	}
	public void setFinalPirce(double finalPirce) {
		this.finalPirce = finalPirce;
	}
	public String getgDescr() {
		return gDescr;
	}
	public void setgDescr(String gDescr) {
		this.gDescr = gDescr;
	}
	

}
