package com.bank.DAO;

public class User {
	private String fname;
	private String accNum;
	private String gender;
	private String ifsc;
	private String mobileNum;
	private String accType;
	
	public User() {
		super();
	}
	public User(String fname, String accNum, String gender, String ifsc, String mobileNum, String accType) {
		this.fname = fname;
		this.accNum = accNum;
		this.gender = gender;
		this.ifsc = ifsc;
		this.mobileNum = mobileNum;
		this.accType = accType;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getAccNum() {
		return accNum;
	}
	public void setAccNum(String accNum) {
		this.accNum = accNum;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getIfsc() {
		return ifsc;
	}
	public void setIfsc(String ifsc) {
		this.ifsc = ifsc;
	}
	public String getMobileNum() {
		return mobileNum;
	}
	public void setMobileNum(String mobileNum) {
		this.mobileNum = mobileNum;
	}
	public String getAccType() {
		return accType;
	}
	public void setAccType(String accType) {
		this.accType = accType;
	}
	
}
