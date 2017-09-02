package com.niit.Dao;

import java.util.List;

import com.niit.model.OrderItem;

public interface OrderItemDao 
{
	public boolean saveorupdate(OrderItem orderItem);
	public boolean delete(OrderItem orderItem);
	public OrderItem GetOrderItem(String oiId);
	public List<OrderItem> list();

}
