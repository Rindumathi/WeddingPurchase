package com.niit.model;

import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class ShippingAddress 
{
	 @Id
	 private String ship_Id;
	 private String house_no;
	 private String Country;
	 private String City;
	 private String pincode;
	 private long phNo;
	 private String emailid;
	 private String first_name;
	 private String last_name;
	 @ManyToOne
	 @JoinColumn(name="uId")
	 private UserInfo userInfo;
	 public ShippingAddress()
		{
			 this.ship_Id="SHIPPINGADDRESS"+UUID.randomUUID().toString().substring(30).toUpperCase();
		}
	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public String getShip_Id() {
		return ship_Id;
	}

	public void setShip_Id(String ship_Id) {
		this.ship_Id = ship_Id;
	}

	public String getHouse_no() {
		return house_no;
	}

	public void setHouse_no(String house_no) {
		this.house_no = house_no;
	}

	public String getCountry() {
		return Country;
	}

	public void setCountry(String country) {
		Country = country;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public long getPhNo() {
		return phNo;
	}

	public void setPhNo(long phNo) {
		this.phNo = phNo;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	
}
