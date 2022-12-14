package com.chainsys.pharmacyshop.model;


import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Future;
import javax.validation.constraints.Past;

@Entity
@Table(name="Medicine")
public class Medicine {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "MEDICINE_ID_REF")
	@SequenceGenerator(name = "MEDICINE_ID_REF", sequenceName = "MEDICINE_ID_REF", allocationSize = 1)
	@Column(name="MEDICINE_ID")
	private int medicineid;
	@Column(name="MEDICINE_NAME")
	private String medicinename;
	@Column(name="PRICE")
	private float price;
	@Column(name="EXP_DATE")
	@Future
	private Date expdate;
	@Column(name="PESCRIPTION_REQ")
	private String pescriptionreq;
	@Column(name="MANUFACTURE")
	@Past
	private Date manufacture;
	@Column(name="STOCKS")
	private long stocks;
	@Column(name="MEDICINE_IMG")
    private String medicineimg;
	@OneToMany(mappedBy="med", fetch= FetchType.LAZY)
	private List<BillDetails> billdetail;
	
	public List<BillDetails> getBilldetail() {
		return billdetail;
	}
	public void setBilldetail(List<BillDetails> billdetail) {
		this.billdetail = billdetail;
	}
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