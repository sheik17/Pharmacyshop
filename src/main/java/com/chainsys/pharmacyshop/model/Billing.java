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
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name="Billing")
public class Billing {
		@Id
		@GeneratedValue(strategy = GenerationType.AUTO, generator = "BILL_ID_REF")
		@SequenceGenerator(name = "BILL_ID_REF", sequenceName = "BILL_ID_REF", allocationSize = 1)
		@Column(name="BILL_ID")
		private int billid;
		@Column(name="CUS_NAME")
		private String cusName;   
		@Column(name="CUS_PHONE_NO")
		private long cusPhoneno; 
		@Column(name="BILL_DATE")
		private Date billdate;
		@Column(name="PESCRIPTION_IMG")
		private String pescriptionimg;
		@Column(name="BILL_AMOUNT")
		private float billamount;
		@OneToMany(mappedBy="bill", fetch= FetchType.LAZY)
		private List<BillDetails> billdetail;
		@OneToOne(mappedBy="bills",fetch= FetchType.LAZY)
		private Payment payments;
		
		public String getCusName() {
			return cusName;
		}
		public void setCusName(String cusName) {
			this.cusName = cusName;
		}
		public long getCusPhoneno() {
			return cusPhoneno;
		}
		public void setCusPhoneno(long cusPhoneno) {
			this.cusPhoneno = cusPhoneno;
		}
		public Payment getPayments() {
			return payments;
		}
		public void setPayments(Payment payments) {
			this.payments = payments;
		}
		public List<BillDetails> getBilldetail() {
			return billdetail;
		}
		public void setBilldetail(List<BillDetails> billdetail) {
			this.billdetail = billdetail;
		}


		
		public int getBillid() {
			return billid;
		}
		public void setBillid(int billid) {
			this.billid = billid;
		}
		public Date getBilldate() {
			return billdate;
		}
		public void setBilldate(Date billdate) {
			this.billdate = billdate;
		}
		public String getPescriptionimg() {
			return pescriptionimg;
		}
		public void setPescriptionimg(String pescriptionimg) {
			this.pescriptionimg = pescriptionimg;
		}
		public float getBillamount() {
			return billamount;
		}
		public void setBillamount(float billamount) {
			this.billamount = billamount;
		}
		
}
