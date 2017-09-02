package com.niit.Dao;

import java.util.List;

import com.niit.model.SupplierInfo;

public interface SupplierDao 
{
	public boolean saveorupdate(SupplierInfo supplier);
	public boolean delete(SupplierInfo supplier);
	public SupplierInfo Getsupplier(String supId);
	public List<SupplierInfo> list();
	}
