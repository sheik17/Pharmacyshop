package com.chainsys.pharmacyshop.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Size;

@Entity
@Table(name = "Med_Users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "USER_ID_REF")
	@SequenceGenerator(name = "USER_ID_REF", sequenceName = "USER_ID_REF", allocationSize = 1)
	@Column(name = "USER_ID")
	private int userId;
	
	@Column(name = "USER_NAME")
	private String userName;
	@Size(max = 20, min = 8, message = "*Minimum eight characters ")
	@Column(name = "USER_PASSWORD")
	private String userPassword;

	@Column(name = "PHONE_NO")
	@Digits(message = "*Invalid Mobile Number", integer = 10, fraction = 0)
	private long phoneNo;
	@Column(name = "EMAIL")
	private String email;

	@Column(name = "ROLE")
	private String role;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public long getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
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

}