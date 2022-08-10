package com.chainsys.pharmacyshop.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "Payments")
public class Payment {
	@Column(name="USER_ID")
	private int userId;
	@Column(name="MODEOFPAYMENT")
	private String modeofpayment;
	@Column(name="BALANCE")
	private float balance;
	@Column(name="BILL_ID")
	private int billid;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "PAYMENT_ID_REF")
	@SequenceGenerator(name = "PAYMENT_ID_REF", sequenceName = "PAYMENT_ID_REF", allocationSize = 1)
	@Column(name="PAYMENT_ID")
	private int paymentid;
	@Column(name="PAYMENT_DATE")
	private Date paymentdate;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="USER_ID",nullable=false, insertable=false, updatable=false)
	private User users;
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="BILL_ID",nullable=false, insertable=false, updatable=false)
	private Billing bills;
	public Billing getBills() {
		return bills;
	}
	public void setBills(Billing bills) {
		this.bills = bills;
	}
	public User getUsers() {
		return users;
	}
	public void setUsers(User users) {
		this.users = users;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
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
