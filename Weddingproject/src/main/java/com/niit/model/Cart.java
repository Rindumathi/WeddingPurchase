package com.niit.model;

import java.util.List;
import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Cart 
{
    @Id
	private String cart_id;
	private double groand_total=00.0;
	private int total_item=0;
	@OneToMany(mappedBy="cart")
	private List<CartItem> cartItem;
	public Cart()
	 {
		 this.cart_id="CART"+UUID.randomUUID().toString().substring(30).toUpperCase();
	 }
	public List<CartItem> getCartItem() {
		return cartItem;
	}
	public void setCartItem(List<CartItem> cartItem) {
		this.cartItem = cartItem;
	}
	public String getCart_id() {
		return cart_id;
	}
	public void setCart_id(String cart_id) {
		this.cart_id = cart_id;
	}
	public double getGroand_total() {
		return groand_total;
	}
	public void setGroand_total(double groand_total) {
		this.groand_total = groand_total;
	}
	public int getTotal_item() {
		return total_item;
	}
	public void setTotal_item(int total_item) {
		this.total_item = total_item;
	}
	
	

}
