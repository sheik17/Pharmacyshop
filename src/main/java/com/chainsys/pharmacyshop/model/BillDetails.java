package com.chainsys.pharmacyshop.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Billdetails")
public class BillDetails {
	@Id
	@Column(name="BILL_ID")
	private int billid;
	@Column(name="MEDICINE_ID")
	private int medicineid;
	@Column(name="QUANTITY")
	private int quantity;
	@Column(name="PRICE")
	private float price;
	@Column(name="AMOUNT")
	private float amount;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="MEDICINE_ID",nullable=false, insertable=false, updatable=false)
	private Medicine med;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="BILL_ID",nullable=false, insertable=false, updatable=false)
	private Billing bill;
	
	public Billing getBill() {
		return bill;
	}
	public void setBill(Billing bill) {
		this.bill = bill;
	}
	public Medicine getMed() {
		return med;
	}
	public void setMed(Medicine med) {
		this.med = med;
	}
	
	public int getBillid() {
		return billid;
	}
	public void setBillid(int billid) {
		this.billid = billid;
	}
	public int getMedicineid() {
		return medicineid;
	}
	public void setMedicineid(int medicineid) {
		this.medicineid = medicineid;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	
}
