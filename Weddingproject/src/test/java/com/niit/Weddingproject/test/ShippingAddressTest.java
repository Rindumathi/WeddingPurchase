package com.niit.Weddingproject.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.ShippingAddressDao;
import com.niit.model.ShippingAddress;

public class ShippingAddressTest 
{
	public static void main(String args[])
	{
	AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
	context.scan("com.niit.*");
	context.refresh();
	ShippingAddress shippingAddress=(ShippingAddress)context.getBean("shippingAddress");
	ShippingAddressDao shippingAddressDao=(ShippingAddressDao)context.getBean("shippingAddressDao");
	shippingAddress.setShip_Id("101");
	shippingAddress.setHouse_no("16/24");
	shippingAddress.setCity("Bangalore");
	shippingAddress.setCountry("India");
	shippingAddress.setEmailid("in@gmail.com");
	shippingAddress.setFirst_name("indu");
	shippingAddress.setLast_name("mathi");
	shippingAddress.setPhNo(885241236l);
	shippingAddress.setPincode("632102");
	if(shippingAddressDao.saveorupdate(shippingAddress)==true)
	{
		System.out.println("ShippingAddress is saved successfully");
	}
	else
	{
		System.out.println("ShippingAddress is not saved");
	}
	shippingAddress.setShip_Id("102");
	shippingAddress.setHouse_no("16/24");
	shippingAddress.setCity("Bangalore");
	shippingAddress.setCountry("India");
	shippingAddress.setEmailid("in@gmail.com");
	shippingAddress.setFirst_name("indu");
	shippingAddress.setLast_name("mathi");
	shippingAddress.setPhNo(885241236l);
	shippingAddress.setPincode("632102");
	if(shippingAddressDao.saveorupdate(shippingAddress)==true)
	{
		System.out.println("ShippingAddress is saved Successfully");
	}
	else
	{
		System.out.println("ShippingAddress is not saved");
	}
	shippingAddress=shippingAddressDao.GetShippingAddress("102");
if(shippingAddressDao.delete(shippingAddress)==true)
{
	System.out.println("shippingAddress deleted");
}
else
{
	System.out.println("ShippingAddress not deleted");
}
shippingAddress=shippingAddressDao.GetShippingAddress("101");
if(shippingAddress==null)
{
	System.out.println("ShippingAddress not found");
}
else
{
	System.out.println(shippingAddress.getShip_Id());
	System.out.println(shippingAddress.getHouse_no());
	System.out.println(shippingAddress.getCity());
	System.out.println(shippingAddress.getCountry());
	System.out.println(shippingAddress.getEmailid());
	System.out.println(shippingAddress.getFirst_name());
	System.out.println(shippingAddress.getLast_name());
	System.out.println(shippingAddress.getPhNo());
	System.out.println(shippingAddress.getPincode());
}
}


}
