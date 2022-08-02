package com.chainsys.pharmacyshop.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="Medicine")
public class Medicine {
	@Id
	@Column(name="MEDICINE_ID")
	private int medicineid;
	@Column(name="MEDICINE_NAME")
	private String medicinename;
	@Column(name="QUANTITY")
	private int quantity;
	@Column(name="PRICE")
	private float price;
	@Column(name="EXP_DATE")
	Date expdate;
	@Column(name="PESCRIPTION_REQ")
	private String pescriptionreq;
	@Column(name="MANUFACTURE")
	Date manufacture;
	@Column(name="STOCKS")
	private long stocks;
	@Lob
	@Column(name="MEDICINE_IMG")
    private String medicineimg;
	
	public int getMedicineid() {
		return medicineid;
	}
	public void setMedicineid(int medicineid) {
		this.medicineid = medicineid;
	}
	public String getMedicinename() {
		return medicinename;
	}
	public void setMedicinename(String medicinename) {
		this.medicinename = medicinename;
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
	public Date getExpdate() {
		return expdate;
	}
	public void setExpdate(Date expdate) {
		this.expdate = expdate;
	}
	public String getPescriptionreq() {
		return pescriptionreq;
	}
	public void setPescriptionreq(String pescriptionreq) {
		this.pescriptionreq = pescriptionreq;
	}
	public Date getManufacture() {
		return manufacture;
	}
	public void setManufacture(Date manufacture) {
		this.manufacture = manufacture;
	}
	public long getStocks() {
		return stocks;
	}
	public void setStocks(long stocks) {
		this.stocks = stocks;
	}
	public String getMedicineimg() {
		return medicineimg;
	}
	public void setMedicineimg(String medicineimg) {
		this.medicineimg = medicineimg;
	}
	
	
}