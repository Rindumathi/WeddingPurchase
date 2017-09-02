package com.niit.Dao;

import java.util.List;

import com.niit.model.Pay;

public interface PayDao
{
	public boolean saveorupdate(Pay pay);
	public boolean delete(Pay pay);
	public Pay GetPay(String pay_id);
	public List<Pay> list();
}
