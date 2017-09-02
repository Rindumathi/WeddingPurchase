package com.niit.Weddingproject.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.AuthenticationDao;
import com.niit.model.Authentication;


public class AuthenticationTest  {
		public static void main(String args[])
		{
			AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
			context.scan("com.niit.*");
			context.refresh();
			Authentication authentication=(Authentication)context.getBean("authentication");
			AuthenticationDao  authenticationDao=(AuthenticationDao)context.getBean("authenticationDao");
			
			if(authenticationDao.saveorupdate(authentication)==true)
			{
				System.out.println("Authentication is saved successfully");
			}
			else
			{
				System.out.println("Authentication is not saved");
			}
	}

}
