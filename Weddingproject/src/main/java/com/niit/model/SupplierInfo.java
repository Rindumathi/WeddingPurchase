package com.niit.model;

import java.util.List;
import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class SupplierInfo 
{
     @Id	
	 private String supId;
	 private String name;
	 private String Add;
	 private long phNo;
	 @OneToMany(mappedBy="supplierInfo")
	 private List<ProductInfo> productInfo;
	 public SupplierInfo()
		{
			 this.supId="SUPPLIERINFO"+UUID.randomUUID().toString().substring(30).toUpperCase();
		}
	public List<ProductInfo> getProductInfo() {
		return productInfo;
	}
	public void setProductInfo(List<ProductInfo> productInfo) {
		this.productInfo = productInfo;
	}
	public String getSupId() {
		return supId;
	}
	public void setSupId(String supId) {
		this.supId = supId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAdd() {
		return Add;
	}
	public void setAdd(String add) {
		Add = add;
	}
	public long getPhNo() {
		return phNo;
	}
	public void setPhNo(long phNo) {
		this.phNo = phNo;
	}
	 

}
