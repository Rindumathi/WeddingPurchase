package com.niit.Dao;

import java.util.List;

import com.niit.model.CartItem;

public interface CartItemDao 
{
	public boolean saveorupdate(CartItem cartItem);
	public boolean delete(CartItem cartItem);
	public CartItem GetCartItem(String carti_id);
	public List<CartItem> list();
	public CartItem getListall(String carti_id,String prdid );
	public List<CartItem> getlist(String cart_id );
	
}
