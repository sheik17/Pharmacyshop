package com.chainsys.pharmacyshop.pojo;

import java.io.File;
import java.util.Date;

public class Medicine {
	private int medicine_id;
	private String medicine_name;
	private int quantity;
	private float price;
	Date exp_date;
	private String description_req;
	private Date manufacture;
	private long stocks;
	private File medicine_img;
	public int getMedicine_id() {
		return medicine_id;
	}
	public void setMedicine_id(int medicine_id) {
		this.medicine_id = medicine_id;
	}
	public String getMedicine_name() {
		return medicine_name;
	}
	public void setMedicine_name(String medicine_name) {
		this.medicine_name = medicine_name;
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
	public Date getExp_date() {
		return exp_date;
	}
	public void setExp_date(Date exp_date) {
		this.exp_date = exp_date;
	}
	public String getDescription_req() {
		return description_req;
	}
	public void setDescription_req(String description_req) {
		this.description_req = description_req;
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
	public File getMedicine_img() {
		return medicine_img;
	}
	public void setMedicine_img(File medicine_img) {
		this.medicine_img = medicine_img;
	}
}