package com.niit.Weddingproject.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.SupplierDao;
import com.niit.model.ProductInfo;
import com.niit.model.SupplierInfo;

public class SupplierTest 
{
	public static void main(String args[])
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();
		SupplierInfo supplierInfo=(SupplierInfo)context.getBean("supplierInfo");
		SupplierDao  supplierDao=(SupplierDao)context.getBean("supplierDao");
		supplierInfo.setSupId("152");
		supplierInfo.setName("Kavi");
		supplierInfo.setAdd("Rajaji Nagar");
		supplierInfo.setPhNo(8883254621l);
		if(supplierDao.saveorupdate(supplierInfo)==true)
		{
			System.out.println("Supplier is saved successfully");
		}
		else
		{
			System.out.println("Supplier is not saved");
		}
		supplierInfo.setSupId("162");
		supplierInfo.setName("harsha");
		supplierInfo.setAdd("Rajaji Nagar");
		supplierInfo.setPhNo(9993678452l);
		if(supplierDao.saveorupdate(supplierInfo)==true)
		{
			System.out.println("Supplier is saved successfully");
		}
		else
		{
			System.out.println("Supplier is not saved");
		}
		supplierInfo=supplierDao.Getsupplier("162");
		if(supplierDao.delete(supplierInfo)==true)
		{
			System.out.println("Supplier deleted");
		}
		else
		{
			System.out.println("Supplier not deleted");
		}
		supplierInfo=supplierDao.Getsupplier("152");
		if(supplierInfo==null)
		{
			System.out.println("Supplier not found");
		}
		else
		{
			System.out.println(supplierInfo.getSupId());
			System.out.println(supplierInfo.getName());
			System.out.println(supplierInfo.getAdd());
			System.out.println(supplierInfo.getPhNo());
		}
		List<SupplierInfo> spl=supplierDao.list();
		for(SupplierInfo s : spl)
		{
			System.out.println(s.getSupId());
			System.out.println(s.getName());
			System.out.println(s.getAdd());
			System.out.println(s.getPhNo());
			
		}
	}
}
