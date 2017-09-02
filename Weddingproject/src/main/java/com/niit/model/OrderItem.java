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
public class OrderItem 
{
	 @Id
	private String oiId;
	private String product_Item;
	@ManyToOne
	@JoinColumn(name="oid")
	private Order order;
	public OrderItem()
	{
		 this.oiId="ORDERITEM"+UUID.randomUUID().toString().substring(30).toUpperCase();
	}

	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	
	public String getOiId() {
		return oiId;
	}
	public void setOiId(String oiId) {
		this.oiId = oiId;
	}
	public String getProduct_Item() {
		return product_Item;
	}
	public void setProduct_Item(String product_Item) {
		this.product_Item = product_Item;
	}
	

}
