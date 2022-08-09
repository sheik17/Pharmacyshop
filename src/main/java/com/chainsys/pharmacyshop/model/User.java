package com.chainsys.pharmacyshop.model;

import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


@Entity
@Table(name = "Med_Users")
public class User {
	@Id
	@Column(name="USER_ID")
	private int userId;
	
	@Column(name="USER_NAME")
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
	@NotBlank(message = "*Name can't be Empty")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid name ")
	private String userName;
	
	@Column(name="USER_PASSWORD")
	@Size(max = 20, min = 8, message = "*Minimum eight characters ")
    @NotBlank(message = "*Secretword can't be Empty")
    @Pattern(regexp = "^(?=.[A-Za-z])(?=.\\d)(?=.[@$!%#?&])[A-Za-z\\d@$!%*#?&]{8,}$", message = "*at least one letter, one number and one special character ")
	private String userPassword;
	
	@Column(name="PHONE_NO")
	//@Range(min = 10,max= 10, message = "phone_no should be exact 10 characters." )
	private long phoneNo;
	
	@Column(name="EMAIL")
	@Email(message = "*Email is not valid")
	@NotEmpty(message = "*Please enter email")
	private String email;
	
	@Column(name="ROLE")
	private String role;
	
	@OneToMany(mappedBy="user", fetch= FetchType.LAZY)
	private List<Billing> bill;
	
	@OneToMany(mappedBy="users", fetch= FetchType.LAZY)
	private List<Payment> payment;
	
	public List<Billing> getBill() {
		return bill;
	}
	public void setBill(List<Billing> bill) {
		this.bill = bill;
	}
	
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