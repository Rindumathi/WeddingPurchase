package com.niit.model;

import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table
@Component
public class ProductInfo 
{
	private String prdname;
	@Id
	private String prdid;
	private String prdDes;
	private float Quantity;
	private float price;
	@Transient
	private MultipartFile pimg;
	@ManyToOne
	@JoinColumn(name="catid")
	private CategoryInfo categoryInfo;
	@ManyToOne
	@JoinColumn(name="supId")
	private SupplierInfo supplierInfo;
	public ProductInfo()
	{
		 this.prdid="PRODUCTINFO"+UUID.randomUUID().toString().substring(30).toUpperCase();
	}
	public SupplierInfo getSupplierInfo() {
		return supplierInfo;
	}
	public void setSupplierInfo(SupplierInfo supplierInfo) {
		this.supplierInfo = supplierInfo;
	}
	public CategoryInfo getCategoryInfo() {
		return categoryInfo;
	}
	public void setCategoryInfo(CategoryInfo categoryInfo) {
		this.categoryInfo = categoryInfo;
	}
	public String getPrdname() {
		return prdname;
	}
	public void setPrdname(String prdname) {
		this.prdname = prdname;
	}
	public String getPrdid() {
		return prdid;
	}
	public void setPrdid(String prdid) {
		this.prdid = prdid;
	}
	public String getPrdDes() {
		return prdDes;
	}
	public void setPrdDes(String prdDes) {
		this.prdDes = prdDes;
	}
	public float getQuantity() {
		return Quantity;
	}
	public void setQuantity(float quantity) {
		Quantity = quantity;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public MultipartFile getPimg() {
		return pimg;
	}
	public void setPimg(MultipartFile pimg) {
		this.pimg = pimg;
	}
	
}
