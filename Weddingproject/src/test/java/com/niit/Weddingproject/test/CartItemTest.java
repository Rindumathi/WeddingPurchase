package com.niit.Weddingproject.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.CartItemDao;
import com.niit.model.CartItem;

public class CartItemTest 
{
	public static void main(String args[])
	{
	AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
	context.scan("com.niit.*");
	context.refresh();
	CartItem cartItem=(CartItem)context.getBean("cartItem");
	CartItemDao cartItemDao=(CartItemDao)context.getBean("cartItemDao");
	cartItem.setCarti_id("101");
	cartItem.setPrice(1205.00f);
	if(cartItemDao.saveorupdate(cartItem)==true)
	{
		System.out.println("CartItem is saved successfully");
	}
	else
	{
		System.out.println("CartItem is not saved");
	}
	cartItem.setCarti_id("102");
	cartItem.setPrice(1205.00f);
	if(cartItemDao.saveorupdate(cartItem)==true)
	{
		System.out.println("CartItem is saved successfully");
	}
	else
	{
		System.out.println("CartItem is not saved");
	}
cartItem=cartItemDao.GetCartItem("102");
if(cartItemDao.delete(cartItem)==true)
{
	System.out.println("CartItem deleted");
}
else
{
	System.out.println("CartItem not deleted");
}
cartItem=cartItemDao.GetCartItem("101");
if(cartItem==null)
{
	System.out.println("CartItem not found");
}
else
{
	System.out.println(cartItem.getCarti_id());
	System.out.println(cartItem.getPrice());
	
}
}

	

}
