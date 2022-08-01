package com.chainsys.pharmacyshop.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Payments")
public class Payment {
	@Column(name="USER_ID")
	private int userid;
	@Column(name="MODEOFPAYMENT")
	private String modeofpayment;
	@Column(name="BALANCE")
	private float balance;
	@Column(name="BILL_ID")
	private int billid;
	@Id
	@Column(name="PAYMENT_ID")
	private int paymentid;
	@Column(name="PAYMENT_DATE")
	private Date paymentdate;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getModeofpayment() {
		return modeofpayment;
	}
	public void setModeofpayment(String modeofpayment) {
		this.modeofpayment = modeofpayment;
	}
	public float getBalance() {
		return balance;
	}
	public void setBalance(float balance) {
		this.balance = balance;
	}
	public int getBillid() {
		return billid;
	}
	public void setBillid(int billid) {
		this.billid = billid;
	}
	public int getPaymentid() {
		return paymentid;
	}
	public void setPaymentid(int paymentid) {
		this.paymentid = paymentid;
	}
	public Date getPaymentdate() {
		return paymentdate;
	}
	public void setPaymentdate(Date paymentdate) {
		this.paymentdate = paymentdate;
	}

	}
