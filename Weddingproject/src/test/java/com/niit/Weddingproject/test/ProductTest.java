package com.niit.Weddingproject.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.CategoryDao;
import com.niit.Dao.ProductDao;
import com.niit.Dao.SupplierDao;
import com.niit.model.CategoryInfo;
import com.niit.model.ProductInfo;
import com.niit.model.SupplierInfo;



public class ProductTest 
{
	public static void main(String args[])
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();
		ProductInfo productInfo=(ProductInfo)context.getBean("productInfo");
		ProductDao  productDao=(ProductDao)context.getBean("productDao");
		CategoryInfo categoryInfo=(CategoryInfo)context.getBean("categoryInfo");
		CategoryDao  categoryDao=(CategoryDao)context.getBean("categoryDao");
		categoryInfo=categoryDao.Getcategory("101");
		productInfo.setCategoryInfo(categoryInfo);
		SupplierInfo supplierInfo=(SupplierInfo)context.getBean("supplierInfo");
		SupplierDao  supplierDao=(SupplierDao)context.getBean("supplierDao");
		supplierInfo=supplierDao.Getsupplier("152");
		productInfo.setSupplierInfo(supplierInfo);
		productInfo.setPrdid("103");
		productInfo.setPrdname("Nithya");
		productInfo.setPrdDes("Good");
		productInfo.setQuantity(2);
		productInfo.setPrice(100);
		if(productDao.saveorupdate(productInfo)==true)
		{
			System.out.println("Product is saved successfully");
		}
		else
		{
			System.out.println("Product is not saved");
		}
		productInfo.setPrdid("102");
		productInfo.setPrdname("vini");
		productInfo.setPrdDes("Good");
		productInfo.setQuantity(3);
		productInfo.setPrice(150);
		if(productDao.saveorupdate(productInfo)==true)
		{
			System.out.println("Product is saved successfully");
		}
		else
		{
			System.out.println("Product is not saved");
		}
		productInfo=productDao.Getproduct("102");
		if(productDao.delete(productInfo)==true)
		{
			System.out.println("Product deleted");
		}
		else
		{
			System.out.println("Product not deleted");
		}
		productInfo=productDao.Getproduct("103");
		if(productInfo==null)
		{
			System.out.println("Product not found");
		}
		else
		{
			System.out.println(productInfo.getPrdid());
			System.out.println(productInfo.getPrdname());
			System.out.println(productInfo.getPrdDes());
			System.out.println(productInfo.getQuantity());
			System.out.println(productInfo.getPrice());
		}	
		List<ProductInfo> prd=productDao.list();
		for(ProductInfo p : prd)
		{
			System.out.println(p.getPrdid());
			System.out.println(p.getPrdname());
			System.out.println(p.getPrdDes());
			System.out.println(p.getQuantity());
			System.out.println(p.getPrice());
			
		}

		
	}
}
