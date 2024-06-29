package com.web.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Bank {
	
	@Id
	private long accountno;
	private String name;
	private String password;
	private double amount;
	private String address;
	private long mobile_num;
	
	public Bank() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Bank(long accountno, String name, String password, double amount, String address, long mobile_num) {
		super();
		this.accountno = accountno;
		this.name = name;
		this.password = password;
		this.amount = amount;
		this.address = address;
		this.mobile_num = mobile_num;
	}

	public long getAccountno() {
		return accountno;
	}

	public void setAccountno(long accountno) {
		this.accountno = accountno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getMobile_num() {
		return mobile_num;
	}

	public void setMobile_num(long mobile_num) {
		this.mobile_num = mobile_num;
	}

	@Override
	public String toString() {
		return "Bank [accountno=" + accountno + ", name=" + name + ", password=" + password + ", amount=" + amount
				+ ", address=" + address + ", mobile_num=" + mobile_num + "]";
	}

}
