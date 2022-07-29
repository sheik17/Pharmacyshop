package com.chainsys.pharmacyshop.pojo;

import java.io.File;
import java.util.Date;

import org.springframework.boot.ImageBanner;

public class Billing {
		private int bill_id;
		private int user_id;    
		private Date bill_date;
		private File description_img;
		private float bill_amount;
		public int getBill_id() {
			return bill_id;
		}
		public void setBill_id(int bill_id) {
			this.bill_id = bill_id;
		}
		public int getUser_id() {
			return user_id;
		}
		public void setUser_id(int user_id) {
			this.user_id = user_id;
		}
		public Date getBill_date() {
			return bill_date;
		}
		public void setBill_date(Date bill_date) {
			this.bill_date = bill_date;
		}
		public File getDescription_img() {
			return description_img;
		}
		public void setDescription_img(File description_img) {
			this.description_img = description_img;
		}
		public float getBill_amount() {
			return bill_amount;
		}
		public void setBill_amount(float bill_amount) {
			this.bill_amount = bill_amount;
		}
}
