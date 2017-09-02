package com.niit.Weddingproject.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.PayDao;
import com.niit.model.Pay;

public class PayTest 
{
	public static void main(String args[])
	{
	AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
	context.scan("com.niit.*");
	context.refresh();
	Pay pay=(Pay)context.getBean("pay");
	PayDao payDao=(PayDao)context.getBean("payDao");
	pay.setPay_id("101");
	pay.setPay_method("Credit Card");
	pay.setStatus("completed");
	
	if(payDao.saveorupdate(pay)==true)
	{
		System.out.println("Pay is saved successfully");
	}
	else
	{
		System.out.println("Pay is not saved");
	}
	pay.setPay_id("101");;
	pay.setPay_method("Credit Card");
	pay.setStatus("completed");
	if(payDao.saveorupdate(pay)==true)
	{
		System.out.println("Pay is saved Successfully");
	}
	else
	{
		System.out.println("Pay is not saved");
	}
	pay=payDao.GetPay("102");
if(payDao.delete(pay)==true)
{
	System.out.println("Pay deleted");
}
else
{
	System.out.println("Pay not deleted");
}
pay=payDao.GetPay("101");
if(pay==null)
{
	System.out.println("Pay not found");
}
else
{
	System.out.println(pay.getPay_id());
	System.out.println(pay.getPay_method());
	System.out.println(pay.getStatus());
}
}

	
}
