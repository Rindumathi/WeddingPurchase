package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.AuthenticationDao;
import com.niit.model.Authentication;

@Repository("authenticationDao")
@EnableTransactionManagement
@Transactional
public class AuthenticationDaoImpl implements AuthenticationDao
{
	@Autowired
	SessionFactory sessionFactory;

	public AuthenticationDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}


	public boolean saveorupdate(Authentication authentication) {
		sessionFactory.getCurrentSession().saveOrUpdate(authentication);
		return true;
	}


	public boolean delete(Authentication authentication) {
		sessionFactory.getCurrentSession().delete(authentication);
		return true;
	}


	public Authentication Getauthentication(String role_id) {
		String query="from Authentication where role_id='"+role_id+"'";
		Query u=sessionFactory.getCurrentSession().createQuery(query);
		List<Authentication> list=(List<Authentication>) u.list();
		if(list==null || list.isEmpty())
		{
		  System.out.println("Null given");	
			return null;
		}
		return list.get(0);
	}


	public List<Authentication> list() {
		List<Authentication> authentications = (List<Authentication>) sessionFactory.getCurrentSession().createCriteria(Authentication.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return authentications;
	}
	
}
