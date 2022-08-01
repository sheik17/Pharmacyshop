package com.chainsys.pharmacyshop.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="BillDetails")
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
