package com.niit.Weddingproject.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.OrderDao;
import com.niit.model.Order;

public class OrderTest 
{
	public static void main(String args[])
	{
	AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
	context.scan("com.niit.*");
	context.refresh();
	Order order=(Order)context.getBean("order");
	OrderDao orderDao=(OrderDao)context.getBean("orderDao");
	order.setOid("101");
	order.setGroand_total(1205);
	order.setDate("18-08-2017");
	order.setTime("1.00am");
	if(orderDao.saveorupdate(order)==true)
	{
		System.out.println("Order is saved successfully");
	}
	else
	{
		System.out.println("Order is not saved");
	}
	order.setOid("101");
	order.setGroand_total(1205);
	order.setDate("18-08-2017");
	order.setTime("1.00am");
	if(orderDao.saveorupdate(order)==true)
	{
		System.out.println("Order is saved successfully");
	}
	else
	{
		System.out.println("Order is not saved");
	}
	order=orderDao.GetOrder("102");
if(orderDao.delete(order)==true)
{
	System.out.println("Order deleted");
}
else
{
	System.out.println("Order not deleted");
}
order=orderDao.GetOrder("101");
if(order==null)
{
	System.out.println("Order not found");
}
else
{
	System.out.println(order.getOid());
	System.out.println(order.getGroand_total());
	System.out.println(order.getDate());
	System.out.println(order.getTime());
	
}
}

	

}
