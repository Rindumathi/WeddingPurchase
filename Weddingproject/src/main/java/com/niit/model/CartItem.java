package com.niit.model;

import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class CartItem 
{
	 @Id
private String carti_id;
private float price;
@ManyToOne
@JoinColumn(name="cart_id")
private Cart cart;

@OneToOne
@JoinColumn(name="prdid")
private ProductInfo productInfo;
public CartItem()
{
	 this.carti_id="CARTITEM"+UUID.randomUUID().toString().substring(30).toUpperCase();
}

public ProductInfo getProductInfo() {
	return productInfo;
}
public void setProductInfo(ProductInfo productInfo) {
	this.productInfo = productInfo;
}
public Cart getCart() {
	return cart;
}
public void setCart(Cart cart) {
	this.cart = cart;
}
public String getCarti_id() {
	return carti_id;
}
public void setCarti_id(String carti_id) {
	this.carti_id = carti_id;
}
public float getPrice() {
	return price;
}
public void setPrice(float price) {
	this.price = price;
}

}
