package com.niit.Dao;

import java.util.List;

import com.niit.model.Billing;

public interface BillingDao 
{
	public boolean saveorupdate(Billing billing);
	public boolean delete(Billing billing);
	public Billing GetBilling(String uId);
	public List<Billing> list();
}
