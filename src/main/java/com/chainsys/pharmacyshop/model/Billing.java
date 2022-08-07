package com.chainsys.pharmacyshop.model;


import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="Billing")
public class Billing {
		@Id
		@Column(name="BILL_ID")
		private int billid;
		@Column(name="USER_ID")
		private int userid;   
		@Column(name="BILL_DATE")
		private Date billdate;
		@Column(name="PESCRIPTION_IMG")
		private String pescriptionimg;
		@Column(name="BILL_AMOUNT")
		private float billamount;
		@ManyToOne(fetch=FetchType.LAZY)
		@JoinColumn(name="USER_ID",nullable=false, insertable=false, updatable=false)
		private User user;
		@OneToMany(mappedBy="bill", fetch= FetchType.LAZY)
		private List<BillDetails> billdetail;
		@OneToOne(mappedBy="bills",fetch= FetchType.LAZY)
		private Payment payments;
		
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
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		
		public int getBillid() {
			return billid;
		}
		public void setBillid(int billid) {
			this.billid = billid;
		}
		public int getUserid() {
			return userid;
		}
		public void setUserid(int userid) {
			this.userid = userid;
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
