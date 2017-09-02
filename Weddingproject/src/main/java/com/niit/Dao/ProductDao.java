package com.niit.Dao;

import java.util.List;

import com.niit.model.ProductInfo;


public interface ProductDao 
{
	public boolean saveorupdate(ProductInfo product);
	public boolean delete(ProductInfo product);
	public ProductInfo Getproduct(String prdid);
	public List<ProductInfo> list();
	public List<ProductInfo> GetProductByCategory(String id); 

}
