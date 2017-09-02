package com.niit.Dao;

import java.util.List;

import com.niit.model.Order;

public interface OrderDao 
{
	public boolean saveorupdate(Order order);
	public boolean delete(Order order);
	public Order GetOrder(String oid);
	public List<Order> list();

}
