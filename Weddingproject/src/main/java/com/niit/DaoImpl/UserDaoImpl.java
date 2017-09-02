package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.UserDao;
import com.niit.model.Authentication;
import com.niit.model.Cart;
import com.niit.model.ProductInfo;
import com.niit.model.UserInfo;

@Repository("userDao")
@EnableTransactionManagement
@Transactional
public class UserDaoImpl implements UserDao
{
@Autowired
SessionFactory sessionFactory;

public UserDaoImpl(SessionFactory sessionFactory)
{
	this.sessionFactory=sessionFactory;
}


public boolean saveorupdate(UserInfo user) {
	
	Authentication authentication=new Authentication();
	authentication.setUsername(user.getEmail());
	user.getBilling().setUserInfo(user);
	user.getBilling().setPhNo(user.getPhNo());
	user.getBilling().setEmailid(user.getEmail());
//	Cart cart=new Cart();
//	user.setCart(cart);
	sessionFactory.getCurrentSession().saveOrUpdate(user.getBilling());
	sessionFactory.getCurrentSession().saveOrUpdate(authentication);
	sessionFactory.getCurrentSession().saveOrUpdate(user);
	sessionFactory.getCurrentSession().saveOrUpdate(user.getCart());
	return true;
}


public boolean delete(UserInfo user) {
	sessionFactory.getCurrentSession().delete(user);
	return true;
}


public UserInfo Getuser(String uId) {
	String query="from UserInfo where uId='"+uId+"'";
	Query u=sessionFactory.getCurrentSession().createQuery(query);
	List<UserInfo> list=(List<UserInfo>) u.list();
	if(list==null || list.isEmpty())
	{
	  System.out.println("Null given");	
		return null;
	}
	return list.get(0);
}


public List<UserInfo> list() {
	List<UserInfo> users = (List<UserInfo>) sessionFactory.getCurrentSession().createCriteria(UserInfo.class)
			.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	return users;
}


@Override
public UserInfo isValid(String umail, String pwd) {
	String query="from UserInfo where email='"+umail+"' and password='"+pwd+"' ";
	Query u=sessionFactory.getCurrentSession().createQuery(query);
	List<UserInfo> list=(List<UserInfo>) u.list();
	if(list==null || list.isEmpty())
	{
	  System.out.println("Null given");	
		return null;
	}
	return list.get(0);
}



public UserInfo getUseremail(String email) 
{
	String query="from UserInfo where email='"+email+"'";
	Query u=sessionFactory.getCurrentSession().createQuery(query);
	List<UserInfo> list=(List<UserInfo>) u.list();
	if(list==null || list.isEmpty())
	{
	  System.out.println("Null given");	
		return null;
	}
	return list.get(0);

}





}
