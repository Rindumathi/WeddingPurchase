package com.niit.Weddingproject.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.CategoryDao;
import com.niit.model.CategoryInfo;

public class CategoryTest 
{


public static void main(String args[])
{
	AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
	context.scan("com.niit.*");
	context.refresh();
	System.out.println(46);
	CategoryInfo categoryInfo=(CategoryInfo)context.getBean("categoryInfo");
	CategoryDao  categoryDao=(CategoryDao)context.getBean("categoryDao");
	categoryInfo.setCatid("101");
	categoryInfo.setCatname("Madhu");
	if(categoryDao.saveorupdate(categoryInfo)==true)
	{
		System.out.println("Category is saved successfully");
	}
	else
	{
		System.out.println("Category is not saved");
	}
	categoryInfo.setCatid("102");
	categoryInfo.setCatname("kalai");
	if(categoryDao.saveorupdate(categoryInfo)==true)
	{
		System.out.println("Category is saved successfully");
	}
	else
	{
		System.out.println("Category is not saved");
	}
categoryInfo=categoryDao.Getcategory("102");
if(categoryDao.delete(categoryInfo)==true)
{
	System.out.println("Category deleted");
}
else
{
	System.out.println("Category not deleted");
}
categoryInfo=categoryDao.Getcategory("101");
if(categoryInfo==null)
{
	System.out.println("Category not found");
}
else
{
	System.out.println(categoryInfo.getCatid());
	System.out.println(categoryInfo.getCatname());
}
List<CategoryInfo> cat=categoryDao.list();
for(CategoryInfo c : cat)
{
	System.out.println(c.getCatid());
	System.out.println(c.getCatname());
}

}
}
