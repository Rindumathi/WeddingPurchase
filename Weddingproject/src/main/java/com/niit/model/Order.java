package com.niit.model;

import java.util.List;
import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="Orders")
@Component
public class Order
{
	 @Id
private String oid;
private double groand_total;
private String date;
private String time;
@OneToOne
@JoinColumn(name="bId")
private Billing billing;
@OneToOne
@JoinColumn(name="ship_Id")
private ShippingAddress shippingAddress;
@OneToOne
@JoinColumn(name="uId")
private UserInfo userInfo;
@OneToOne
@JoinColumn(name="pay_id")
private Pay pay;
@OneToMany(mappedBy="order")
private List<OrderItem> orderItem;
public Order()
{
	 this.oid="ORDER"+UUID.randomUUID().toString().substring(30).toUpperCase();
}
public List<OrderItem> getOrderItem() {
	return orderItem;
}
public void setOrderItem(List<OrderItem> orderItem) {
	this.orderItem = orderItem;
}
public Pay getPay() {
	return pay;
}
public void setPay(Pay pay) {
	this.pay = pay;
}
public UserInfo getUserInfo() {
	return userInfo;
}
public void setUserInfo(UserInfo userInfo) {
	this.userInfo = userInfo;
}
public ShippingAddress getShippingAddress() {
	return shippingAddress;
}
public void setShippingAddress(ShippingAddress shippingAddress) {
	this.shippingAddress = shippingAddress;
}
public Billing getBilling() {
	return billing;
}
public void setBilling(Billing billing) {
	this.billing = billing;
}

public String getOid() {
	return oid;
}
public void setOid(String oid) {
	this.oid = oid;
}
public double getGroand_total() {
	return groand_total;
}
public void setGroand_total(double groand_total) {
	this.groand_total = groand_total;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}


}
