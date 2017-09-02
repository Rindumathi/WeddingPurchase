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
public class CategoryInfo 
{
	@Id
	private String catid;
	private String catname;
	@OneToMany(mappedBy="categoryInfo")
	private List<ProductInfo> productInfo;
	public CategoryInfo()
	{
		 this.catid="CATEGORYINFO"+UUID.randomUUID().toString().substring(30).toUpperCase();
	}
	
	public List<ProductInfo> getProductInfo() {
		return productInfo;
	}
	public void setProductInfo(List<ProductInfo> productInfo) {
		this.productInfo = productInfo;
	}
	public String getCatid() {
		return catid;
	}
	public void setCatid(String catid) {
		this.catid = catid;
	}
	public String getCatname() {
		return catname;
	}
	public void setCatname(String catname) {
		this.catname = catname;
	}
	
}
