package com.chainsys.pharmacyshop.pojo;

import javax.persistence.Column;

public class Admin {
	@Column(name="user_id")
	private int admin_id;
	private String admin_Name;
	private String admin_Password;
	private long phone_No;
	private String email;
	private String role;
	public String getAdmin_Name() {
		return admin_Name;
	}
	public void setAdmin_Name(String admin_Name) {
		this.admin_Name = admin_Name;
	}
	public String getAdmin_Password() {
		return admin_Password;
	}
	public void setAdmin_Password(String admin_Password) {
		this.admin_Password = admin_Password;
	}
	public long getPhone_No() {
		return phone_No;
	}
	public void setPhone_No(long phone_No) {
		this.phone_No = phone_No;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	@Override
	public String toString() {
		return "User [id=" + admin_id + ", email=" + email + ", password=" + admin_Password + ", Username=" + admin_Name
				+ ", phone_no =" + phone_No + ", role=" + role + "]";
	}
}