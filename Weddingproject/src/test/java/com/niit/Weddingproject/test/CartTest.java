package com.niit.Weddingproject.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.CartDao;
import com.niit.model.Cart;

public class CartTest 
{
	public static void main(String args[])
	{
	AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
	context.scan("com.niit.*");
	context.refresh();
	Cart cart=(Cart)context.getBean("cart");
	CartDao cartDao=(CartDao)context.getBean("cartDao");
	cart.setCart_id("101");
	cart.setGroand_total(1205);
    cart.setTotal_item(9);	
	if(cartDao.saveorupdate(cart)==true)
	{
		System.out.println("Cart is saved successfully");
	}
	else
	{
		System.out.println("Cart is not saved");
	}
	cart.setCart_id("102");
	cart.setGroand_total(1205);
    cart.setTotal_item(9);	
	
	if(cartDao.saveorupdate(cart)==true)
	{
		System.out.println("Cart is saved successfully");
	}
	else
	{
		System.out.println("Cart is not saved");
	}
cart=cartDao.GetCart("102");
if(cartDao.delete(cart)==true)
{
	System.out.println("Cart deleted");
}
else
{
	System.out.println("Cart not deleted");
}
cart=cartDao.GetCart("101");
if(cart==null)
{
	System.out.println("Cart not found");
}
else
{
	System.out.println(cart.getCart_id());
	System.out.println(cart.getGroand_total());
	System.out.println(cart.getTotal_item());
}
}


}
