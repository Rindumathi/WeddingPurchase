package com.niit.Dao;

import java.util.List;

import com.niit.model.Cart;

public interface CartDao 
{
	public boolean saveorupdate(Cart cart);
	public boolean delete(Cart cart);
	public Cart GetCart(String cart_id);
	public List<Cart> list();
}
