package com.niit.Dao;

import java.util.List;

import com.niit.model.ShippingAddress;

public interface ShippingAddressDao 
{
	public boolean saveorupdate(ShippingAddress shippingAddress );
	public boolean delete(ShippingAddress shippingAddress );
	public ShippingAddress  GetShippingAddress (String ship_Id);
	public List<ShippingAddress > list();
	public List<ShippingAddress> getaddbyUserInfo(String uId);
	

}
