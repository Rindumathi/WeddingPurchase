package com.niit.model;

import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class UserInfo 
{
	 @Id
	 private String uId;
	 private String name;
	 private String email;
	 private String password;
	 private long phNo;
	 private String gender;
	 private String city;
	 private String role="ROLE_USER";
	 @OneToOne
	 @JoinColumn(name="bId")
	 private Billing billing;
	 @OneToOne
	 @JoinColumn(name="cart_id")
	 private Cart cart;
	 
	 
	 public Billing getBilling() {
		return billing;
	}
	public void setBilling(Billing billing) {
		this.billing = billing;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	 public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public UserInfo()
		{
			 this.uId="USERINFO"+UUID.randomUUID().toString().substring(30).toUpperCase();
		}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public long getPhNo() {
		return phNo;
	}
	public void setPhNo(long phNo) {
		this.phNo = phNo;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	

}
