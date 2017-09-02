package com.niit.Weddingproject.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.BillingDao;
import com.niit.model.Billing;

public class BillingTest {

	public static void main(String args[])
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();
		Billing billing=(Billing)context.getBean("billing");
		BillingDao billingDao=(BillingDao)context.getBean("billingDao");
		billing.setbId("101");
		billing.setHouse_no("16/12");
		billing.setCity("Bangalore");
		billing.setCountry("India");
		billing.setEmailid("indu@gmail.com");
		billing.setPincode("632004");
		billing.setPhNo(8845226391l);
		if(billingDao.saveorupdate(billing)==true)
		{
			System.out.println("Billing is saved successfully");
		}
		else
		{
			System.out.println("Billing is not saved");
		}
		billing.setbId("102");
		billing.setHouse_no("16/12");
		billing.setCity("Bangalore");
		billing.setCountry("India");
		billing.setEmailid("indu@gmail.com");
		billing.setPincode("632004");
		billing.setPhNo(8845226391l);
		
		if(billingDao.saveorupdate(billing)==true)
		{
			System.out.println("Billing is saved successfully");
		}
		else
		{
			System.out.println("Billing is not saved");
		}
	billing=billingDao.GetBilling("102");
	if(billingDao.delete(billing)==true)
	{
		System.out.println("Billing deleted");
	}
	else
	{
		System.out.println("Billing not deleted");
	}
	billing=billingDao.GetBilling("101");
	if(billing==null)
	{
		System.out.println("Billing not found");
	}
	else
	{
		System.out.println(billing.getbId());
		System.out.println(billing.getHouse_no());
		System.out.println(billing.getCity());
		System.out.println(billing.getCountry());
		System.out.println(billing.getEmailid());
		System.out.println(billing.getPhNo());
		System.out.println(billing.getPincode());
	}
	}

}
