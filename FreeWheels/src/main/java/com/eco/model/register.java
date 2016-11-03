package com.eco.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class register {

	@Id 
	@GeneratedValue
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column
	private String FirstName;
	@Column
	private String LastName;
	@Column
	private String Emailid;
	@Column
	private int ContactNo;
	@Column
	private String NewPassword;
	@Column
	private String ConfirmPassword;
	@Column
	private String role;
	
	
	
	@Column
	public String getFirstName() {
		return FirstName;
	
	}
	public void setFirstName(String FirstName) {
		this.FirstName = FirstName;
	}
	public String getLastName() {
		return LastName;
	
	}
	public void setLastName(String LastName) {
		this.LastName = LastName;
	}
	public String getEmailid() {
		return Emailid;
	
	}
	public void setEmailid(String Emailid) {
		this.Emailid = Emailid;
	}
	public int getContactNo() {
		return ContactNo;
	}
	public void setContactNo(int ContactNo) {
		this.ContactNo = ContactNo;
	}
	public String getNewPassword() {
		return NewPassword;
	
	}
	public void setNewPassword(String NewPassword) {
		this.NewPassword = NewPassword;
	}
	public String getConfirmPassword() {
		return ConfirmPassword;
	
	}
	public void setConfirmPassword(String ConfirmPassword) {
		this.ConfirmPassword = ConfirmPassword;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
}
	
