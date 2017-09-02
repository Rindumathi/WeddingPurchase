package com.niit.Weddingproject.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.OrderItemDao;
import com.niit.model.OrderItem;

public class OrderItemTest 
{
	public static void main(String args[])
	{
	AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
	context.scan("com.niit.*");
	context.refresh();
	OrderItem orderItem=(OrderItem)context.getBean("orderItem");
	OrderItemDao orderItemDao=(OrderItemDao)context.getBean("orderItemDao");
	orderItem.setOiId("101");
	orderItem.setProduct_Item("Electronics");
	
	if(orderItemDao.saveorupdate(orderItem)==true)
	{
		System.out.println("OrderItem is saved successfully");
	}
	else
	{
		System.out.println("OrderItem is not saved");
	}
	orderItem.setOiId("102");
	orderItem.setProduct_Item("Electronics");
	if(orderItemDao.saveorupdate(orderItem)==true)
	{
		System.out.println("OrderItem is saved successfully");
	}
	else
	{
		System.out.println("OrderItem is not saved");
	}
	orderItem=orderItemDao.GetOrderItem("102");
if(orderItemDao.delete(orderItem)==true)
{
	System.out.println("OrderItem deleted");
}
else
{
	System.out.println("OrderItem not deleted");
}
orderItem=orderItemDao.GetOrderItem("101");
if(orderItem==null)
{
	System.out.println("OrderItem not found");
}
else
{
	System.out.println(orderItem.getOiId());
	System.out.println(orderItem.getProduct_Item());
	
}
}

	
	

}
