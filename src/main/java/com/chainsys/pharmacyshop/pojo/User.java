package com.chainsys.pharmacyshop.pojo;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User {
	private int user_id;
	private String user_Name;
	private String user_Password;
	private long phone_No;
	private String email;
	private String role;

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_Name() {
		return user_Name;
	}

	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}

	public String getUser_Password() {
		return user_Password;
	}

	public void setUser_Password(String user_Password) {
		this.user_Password = user_Password;
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

	@Override
	public String toString() {
		return "User [id=" + user_id + ", email=" + email + ", password=" + user_Password + ", Username=" + user_Name
				+ ", phone_no =" + phone_No + ", role=" + role + "]";
	}
}