package com.niit.model;

import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Pay 
{
	 @Id
	private String pay_id;
	private String pay_method;
	private String status;
	public Pay()
	{
		 this.pay_id="PAY"+UUID.randomUUID().toString().substring(30).toUpperCase();
	}


	public String getPay_id() {
		return pay_id;
	}


	public void setPay_id(String pay_id) {
		this.pay_id = pay_id;
	}


	public String getPay_method() {
		return pay_method;
	}


	public void setPay_method(String pay_method) {
		this.pay_method = pay_method;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	
}
