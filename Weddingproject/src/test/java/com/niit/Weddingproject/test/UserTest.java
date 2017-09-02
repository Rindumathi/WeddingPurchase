package com.niit.Weddingproject.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.UserDao;
import com.niit.model.SupplierInfo;
import com.niit.model.UserInfo;

public class UserTest 
{
	public static void main(String args[])
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();
		UserInfo userInfo=(UserInfo)context.getBean("userInfo");
		UserDao  userDao=(UserDao)context.getBean("userDao");
		userInfo.setuId("453");
		userInfo.setName("Sri");
		userInfo.setCity("Bangalore");;
		userInfo.setPhNo(8883652149l);
		userInfo.setGender("female");
		userInfo.setPassword("indu");
		if(userDao.saveorupdate(userInfo)==true)
		{
			System.out.println("User is saved successfully");
		}
		else
		{
			System.out.println("User is not saved");
		}
		userInfo.setuId("455");
		userInfo.setName("Sri nisha");
		userInfo.setCity("Bangalore");;
		userInfo.setPhNo(8883652149l);
		userInfo.setGender("female");
		userInfo.setPassword("indu");
		if(userDao.saveorupdate(userInfo)==true)
		{
			System.out.println("User is saved successfully");
		}
		else
		{
			System.out.println("User is not saved");
		}
		userInfo=userDao.Getuser("455");
		if(userDao.delete(userInfo)==true)
		{
			System.out.println("User deleted");
		}
		else
		{
			System.out.println("User not deleted");
		}
		userInfo=userDao.Getuser("453");
		if(userInfo==null)
		{
			System.out.println("User not found");
		}
		else
		{
			System.out.println(userInfo.getuId());
			System.out.println(userInfo.getName());
			System.out.println(userInfo.getCity());
			System.out.println(userInfo.getGender());
			System.out.println(userInfo.getPhNo());
			System.out.println(userInfo.getPassword());
		}
		List<UserInfo> usr=userDao.list();
		for(UserInfo u : usr)
		{
			System.out.println(u.getuId());
			System.out.println(u.getName());
			System.out.println(u.getCity());
			System.out.println(u.getGender());
			System.out.println(u.getPhNo());
			System.out.println(u.getPassword());

		}
	}

}
